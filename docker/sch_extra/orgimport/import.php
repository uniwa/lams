<?php

require_once(__DIR__ . '/../../cas-login/autoload.php');
$user = require_once(__DIR__ . '/auth.php');
require_once(__DIR__ . '/cleanup_entry.php');
require_once(__DIR__ . '/../../cas-login/cas_config.php');
require_once (__DIR__ . '/get_ldap_users.php');

if ($user->uid !== "dnikoudis") {
    die("You are not allowed to access this page");
}

error_reporting(E_ALL);
ini_set('display_errors', 'on');

$args = [
    "unit" => "ou=3lyk-komot,ou=rod,ou=units,dc=sch,dc=gr",
    "grade" => "A",
];
$users = get_ldap_users($args);
// {"uid=120argyr20,ou=people,dc=sch,dc=gr":{"uid":"120argyr20","objectclass":["radiusprofile","eduPerson","qmailUser","organizationalPerson","top","person","inetOrgPerson","gsnUser","umdManagedObject"],"sn":"\u0391\u03a1\u0393\u03a5\u03a1\u039f\u03a0\u039f\u03a5\u039b\u039f\u03a3","givenname":"\u039a\u03a9\u039d\u03a3\u03a4\u0391\u039d\u03a4\u0399\u039d\u039f\u03a3","cn":"\u0391\u03a1\u0393\u03a5\u03a1\u039f\u03a0\u039f\u03a5\u039b\u039f\u03a3 \u039a\u03a9\u039d\u03a3\u03a4\u0391\u039d\u03a4\u0399\u039d\u039f\u03a3","mail":"120argyr20@sch.gr","sn;lang-en":"ARGYROPOULOS","cn;lang-en":"ARGYROPOULOS KONSTANTINOS","givenname;lang-en":"KONSTANTINOS","l":"ou=3lyk-komot,ou=rod,ou=units,dc=sch,dc=gr","edupersonorgunitdn":["ou=3lyk-komot,ou=rod,ou=units,dc=sch,dc=gr","ou=rod,ou=units,dc=sch,dc=gr"],"ou":"3\u03bf \u03a0\u0395\u0399\u03a1\u0391\u039c\u0391\u03a4\u0399\u039a\u039f \u0393\u0395\u039d\u0399\u039a\u039f \u039b\u03a5\u039a\u0395\u0399\u039f \u039a\u039f\u039c\u039f\u03a4\u0397\u039d\u0397\u03a3","ou;lang-en":"3o PEIRAMATIKO GENIKO LYKEIO KOMOTINIS","gsngrade":"\u0391","gsnclass":"\u03911","umdobject":"student","umdvalidatorsname":"uid=aberri,ou=people,dc=sch,dc=gr","gsnclass;lang-en":"A1","gsngrade;lang-en":"A"}}
$users = json_decode($users, true);

// Render the users in a table
echo "<table border='1'>";
echo "<tr>";
echo "<th>Username</th>";
echo "<th>First Name</th>";
echo "<th>Last Name</th>";
echo "<th>Email</th>";
echo "<th>Grade</th>";
echo "<th>Class</th>";
echo "<th>Unit</th>";
echo "</tr>";
foreach ($users as $user) {
    echo "<tr>";
    echo "<td>" . $user['uid'] . "</td>";
    echo "<td>" . $user['givenname'] . "</td>";
    echo "<td>" . $user['sn'] . "</td>";
    echo "<td>" . $user['mail'] . "</td>";
    echo "<td>" . $user['gsngrade'] . "</td>";
    echo "<td>" . $user['gsnclass'] . "</td>";
    echo "<td>" . $user['ou'] . "</td>";
    echo "</tr>";
}
echo "</table>";
