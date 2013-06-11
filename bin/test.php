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
require_once "PEAR/ChannelFile.php";
require_once "PEAR/Registry.php";



$config = PEAR_Config::singleton('', '');
$registry = new PEAR_Registry('', '', '');
$config->getRegistry();
$channelFile = $registry->getChannel("pear.horde.org");
//var_dump( $config);

    
//$channelFile = new PEAR_ChannelFile();
//$channelFile->setServer( "pear.horde.org");
var_dump( $channelFile);


