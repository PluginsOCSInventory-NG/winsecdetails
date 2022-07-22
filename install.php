<?php
/**
 * The following functions are used by the extension engine to generate a new table
 * for the plugin / destroy it on removal.
 * #TODO THIS FILE
 */


/**
 * This function is called on installation and is used to 
 * create database schema for the plugin
 */
function extension_install_winsecdetails()
{
    $commonObject = new ExtensionCommon;

    $commonObject -> sqlQuery("DROP TABLE IF EXISTS `winsecdetails`");

    $commonObject -> sqlQuery(
        "CREATE TABLE IF NOT EXISTS `winsecdetails` (
        `ID` INT(11) NOT NULL AUTO_INCREMENT,
        `HARDWARE_ID` INT(11) NOT NULL,
        `AMENGINEVERSION` VARCHAR(255) DEFAULT NULL,
        `AMPRODUCTVERSION` VARCHAR(255) DEFAULT NULL,
        `AMRUNNINGMODE` VARCHAR(255) DEFAULT NULL,
        `AMSERVICEENABLED` VARCHAR(255) DEFAULT NULL,
        `AMSERVICEVERSION` VARCHAR(255) DEFAULT NULL,
        `ANTISPYWAREENABLED` VARCHAR(255) DEFAULT NULL,
        `ANTISPYWARESIGNATUREAGE` VARCHAR(255) DEFAULT NULL,
        `ANTISPYWARESIGNATURELASTUPDATED` VARCHAR(255) DEFAULT NULL,
        `ANTISPYWARESIGNATUREVERSION` VARCHAR(255) DEFAULT NULL,
        `ANTIVIRUSENABLED` VARCHAR(255) DEFAULT NULL,
        `ANTIVIRUSSIGNATUREAGE` VARCHAR(255) DEFAULT NULL,
        `ANTIVIRUSSIGNATURELASTUPDATED` VARCHAR(255) DEFAULT NULL,
        `ANTIVIRUSSIGNATUREVERSION` VARCHAR(255) DEFAULT NULL,
        `BEHAVIORMONITORENABLED` VARCHAR(255) DEFAULT NULL,
        `IOAVPROTECTIONENABLED` VARCHAR(255) DEFAULT NULL,
        `ISTAMPERPROTECTED` VARCHAR(255) DEFAULT NULL,
        `NISENABLED` VARCHAR(255) DEFAULT NULL,
        `NISENGINEVERSION` VARCHAR(255) DEFAULT NULL,
        `NISSIGNATUREAGE` VARCHAR(255) DEFAULT NULL,
        `NISSIGNATURELASTUPDATED` VARCHAR(255) DEFAULT NULL,
        `NISSIGNATUREVERSION` VARCHAR(255) DEFAULT NULL,
        `ONACCESSPROTECTIONENABLED` VARCHAR(255) DEFAULT NULL,
        `REALTIMEPROTECTIONENABLED` VARCHAR(255) DEFAULT NULL,
        `TAMPERPROTECTIONSOURCE` VARCHAR(255) DEFAULT NULL,
        PRIMARY KEY (`ID`,`HARDWARE_ID`)) ENGINE=INNODB;"
    );
}

/**
 * This function is called on removal and is used to 
 * destroy database schema for the plugin
 */
function extension_delete_winsecdetails()
{
    $commonObject = new ExtensionCommon;
    $commonObject -> sqlQuery("DROP TABLE IF EXISTS `winsecdetails`");
}

/**
 * This function is called on plugin upgrade
 */
function extension_upgrade_winsecdetails()
{

}

?>