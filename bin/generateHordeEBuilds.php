#!/usr/bin/php
<?php
##Check how recent index page is
##If same age as downloaded version, then quit
##Download the index page

$indexpage = "/var/lib/epear/pear.horde.org-index.html";

foreach ( file( $indexpage) as $line) 
{
    $start = strpos( $line, "<h3>");
    if  ( $start !== FALSE)
    {
        $finish = strpos( $line, "<small>");
        $package = substr( $line, $start+4, $finish-$start-4);
        
        $hordepackage = "horde/" . $package;

        $category = "";
        if ( strtolower( substr( $package, 0, 6)) != "horde_" )
            $category = "--wwwapps";

        passthru( "/usr/bin/php ./epearForHorde.php --nodeps --force " . $category . " " . $hordepackage);
    }
}

