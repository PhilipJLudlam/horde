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

    if ($prefix == "") {
        echo "  Warning: Channels should have prefix, however none are defined for $channelUri" . "\n";
    }
    return $prefix;
}

function generate_ebuild($pear_package) 
{
    global $OptNoDeps, $OptForce, $OptOptionalAsRequired;

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
    	    }

            $pkgname = $rel . get_package_name($prefix . $dep["name"]);
            if ($rel != "")
            {
                $version = cleanup_version($dep["version"]);
                if ($version) {
                    $pkgname .= "-" . $version;
                }
            }
            //echo "  __version: ".$version."\n";
            //echo "  __cleanup_version ".cleanup_version($dep["version"])."\n";

            //Certain packages tend to create circular deps. We hack them into
            //PDEPEND
            if ($dep["name"] == "PHPUnit") {
                $postDeps[$dep["name"]] = $pkgname;
	        } else {

                if ($dep["optional"] == "no" || $OptOptionalAsRequired == TRUE) 
                {
                    //The key is used to prevent duplicates
		            $pearDeps[$dep["name"]] = $pkgname;
                }
                else
                {
                    $optdep[$dep["name"]]["key"]   = get_package_name($prefix . $dep["name"], false);
                    $optdep[$dep["name"]]["value"] = $pkgname;
                }

            // If we don't care about creating dependancies, then we can stop here
                {
                    if ( substr( $dep["name"],0, 6) != "horde-") {
                        // Only generate ebuilds IF it's not a Horde package
                        // as we are already generating ebuilds for all Horde packages

                //if (!(shell_exec("portageq match / " . escapeshellarg($pkgname)))) {
                //    echo "  ..Dependency $pkgname not found\n";
		            generate_ebuild($dep["channel"] . "/" . $dep["name"]);
                    
                // Also: Make it remember the packages it's built (sans version number)
		        // So that a quick check can be performed and it doesn't try to build the same dependancy
		        // multiple times (because multiple packages all require it
		        // - as in the case of Horde ;)
                //}
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
        $phpdep2 = "dev-lang/php[" . implode(",", $phpflags). "]\n    ";
        $search  = array("gettext", "openssl", "SimpleXML");
        $replace = array("nls", "ssl", "simplexml");
        $phpdep  = str_replace($search, $replace, $phpdep2);
    }

    $phpdep .= ">=dev-lang/php-$phpver";


    $peardep = implode("\n\t", $pearDeps);

    $postdep = implode("\n\t", $postDeps);

    $optdep2=""; $iuse="";
    foreach ($optdep as $opt )
    {
        $iuse=$iuse ." ". $opt['key'];
        $optdep2=$optdep2 . $opt['key'] ."? ( ". $opt['value'] ." )\n\t";
    }

    $doins = "";

    $prefix = get_channel_prefix($channelUri); 



    $ename = get_channel_prefix($channelUri) . $pf->getName();
    $myp = $pf->getName();

    $euri = str_replace($ename, $myp, $uri);

    // XXX: PJL: TO fix up - make destination directory configurable
    if (!is_dir("/usr/local/horde/" . get_package_name($ename))) {
        mkdir("/usr/local/horde/" . get_package_name($ename), 0777, true);
    }

    $ebuildname = "/usr/local/horde/" . get_package_name($ename)  . "/" . 
        get_package_name($ename, false) . "-" . cleanup_version($pf->getVersion()) .
	".ebuild";

    if ( !is_file($ebuildname) || $OptForce == TRUE)
    {

    $ebuild = `head -n4 /usr/portage/skel.ebuild`;

    $ebuild .= "EAPI=4\n";
    $ebuild .= "\n";
    $ebuild .= "PEAR_PV=\"" . $pf->getVersion() . "\"\n";
    $ebuild .= "PHP_PEAR_PKG_NAME=\"" . $pf->getName() . "\"\n";
    $ebuild .= "\n";
    $ebuild .= "inherit php-pear-r1\n";
    $ebuild .= "\n";
    $ebuild .= "DESCRIPTION=\"" . $pf->getSummary() . "\"\n";
    $ebuild .= "HOMEPAGE=\"" . $parsedName['channel'] . "\"\n";
    $ebuild .= "SRC_URI=\"" . $euri . "\"\n";
    $ebuild .= "\n";
    $ebuild .= "LICENSE=\"" . str_replace(" License", "", $pf->getLicense()) .
        "\"\n";
    $ebuild .= "SLOT=\"0\"\n";
    $ebuild .= "KEYWORDS=\"~" . trim(`portageq envvar ARCH`) . "\"\n";
    $ebuild .= "IUSE=\"" . $iuse ."\"\n";
    $ebuild .= "\n";
    $ebuild .= "DEPEND=\"" . $phpdep . "\n\t" . $peardep . "\n\t" . $optdep2 . "\"\n";
    $ebuild .= "RDEPEND=\"\${DEPEND}\"\n";
    if ($postdep) {
        $ebuild .= "PDEPEND=\"$postdep\"\n";
    }

    file_put_contents($ebuildname, $ebuild);

    echo "Ebuild written to $ebuildname\n";
    
    passthru("ebuild $ebuildname manifest");
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
$OptForce = FALSE;
$OptOptionalAsRequired = FALSE;
$OpsWWWApps = FALSE;
$package = "";

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

// For all generated ebuild, generate a package.keywords file
// One with a general exception for all versions of the atoms generated
// Another for the specific version of the atom/ebuild generated

// An Option:
// To generate some packages as dev-php (default) and others as www-apps
// (optional). This will cater for Horde
// I.e. an option to set the category

