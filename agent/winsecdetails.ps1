
$details = Get-MpComputerStatus

$xml = ""
$xml += "<WINSECDETAILS>`n"
$xml += "<AMENGINEVERSION>" + $details.AMEngineVersion + "</AMENGINEVERSION>`n"
$xml += "<AMPRODUCTVERSION>" + $details.AMProductVersion + "</AMPRODUCTVERSION>`n"
$xml += "<AMRUNNINGMODE>" + $details.AMRunningMode + "</AMRUNNINGMODE>`n"
$xml += "<AMSERVICEENABLED>" + $details.AMServiceEnabled + "</AMSERVICEENABLED>`n"
$xml += "<AMSERVICEVERSION>" + $details.AMServiceVersion + "</AMSERVICEVERSION>`n"
$xml += "<ANTISPYWAREENABLED>" + $details.AntispywareEnabled + "</ANTISPYWAREENABLED>`n"
$xml += "<ANTISPYWARESIGNATUREAGE>" + $details.AntispywareSignatureAge + "</ANTISPYWARESIGNATUREAGE>`n"
$xml += "<ANTISPYWARESIGNATURELASTUPDATED>" + $details.AntispywareSignatureLastUpdated + "</ANTISPYWARESIGNATURELASTUPDATED>`n"
$xml += "<ANTISPYWARESIGNATUREVERSION>" + $details.AntispywareSignatureVersion + "</ANTISPYWARESIGNATUREVERSION>`n"
$xml += "<ANTIVIRUSENABLED>" + $details.AntivirusEnabled + "</ANTIVIRUSENABLED>`n"
$xml += "<ANTIVIRUSSIGNATUREAGE>" + $details.AntivirusSignatureAge + "</ANTIVIRUSSIGNATUREAGE>`n"
$xml += "<ANTIVIRUSSIGNATURELASTUPDATED>" + $details.AntivirusSignatureLastUpdated + "</ANTIVIRUSSIGNATURELASTUPDATED>`n"      
$xml += "<ANTIVIRUSSIGNATUREVERSION>" + $details.AntivirusSignatureVersion + "</ANTIVIRUSSIGNATUREVERSION>`n"
$xml += "<BEHAVIORMONITORENABLED>" + $details.BehaviorMonitorEnabled + "</BEHAVIORMONITORENABLED>`n"
$xml += "<IOAVPROTECTIONENABLED>" + $details.IoavProtectionEnabled + "</IOAVPROTECTIONENABLED>`n"
$xml += "<ISTAMPERPROTECTED>" + $details.IsTamperProtected + "</ISTAMPERPROTECTED>`n"
$xml += "<NISENABLED>" + $details.NISEnabled + "</NISENABLED>`n"
$xml += "<NISENGINEVERSION>" + $details.NISEngineVersion + "</NISENGINEVERSION>`n"
$xml += "<NISSIGNATUREAGE>" + $details.NISSignatureAge + "</NISSIGNATUREAGE>`n"
$xml += "<NISSIGNATURELASTUPDATED>" + $details.NISSignatureLastUpdated + "</NISSIGNATURELASTUPDATED>`n"
$xml += "<NISSIGNATUREVERSION>" + $details.NISSignatureVersion + "</NISSIGNATUREVERSION>`n"
$xml += "<ONACCESSPROTECTIONENABLED>" + $details.OnAccessProtectionEnabled + "</ONACCESSPROTECTIONENABLED>`n"
$xml += "<REALTIMEPROTECTIONENABLED>" + $details.RealTimeProtectionEnabled + "</REALTIMEPROTECTIONENABLED>`n"
$xml += "<TAMPERPROTECTIONSOURCE>" + $details.TamperProtectionSource + "</TAMPERPROTECTIONSOURCE>`n"
$xml += "</WINSECDETAILS>`n"


[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::WriteLine($xml)
