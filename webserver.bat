@echo off

if "%1" == "start" (

 echo Checking webserver location [%CD%]
 SET WS_PATH=%CD%
 SETX WS_PATH %CD%
 echo Starting Apache.
 @start /b "" bin\apache\bin\httpd.exe
REM echo Starting MySQL.
REM @start /b "" bin\mysql\bin\mysqld --defaults-file=bin\mysql\my.ini --standalone --console	

)

if "%1" == "stop" (

 echo Stopping ...
 echo Stopping Apache.
 taskkill /F /IM httpd.exe
 echo Stopping MySQL.
 taskkill /F /IM mysqld.exe

)

exit