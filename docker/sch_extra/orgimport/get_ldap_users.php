<?php

function get_ldap_users(array $args) {
    global $ldap_uri, $ldap_bind_user_dn, $ldap_bind_user_pw, $ldap_base_dn;

    // Connect to LDAP, bind and then search for users with the given username
    /** @noinspection PhpUndefinedVariableInspection */
    $ldap = ldap_connect($ldap_uri);
    if (!$ldap) {
        die("Could not connect to LDAP server");
    }
    ldap_set_option($ldap, LDAP_OPT_PROTOCOL_VERSION, 3);
    ldap_set_option($ldap, LDAP_OPT_REFERRALS, 0 );

    /** @noinspection PhpUndefinedVariableInspection */
    $bind = ldap_bind($ldap, $ldap_bind_user_dn, $ldap_bind_user_pw);
    if (!$bind) {
        die("LDAP bind failed");
    }

    $umdObjectTypes = [
        // 'Teacher',
        // 'iTeacher',
        // 'aTeacher',
        // 'pTeacher',
        'student',
        // 'Personel'
    ];
    $umdObjectTypesQuery = '';
    foreach ($umdObjectTypes as $umdObjectType) {
        $umdObjectTypesQuery .= "(umdObject=$umdObjectType)";
    }

    if (!isset($args['grade'])) {
        die("Grade is required");
    }
    $grade = $args['grade'];
    if (!isset($args['unit'])) {
        die("Unit is required");
    }
    $unit = $args['unit'];

    $filter = "(&(eduPersonOrgUnitDN=$unit)(gsngrade;lang-en=$grade)(|{$umdObjectTypesQuery}))";

    $pageSize = 18;
    $cookie = '';
    $entries = [];

    do {
        /** @noinspection PhpUndefinedVariableInspection */
        $search = ldap_search(
            $ldap, $ldap_base_dn, $filter, ['*'], 0, 0, 0, LDAP_DEREF_NEVER,
            [['oid' => LDAP_CONTROL_PAGEDRESULTS, 'value' => ['size' => $pageSize, 'cookie' => $cookie]]]
        );
        if (!$search) {
            die("LDAP search failed");
        }
        ldap_parse_result($ldap, $search, $errcode , $matcheddn , $errmsg , $referrals, $controls);
        $result = ldap_get_entries($ldap, $search);
        if ($result === false) {
            die("Failed to get LDAP entries");
        }
        $entries[] = $result;

        if (isset($controls[LDAP_CONTROL_PAGEDRESULTS]['value']['cookie'])) {
            // You need to pass the cookie from the last call to the next one
            $cookie = $controls[LDAP_CONTROL_PAGEDRESULTS]['value']['cookie'];
        } else {
            $cookie = '';
        }
    } while (strlen($cookie) > 0);

    ldap_unbind($ldap);
    $flattenedEntries = [];
    foreach ($entries as $entry) {
        $entry = cleanUpEntry($entry);
        $flattenedEntries = array_merge($flattenedEntries, $entry);
    }

    return json_encode($flattenedEntries);
}
