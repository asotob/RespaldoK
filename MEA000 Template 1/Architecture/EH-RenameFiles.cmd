rem echo off
set /p ME=Please enter the move event (MEAxxxx)?...
if defined ME (
   FOR %%f IN (EH-MEAxxxx-*.xls?) DO ren %%f EH-%ME%-*.xls?
   rename ..\CS-Rep\EH-MEAxxxx-CSRep-*.xlsm EH-%ME%-CSRepSum-V0.1.xlsm
   rename .\DR-Request\MEAxxxx-IPForm-New-Template.xlsx? %ME%-IPForm-New-Template.xlsx?
   rename .\FW-Request\MEAxxxx-FWReq-Manual.xls? %ME%-FWReq-Manual.xls?
   rename .\FW-Request\MEAxxxx-FWReq-Summary-temp.xls? %ME%-FWReq-Summary-temp.xls?
   rename .\FW-Request\MEAxxxx-FWReq-date-time.xls? %ME%-FWReq-date-time.xls?
   rename .\IP-Request\MEAxxxx-IPRequest-V0.1.xls? %ME%-IPRequest-V0.1.xls?
   rename .\IP-Request\MEAxxxx-VIPIPReq-V0.1.xls? %ME%-VIPIPReq-V0.1.xls?
   rename .\NAT\MEAxxxx-NAT-IP-Request.xls? %ME%-NAT-IP-Request.xls?
   rename .\RAID-Log\MEAxxxx-RAIDLog.xls? %ME%-RAIDLog.xls?
   rename .\Tools\MEAxxxx-Cutover-Template.xlsx %ME%-Cutover-V0.1.xls?
   rename .\Tools\MEAxxxx-ImportLookup-Template-V1.3.xlsm %ME%-ImportLookup-V0.1.xls?
   rename .\Tools\MEAxxxx-IP-NonExtDom-Template-V0.1.xlsm %ME%-IP-NonExtDom-V0.1.xls?
   )
del .\ant-architect-folders.sh
del .\EH-RenameFiles.cmd