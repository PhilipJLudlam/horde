#!/usr/bin/php
<?php
/* vim: set expandtab tabstop=4 shiftwidth=4 softtabstop=4: */

/** 
 * This file contains the epear program
 *
 * PHP Version 5
 *
 * LICENSE: Distributed under the terms of the GNU General Public License v2
 * You should have received a copy of this license along with this program.
 *
 * @author    Ole Markus With <olemarkus@olemarkus.org>
 * @copyright 2010 Ole Markus With
 * @license   http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GPL-2
 */

error_reporting(E_ALL & ~E_DEPRECATED & ~E_STRICT);


require_once "PEAR/Config.php";
require_once "PEAR/PackageFile.php";

function cleanup_version($version)
{
    if ((strpos($version, "alpha") === FALSE) && (strpos($version, "beta") === FALSE))
    {
        $search  = array("a", "b", "RC");
        $replace = array("_alpha", "_beta", "_rc");
        return str_replace($search, $replace, $version);
    }

    $search  = array("alpha", "beta", "RC");
    $replace = array("_alpha", "_beta", "_rc");
    return str_replace($search, $replace, $version);	
}

function get_package_name($name, $includeCategory = true) 
{
    global $OpsCustomCategory;
    if ($OpsCustomCategory != "")
    {
        $category = $OpsCustomCategory;
    }
    else
    {
        $category = "dev-php";
        if (substr($name, 0, 12) == "horde-Horde_")
            $category = "dev-php";
        elseif (substr($name, 0, 15)  == "horde-horde_lz4")
            $category = "dev-php";
        elseif (substr($name, 0, 6) == "horde-")
            $category = "www-apps";
    }

    return $includeCategory ? $category . "/" . $name : $name;
}

function get_channel_prefix($channelUri) 
{
    $prefix = "";
    if ($channelUri == "pear.php.net") $prefix = "PEAR-";
    if ($channelUri == "components.ez.no") $prefix = "ezc-";
    if ($channelUri == "pear.phpunit.de") $prefix = "phpunit-";
    if ($channelUri == "pear.symfony-project.com") $prefix = "symfony-";
    if ($channelUri == "pecl.php.net") $prefix = "pecl-";
    if ($channelUri == "pear.horde.org") $prefix = "horde-";
    if ($channelUri == "pear.nrk.io") $prefix = "nrk-";

    if ($prefix == "") {
        echo "  Warning: Channels should have prefix, however none are defined for $channelUri" . "\n";
    }
    return $prefix;
}


function doHordeApp( $EbuildName, $PackageAtom, $ShortName, $HordeReqs = "")
{
        // First bit for all horde applications
    $additional = <<< EOF

src_install() {

EOF;
    file_put_contents ($EbuildName, $additional, FILE_APPEND);

        // Second bit only for groupware or webmail
    if ($ShortName == "webmail" || $ShortName == "groupware") {
        $HordeReq = "";
        foreach ($HordeReqs as $t)
        {
            if (substr( $t,0,16) == ">=www-apps/horde")
                $HordeReq = $HordeReq . " " . substr( $t, 11, strrpos( $t, "-") -11);
        }
        $HordeReq = trim($HordeReq);
        $additional = <<< EOF
        # Horde-Webmail and Horde-Groupware are nothing more than small downloads 
        # that include a couple of configuration files, hooks and a library.
        # Webapp-config will not allow multiple web applications to be installed
        # into the same directory, so we package up the latest versions of the
        # Horde build-time dependancies into this install.

    for i in $HordeReq
    do
        if [ "\${i}" == "horde-horde" ]; then
            _end=""
        else
            _end="/\${i:6}"
            mkdir -p \${WORKDIR}/$ShortName-\${PV}\${_end}
        fi
        j=`ls \${ROOT}usr/share/webapps/\${i} -t1 | head -n1`
        rsync -r \${ROOT}usr/share/webapps/\${i}/\${j}/htdocs/ \${WORKDIR}/$ShortName-\${PV}\${_end}
    done

        # Copy the files from the Horde_Core package into the webapp root
    rsync -r \${ROOT}usr/lib*/php*/lib/pear/www/horde/ \${WORKDIR}/$ShortName-\${PV}/

        # Copy the configuration file
    cp \${WORKDIR}/$ShortName-\${PV}/config/conf.php.dist \${WORKDIR}/$ShortName-\${PV}/config/conf.php

        # horde-webmail and horde-groupware and specific work done.

EOF;
        file_put_contents ($EbuildName, $additional, FILE_APPEND);
    }

        // Third bit for all horde applications
    $additional = <<< EOF
    webapp_src_preinst

    rm -rf \${WORKDIR}/package.xml \${WORKDIR}/$ShortName-\${PV}/bin
    if [[ -e \${WORKDIR}/$ShortName-\${PV}/README ]]; then
        dodoc \${WORKDIR}/$ShortName-\${PV}/README
    fi
    find \${WORKDIR}/$ShortName-\${PV}/docs/ -type f | xargs dodoc
    rm -rf \${WORKDIR}/$ShortName-\${PV}/README \${WORKDIR}/$ShortName-\${PV}/docs/*
    insinto \${MY_HTDOCSDIR}
    doins -r \${WORKDIR}/$ShortName-\${PV}/*

    l=`expr length "\${WORKDIR}/$ShortName-\${PV}"`
    for i in `find \${WORKDIR}/$ShortName-\${PV} -type d -name "config"`
    do
        webapp_serverowned \${MY_HTDOCSDIR}\${i:\$l}
    done
    for i in `find \${WORKDIR}/$ShortName-\${PV} -type f -name "conf.php"`
    do
        webapp_serverowned \${MY_HTDOCSDIR}\${i:\$l}
    done

    webapp_postinst_txt en "\${FILESDIR}"/postinstall.txt
    webapp_postupgrade_txt en "\${FILESDIR}"/postupgrade.txt

    webapp_src_install
}

pkg_postinst() {
    einfo "\033[1;32m**************************************************\033[00m"
    einfo
    einfo "For 'vhost' users, install using:"
    einfo "  webapp-config -I -h <hostname> horde-$ShortName \${PV} -d <dir>"
    einfo
    einfo "\033[1;32m**************************************************\033[00m"
}

EOF;
    // */
    file_put_contents ($EbuildName, $additional, FILE_APPEND);

    if (!is_dir("/usr/local/horde/horde/" . $PackageAtom . "/files"))
         mkdir("/usr/local/horde/horde/" . $PackageAtom . "/files", 0777, true);

    $postinstall = <<< EOF
1. Login on to:
     http://\${VHOST_HOSTNAME}/\${VHOST_APPDIR}/admin/config/index.php

2. Click on "Horde (horde) \${PV}"
3. Select the "Database" tab
4. Choose a suitable backend
     (this will allow settings and preferences to be saved)
5. Set the other settings on this page as appropriate
6. Click on "Generate Horde Configuration"
7. Continue configuring Horde and the other applications as required
8. Click on "Generate Horde Configuration" to save your settings

FYI: See the document http://wiki.horde.org/FAQ/Admin/Config
EOF;
    file_put_contents ("/usr/local/horde/horde/" . $PackageAtom . "/files/postinstall.txt", $postinstall);


    $postupgrade = <<< EOF
1. Login on to:
     http://\${VHOST_HOSTNAME}/\${VHOST_APPDIR}/admin/config/index.php
2. Click "Update all DB schemas"
3. Click "Update all Configuration"
4. Configure Horde and the other applications as required
5. Click on "Generate Horde Configuration" to save your settings

FYI: See the document http://www.horde.org/apps/imp/docs/UPGRADING
EOF;
    file_put_contents ("/usr/local/horde/horde/" . $PackageAtom . "/files/postupgrade.txt", $postupgrade);

}


function generate_ebuild($pear_package) 
{
    global $OptNoDeps, $OptForce, $OptOptionalAsRequired, $ARCH;

    echo "Generating ebuild for $pear_package\n";
    $config = PEAR_Config::singleton('', '');

    $packageFile = new PEAR_PackageFile($config);

    $channelName =  $config->get('default_channel');

    $parsedName = $config->getRegistry()->parsePackageName(
        $pear_package, $channelName
    );

    $channelUri = $parsedName["channel"];

    $channel = $config->getRegistry()->getChannel($parsedName['channel']);

    $base = $channel->getBaseURL('REST1.3', $parsedName['channel']);
    $restv = "1.3";

    if (!$base) {
        $base = $channel->getBaseURL('REST1.0', $parsedName['channel']);
        $restv = "1.0";
    }

    $options = array();

    $rest = $config->getRest($restv, $options);

    $state = 'alpha';


    $url = $rest->getDownloadUrl(
        $base, $parsedName, $state, false, $parsedName['channel']
    );

    if (PEAR::isError($url)) {
        die("Failed to obtain url for $channelUri\n");

    }

    $uri = $url["url"] . ".tgz";

    $name = $url["package"];
    $version = $url["version"];

        // Download the file into the distfiles area so that
        // generating the manifest is faster
    if (!is_dir('/usr/portage/distfiles')) {
        mkdir('/usr/portage/distfiles');
    }

    $filename = '/usr/portage/distfiles/' . $name . "-" . $version . ".tgz";

    if (!file_exists($filename)) {
        passthru("wget $uri -O $filename");
    }

    $pf = $packageFile->fromAnyFile($filename, PEAR_VALIDATE_NORMAL);

    $filelist = $pf->getInstallationFileList();
    $fullfilelist = $pf->getFileList();

    $rmfiles = array_diff_key($fullfilelist, $filelist);


    $phpflags = array();
    $php53flags = array();
    $pearDeps = array();
    $postDeps = array();
    $optdep = array();

    $usedep["dom"] = "xml";
    $usedep["mbstring"] = "unicode";

    // Look at splitting out dependancy handling
    // and return something (an object/array?) 
    foreach ($pf->getDeps() as $dep) {
        // if ($dep["optional"] == "yes") continue;

        switch ($dep["type"]) {
        case "pkg":
            
            
            $prefix = get_channel_prefix($dep["channel"]);
	        $rel = "";
            switch ($dep["rel"])
            {
		        case "ge":
		            $rel = ">=";
        		    break;
	        	case "le":
		            $rel = "<=";
                    break;
                case "has":
                    $rel = "";
                    break;
                case "not":
                    $rel= "!";
                    $dep["optional"] = "no";  // ensure we include this incompatability
                    break;
    	    }

            $pkgname = $rel . get_package_name($prefix . $dep["name"]);
            if ($rel != "" && isset($dep["version"]))
            {
                $version = cleanup_version($dep["version"]);
                if ($version) {
                    $pkgname .= "-" . $version;
                }
            }
            //echo "  ..$pkgname\n";
            //echo "  __version: ".$version."\n";
            //echo "  __cleanup_version ".cleanup_version($dep["version"])."\n";

            //Certain packages tend to create circular deps. We hack them into
            //PDEPEND
            if ($dep["name"] == "PHPUnit") {
                $postDeps[$dep["name"]] = $pkgname;
            } else {
                if (isset($dep["optional"])) {
                    // The optionality of this requirement has been defined

                    $deplowercase = TRUE;
                    if ($dep["channel"] == "pear.php.net" || $dep["channel"] == "pear.horde.org")
                        $deplowercase = FALSE;


                if ( $dep["optional"] == "no" || $OptOptionalAsRequired == TRUE) 
                {
                    //The key is used to prevent duplicates
		            $pearDeps[$dep["name"]] = $pkgname;
                }
                else
                {
                    $optdep[$dep["name"]]["key"]   = strtolower(get_package_name( $prefix . $dep["name"], false));
                    $optdep[$dep["name"]]["value"] = $deplowercase ? strtolower($pkgname) : $pkgname;
                }

                // If we don't care about creating dependancies, then we can stop here
                if ( $OptNoDeps != TRUE)
                {
                if ( $dep["channel"] != "pear.horde.org") {
                     // Only generate ebuilds IF it's not a Horde package

                            $GentooPackage = get_package_name( get_channel_prefix($dep["channel"]) . $dep["name"], true);
                            if ($deplowercase == TRUE)
                                $GentooPackage = strtolower($GentooPackage);

                            $Result=exec("ACCEPT_KEYWORDS=\"" . $ARCH . "\" portageq best_visible / ebuild " . $GentooPackage);
                            //echo "  ..GentooPackage = $GentooPackage\n";
                            //echo "  Result = \"".$Result."\"\n";
                            if (strlen($Result) == 0)
                            {
                                    // Portage doesn't know about this package
                                    // So go and generate the ebuild for it
                                //echo "  ..Generating ebuild for " . $dep["channel"] . "/" . $dep["name"] . "\n";
        		                generate_ebuild($dep["channel"] . "/" . $dep["name"]);
                    
                                    // Also: Make it remember the ebuilds it's created (sans version number)
        		                    // so that a quick check can be performed and it doesn't try to create the same ebuild many times
                            }
                        }
                }
                }
            }
            
            break;

        case "ext":
            if ($dep["optional"] == "no")
            {
                if (isset($usedep[$dep["name"]])) $dep["name"] = $usedep[$dep["name"]];
                if (!in_array($dep["name"], array("pcre","spl","reflection")))
                    $php53flags[] = $dep["name"];
                if ($dep["name"] != "pcre")
                    $phpflags[] = $dep["name"];
            }
            break;

        case "php":
            $phpver = $dep["version"];
        }
    }

    $phpdep = "";
    if (!empty($phpflags)) {
        $phpdep2 = "dev-lang/php[" . implode(",", $phpflags). "]\n\t";
        $search  = array("gettext", "openssl", "SimpleXML");
        $replace = array("nls", "ssl", "simplexml");
        $phpdep  = str_replace($search, $replace, $phpdep2);
    }

    if (isset($phpver))
        $phpdep .= ">=dev-lang/php-$phpver";


    $peardep = implode("\n\t", $pearDeps);

    $postdep = implode("\n\t", $postDeps);

    $optdep2=""; $iuse="";
    foreach ($optdep as $opt )
    {
        $iuse=$iuse ." ". $opt['key'];
        $optdep2=$optdep2 . $opt['key'] ."? ( ". $opt['value'] ." )\n\t";
        file_put_contents( "/tmp/generateHordeEBuilds/temp_iuse", $opt['key'] . PHP_EOL, FILE_APPEND);
    }
    $iuse=ltrim($iuse);

    $doins = "";

    $prefix = get_channel_prefix($channelUri);
    $ename = get_channel_prefix($channelUri) . $pf->getName();
    $myp = $pf->getName();

    $euri = str_replace($ename, $myp, $uri);


        // Follow Gentoo package naming convention
        // PEAR packages have mixed case and so do Horde packages
        // Everything else is lower case
    $lowercase = TRUE;
    if ($channelUri == "pear.php.net" || $channelUri == "pear.horde.org")
        $lowercase = FALSE;

    $MyPackageName = get_package_name($ename);
    $MyPackageNameShort = get_package_name($ename, false);
    if ($lowercase == TRUE)
    {
        $MyPackageName = strtolower($MyPackageName);
        $MyPackageNameShort = strtolower($MyPackageNameShort);
    }

        //XXX: PJL: TO fix up - make destination directory configurable
    if (!is_dir("/usr/local/horde/horde/" . $MyPackageName))
         mkdir("/usr/local/horde/horde/" . $MyPackageName, 0777, true);

    $ebuildname = "/usr/local/horde/horde/" . $MyPackageName . "/" .
         $MyPackageNameShort . "-" . cleanup_version($pf->getVersion()) . ".ebuild";


    if ( !is_file($ebuildname) || $OptForce == TRUE)
    {

            // If we install a Horde package, the Horde_Role package MUST be installed first,
            // however we don't want any recursive dependancies ;)
        $hordedep="";
        if ( $channelUri == "pear.horde.org" && $MyPackageName != "dev-php/horde-Horde_Role")
            $hordedep="\n\tdev-php/horde-Horde_Role";

    $hordeapp = FALSE;
    if ($channelUri == "pear.horde.org" && substr( $MyPackageName, 0, 8) == "www-apps" )
        $hordeapp = TRUE;

    $ebuild = `head -n4 /usr/portage/skel.ebuild`;

    $ebuild .= "EAPI=4\n";
    $ebuild .= "\n";
    // If this is a PECL package, we should be using php-ext-pecl-r2
    // Also look at the other PECL packages for any good defaults to incorporate
    //
    // Look at splitting this out so that we have one version for a horde webapp
    // another for PECL and a catch-all for everything else.
    //
    // Make an educated guess about what eclass to inherit
    // I suspect that the Horde dev-php packages are actually libraries
    // and that they should be using the php-pear-lib-r1 eclass!

    $ebuild .= "PEAR_PV=\"" . $pf->getVersion() . "\"\n";
    $ebuild .= "PHP_PEAR_PKG_NAME=\"" . $pf->getName() . "\"\n";
    $ebuild .= "\n";
    if ($channelUri == "pear.horde.org") {
        if ($pf->getName() == "horde_lz4")
        {
              // This is actually a PECL module
            $ebuild .= "inherit php-ext-pecl-r2\n";
            $ebuild .= "PHP_EXT_S=\"\${WORKDIR}/\${PHP_PEAR_PKG_NAME}-\${PEAR_PV}\"\n";
            $ebuild .= "PHP_EXT_NAME=\${PHP_PEAR_PKG_NAME}\n";
            $hordedep = "";  // Don't require 'dev-php/horde-Horde_Role' for this
        }
        elseif ($hordeapp == TRUE) {
            // This is Horde WebApp
            $ebuild .= "inherit webapp\n";
        }
        else {
            // This is a Horde library
            $ebuild .= "inherit php-pear-lib-r1\n";
        }
        $ebuild .= "S=\"\${WORKDIR}/\${PHP_PEAR_PKG_NAME}-\${PEAR_PV}\"\n";
    }
    elseif ($channelUri == "pecl.php.net")
    {
        $ebuild .= "inherit php-ext-pecl-r2\n";
    }
    else
    {
        // Nothing special to do here:
        $ebuild .= "inherit php-pear-r1\n";
    }

    $ebuild .= "\n";
    $ebuild .= "DESCRIPTION=\"" . $pf->getSummary() . "\"\n";
    $ebuild .= "HOMEPAGE=\"" . $parsedName['channel'] . "\"\n";
    $ebuild .= "SRC_URI=\"" . $euri . "\"\n";
    $ebuild .= "\n";
    $ebuild .= "LICENSE=\"" . str_replace(" License", "", $pf->getLicense()) . "\"\n";
    if ($hordeapp == FALSE)
        $ebuild .= "SLOT=\"0\"\n";
    $ebuild .= "KEYWORDS=\"~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86\"\n";
    $ebuild .= "IUSE=\"" . strtolower($iuse) ."\"\n";
    $ebuild .= "\n";
    // If this is for webmail or groupware, then $peardep should be part of DEPEND and not RDEPEND
    $ebuild .= "DEPEND=\"" . $phpdep . $hordedep ."\"\n";
    $ebuild .= "RDEPEND=\"". trim("\${DEPEND}\n\t" . $peardep . "\n\t" . $optdep2) . "\"\n";
    if ($postdep) {
        $ebuild .= "PDEPEND=\"$postdep\"\n";
    }

    if ( $channelUri == "pear.horde.org" && $MyPackageName == "dev-php/horde-Horde_Role" ){
        $ebuild .= "# Functions needed to add/remove the Horde PEAR channel\n";
        $ebuild .= "pkg_setup()\n";
        $ebuild .= "{\n";
        $ebuild .= "  pear channel-discover \"pear.horde.org\"\n";
        $ebuild .= "}\n\n";
        $ebuild .= "pkg_postrm()\n";
        $ebuild .= "{\n";
        $ebuild .= "  pear channel-delete \"pear.horde.org\"\n";
        $ebuild .= "}\n";
    }




    file_put_contents( $ebuildname, $ebuild);

    if ($hordeapp == TRUE)
        doHordeApp( $ebuildname, $MyPackageName, substr( $MyPackageName, strrpos($MyPackageName, "-") +1), $pearDeps);

    echo "Ebuild written to $ebuildname\n";
    
    passthru("ebuild $ebuildname manifest");

    file_put_contents( "/tmp/generateHordeEBuilds/temp_keywords", $MyPackageName . " " . $ARCH . PHP_EOL, FILE_APPEND);
    file_put_contents( "/tmp/generateHordeEBuilds/temp_keywords_with_version", "=" . $MyPackageName . "-" . cleanup_version($pf->getVersion()) . " " .$ARCH . PHP_EOL, FILE_APPEND);
    }
}

function help ()
{
    die("
Run `epear.php <pear package> [--nodeps]`.

Examples:
    epear.php HTTP_Request2

    pear channel-discover pear.pdepend.org
    epear.php pdepend/PHP_Depend

");
}

// Gobal Options:
$OptNoDeps = FALSE;
$OptForce = TRUE;
$OptOptionalAsRequired = FALSE;
$OpsWWWApps = FALSE;
$package = "";

$ARCH="~" . trim(`portageq envvar ARCH`);

// Handle the Command Line Arguments
for ($p=1; $p<$argc; $p++)
{
    $lcargvp=strtolower($argv[$p]);
    if ($lcargvp == "--nodeps")
        $OptNoDeps = TRUE;
    elseif ($lcargvp == "--force")
        $OptForce = TRUE;
    elseif ($lcargvp == "--optionalasrequired")
        $OptOptionalAsRequired = TRUE;
    elseif ($lcargvp == "--wwwapps")
        $OpsWWWApps = TRUE;
    elseif ($lcargvp == "--help")
        help();
    else
        $package = $argv[$p];
}

if ($package == "")
    help();

generate_ebuild($package);

// An Option:
// To generate some packages as dev-php (default) and others as www-apps
// (optional). This will cater for Horde
// I.e. an option to set the category

