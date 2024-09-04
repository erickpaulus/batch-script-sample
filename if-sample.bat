@echo off
setlocal
 
:: Basic IF Statement
set "value=10"

REM Check if value is equal to 10
if "%value%"=="10" (
    echo Value is 10
) else (
    echo Value is not 10
)


:: Comparison Operators
:: For numeric comparisons, use EQU, NEQ, LSS, LEQ, GTR, and GEQ operators. For string comparisons, use == and !=

:: Number Comparison
set /a number=5

if %number% EQU 5 (
    echo Number is 5
) else (
    echo Number is not 5
)

:: String Comparison
set "name=superAdmin"

if "%name%"=="superAdmin" (
    echo Hello superAdmin
) else (
    echo Hello Stranger
)

:: Checking for File or Directory Existence
set "file=readme.md"
if exist "%file%" (
    echo File %file% exists
) else (
    echo File does not exist
)

set "dir=source"
if exist "%dir%\" (
    echo Directory exists
) else (
    echo Directory does not exist
)

endlocal

