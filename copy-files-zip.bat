::  Backup all  files inside the source path into target path
::  Then zip them with name-date-time.7z

::  Setup
SETLOCAL ENABLEDELAYEDEXPANSION
FOR /f %%a IN ('WMIC OS GET LocalDateTime ^| FIND "."') DO SET DTS=%%a
SET currentdate=%DTS:~0,8%
SET currenttime=%DTS:~8,6%

SET backuppath=.\target
SET zipPath="C:\Program Files\7-Zip\7z.exe"
SET "serverList=12 13"

::  Server settings
for %%i in (%serverList%) do (
    ECHO server: %%i    
    SET server=%%i
    ECHO server !server!
    XCOPY ".\source\Server!server!\Setting.ini" "%backuppath%\%currentdate%\Server!server!\"
)

::  Write current date to file
ECHO %currentdate%-%currenttime% > "%backuppath%\%currentdate%\lastCheck.txt"

::  Create archive
%zipPath% a "%backuppath%\backup-Setting-%currentdate%-%currenttime%.7z" "%backuppath%\%currentdate%\*"

::  Remove temporary files
RD /S /Q "%backuppath%\%currentdate%\"

ENDLOCAL
