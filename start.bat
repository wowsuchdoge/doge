@ECHO OFF
cd server

:start
call node server.js
ECHO Restarting...
timeout /t 10
GOTO start