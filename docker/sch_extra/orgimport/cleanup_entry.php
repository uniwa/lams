<?php
function cleanUpEntry( $entry ) {
    $retEntry = array();
    for ( $i = 0; $i < $entry['count']; $i++ ) {
        if (is_array($entry[$i])) {
            $subtree = $entry[$i];
            //This condition should be superfluous so just take the recursive call
            //adapted to your situation in order to increase perf.
            if ( ! empty($subtree['dn']) and ! isset($retEntry[$subtree['dn']])) {
                $retEntry[$subtree['dn']] = cleanUpEntry($subtree);
            }
            else {
                $retEntry[] = cleanUpEntry($subtree);
            }
        }
        else {
            $attribute = $entry[$i];
            if ( $entry[$attribute]['count'] == 1 ) {
                $retEntry[$attribute] = $entry[$attribute][0];
            } else {
                for ( $j = 0; $j < $entry[$attribute]['count']; $j++ ) {
                    $retEntry[$attribute][] = $entry[$attribute][$j];
                }
            }
        }
    }
    return $retEntry;
}