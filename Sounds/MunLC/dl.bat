@echo off
set "URL_FILE=urls.txt"

if not exist "%URL_FILE%" (
    echo Error: %URL_FILE% not found!
    pause
    exit /b
)

for /f "usebackq tokens=*" %%A in ("%URL_FILE%") do (
    if not "%%A"=="" (
        echo Downloading: %%A
        curl -O "%%A"
    )
)

echo All downloads completed.
pause
