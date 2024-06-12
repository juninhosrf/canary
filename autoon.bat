@echo off
:loop
tasklist /FI "IMAGENAME eq canary.exe" 2>NUL | find /I /N "canary.exe">NUL
if "%ERRORLEVEL%"=="0" (
    echo Servidor rodando...
) else (
    echo o Servidor nao esta rodando. Iniciando Servidor...
    start "" "C:\Users\Administrator\Documents\GitHub\canary\canary.exe"
)
timeout /t 10 /nobreak
goto loop