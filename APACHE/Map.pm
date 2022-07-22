#TODO THIS FULL FILE


package Apache::Ocsinventory::Plugins::Winsecdetails::Map;
 
use strict;
 
use Apache::Ocsinventory::Map;
#Plugin UPTIME
$DATA_MAP{winsecdetails} = {
	mask => 0,
      multi => 1,
      auto => 1,
      delOnReplace => 1,
      sortBy => 'ID',
      writeDiff => 0,
      cache => 0,
      fields => {
            AMENGINEVERSION => {},
            AMPRODUCTVERSION => {},
            AMRUNNINGMODE => {},
            AMSERVICEENABLED => {},
            AMSERVICEVERSION => {},
            ANTISPYWAREENABLED => {},
            ANTISPYWARESIGNATUREAGE => {},
            ANTISPYWARESIGNATURELASTUPDATED => {},
            ANTISPYWARESIGNATUREVERSION => {},
            ANTIVIRUSENABLED => {},
            ANTIVIRUSSIGNATUREAGE => {},
            ANTIVIRUSSIGNATURELASTUPDATED => {},
            ANTIVIRUSSIGNATUREVERSION => {},
            BEHAVIORMONITORENABLED => {},
            IOAVPROTECTIONENABLED => {},
            ISTAMPERPROTECTED => {},
            NISENABLED => {},
            NISENGINEVERSION => {},
            NISSIGNATUREAGE => {},
            NISSIGNATURELASTUPDATED => {},
            NISSIGNATUREVERSION => {},
            ONACCESSPROTECTIONENABLED => {},
            REALTIMEPROTECTIONENABLED => {},
            TAMPERPROTECTIONSOURCE => {}
      }
};
1;