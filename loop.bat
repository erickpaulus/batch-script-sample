@echo off
REM Loop pertama - loop mulai angka dari 1 sampai 3
for /L %%i in (1,1,3) do (
    echo Outer Loop: %%i
    
    REM Loop kedua - loop mulai huruf A sampai C
    for %%j in (A B C) do (
        echo Inner Loop: %%j

        REM Loop ketiga - loop mulai file di direktori saat ini
        for %%k in (*.*) do (
            echo File: %%k
        )
    )
)

pause
