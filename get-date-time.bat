::  provides output (date and time) in a highly structured format, but the output does not include headers and blank lines.
@echo off
FOR /F %%a IN ('WMIC OS GET LocalDateTime ^| FIND "."') DO SET DTS=%%a
echo  date and time is %DTS%
echo date %DTS:~0,8%
echo time %DTS:~8,6%

