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

//Clean up the exceptions after the build:

    // 1. Remove PECL-APC ebuild
    //    We expect Gentoo to provide a better ebuild than this one
rmdir( "./repository/dev-php/pecl-apc");

    // 2. Remove any PHPUnit builds
    //    as they are not part of our concern
rmdir( "./repository/dev-php/phpunit-*";

