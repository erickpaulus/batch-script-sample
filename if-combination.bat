@echo off
setlocal



REM Tentukan path ke file
set "file1=C:\MyFolder\file1.txt"
set "file2=C:\MyFolder\file2.txt"

REM Memeriksa apakah kedua file ada
:: Menggunakan IF Bersarang
if exist "%file1%" (
    if exist "%file2%" (
        echo Both files exist.
    ) else (
        echo file2.txt does not exist!
    )
) else (
    echo file1.txt does not exist!
)


:: Menggunakan IF dalam Satu Baris
if exist "%file1%" if exist "%file2%" (
    echo Both files exist.
    ) else (
        echo file2.txt does not exist!
) else (
    echo file1.txt does not exist!
)
endlocal
