#!/bin/bash
##Check how recent index page is
##If same age as downloaded version, then quit
##Download the index page

rm -rf /tmp/generateHordeEBuilds/temp_*
mkdir -p /tmp/generateHordeEBuilds

echo "Downloading index information from the Horde website"
indexpage="/tmp/generateHordeEBuilds/pear.horde.org-index.html"
wget -O $indexpage http://pear.horde.org/

for i in `grep -o "<h3>[A-Za-z0-9_]*" $indexpage`
do
    j=`echo $i | cut -c 5- `
    hordepackage="horde/$j"
    category=""
    k=`echo $j | cut -c 6- `
    if [ "$k" != "horde_" ]; then
        category="--wwwapps"
    fi

    /usr/bin/php ./epearForHorde.php --nodeps --force $category $hordepackage

done


#foreach ( file( $indexpage) as $line) 
#{
#    $start = strpos( $line, "<h3>");
#    if  ( $start !== FALSE)
#    {
#        $finish = strpos( $line, "<small>");
#        $package = substr( $line, $start+4, $finish-$start-4);
#        
#        $hordepackage = "horde/" . $package;
#
#        $category = "";
#        if ( strtolower( substr( $package, 0, 6)) != "horde_" )
#            $category = "--wwwapps";
#
#        passthru( "/usr/bin/php ./epearForHorde.php --nodeps --force " . $category . " " . $hordepackage);
#    }
#}

#Clean up the exceptions after the build:

    # 1. Remove PECL-APC ebuild
    #    We expect Gentoo to provide a better ebuild than this one
rm -rf /usr/local/horde/repository/dev-php/pecl-apc

    # 2. Remove any PHPUnit builds
    #    as they are not part of our concern
rm -rf /usr/local/horde/repository/dev-php/phpunit-*

