@echo off
setlocal


REM Define "array" values
set "array=Apple Banana Cherry"

REM Loop through "array" values
for %%i in (%array%) do (
    echo Element: %%i
)

endlocal
pause
