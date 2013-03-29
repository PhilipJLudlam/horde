#!/bin/bash
##Check how recent index page is
##If same age as downloaded version, then quit
##Download the index page

rm -rf /tmp/generateHordeEBuilds/temp_*
mkdir -p /tmp/generateHordeEBuilds

echo "Downloading index information from the Horde website"
indexpage="/tmp/generateHordeEBuilds/pear.horde.org-index.html"
###wget -O $indexpage http://pear.horde.org/

for i in `grep -o "<h3>[A-Za-z0-9_]*" $indexpage`
do
    j=`echo $i | cut -c 5- `
    hordepackage="horde/$j"
    category=""
    k=`echo $j | cut -c 6- `
    if [ "$k" != "horde_" ]; then
        category="--wwwapps"
    fi

    /usr/bin/php ./epearForHorde.php --force $category $hordepackage

done


#Clean up the exceptions after the build:

    # 1. Remove PECL-APC ebuild
    #    We expect Gentoo to provide a better ebuild than this one
rm -rf /usr/local/horde/repository/dev-php/pecl-apc

    # 2. Remove any PHPUnit builds
    #    as they are not part of our concern
rm -rf /usr/local/horde/repository/dev-php/phpunit-*

    # 3. Sort out the log files generated
    # 3.a. The USE/IUSE field can use a lot of packages
    #      So sort them, remove duplicates and pretty it up
cat /tmp/generateHordeEBuilds/temp_iuse | sort | uniq > /tmp/generateHordeEBuilds/temp_iuse2
grep -v "phpunit-" /tmp/generateHordeEBuilds/temp_iuse \
  > /tmp/generateHordeEBuilds/temp_iuse3

cat > ./../package.use << EOF
package.use for Horde
=====================

Below is a list of use flags used in this repository.
Enabling a use flag will mostly likely pull in other packages (the ebuilds for which are either supplied here or are in the main Gentoo repository).

Please review the list before using it.

EOF
cat >> ./../package.use < /tmp/generateHordeEBuilds/temp_iuse3
cat >> ./../package.use << EOF
----
EOF

    # 3.b. The Keywords files need the same treatment
cat /tmp/generateHordeEBuilds/temp_keywords | sort | uniq > /tmp/generateHordeEBuilds/temp_keywords2
cat /tmp/generateHordeEBuilds/temp_keywords_with_version | sort | uniq > /tmp/generateHordeEBuilds/temp_keywords_with_version2
grep -v "dev-php/phpunit-phpunit_story" /tmp/generateHordeEBuilds/temp_keywords2 | \
    grep -v "dev-php/pecl-apc" \
    >/tmp/generateHordeEBuilds/temp_keywords3
grep -v "dev-php/phpunit-phpunit_story" /tmp/generateHordeEBuilds/temp_keywords_with_version2 |\
    grep -v "dev-php/pecl-apc" \
    >/tmp/generateHordeEBuilds/temp_keywords_with_version3

cat > ./../package.keywords << EOF
package.keywords for Horde
==========================

Below is a list of package atoms in this repository.
By default, they are tagged as "unstable".
If you run stable by default, then the list below will assist in setting the exceptions you need in your package.keywords file

The first list is a generic excpetion for the package, regardless of version number.
The second list is for the specific package atoms supplied in this repository.

Please review the list before using it.

EOF
cat >> ./../package.keywords < /tmp/generateHordeEBuilds/temp_keywords3
cat >> ./../package.keywords << EOF
-----

Below is the second list for the specific package atoms supplied in this repository.

EOF
cat >> ./../package.keywords < /tmp/generateHordeEBuilds/temp_keywords_with_version3
cat >> ./../package.keywords << EOF
----
EOF


