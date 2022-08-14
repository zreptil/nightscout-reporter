@echo off
cls
echo Hiermit wird Nightscout Reporter erstellt. Davor muss die Synchronisation 
echo von Dropbox angehalten und eventuell laufende Server Instanzen beendet werden.
echo.
echo Bitte eine Taste druecken zum Fortsetzen oder Batchdatei abbrechen
pause >nul
rem goto skipbuild
rem del /s /q lib\src\*.css
rem del lib\*.css
call build.bat
pause
cls

:skipbuild
set dstdir=D:\WorkWindows7\Projekte\AngularDart\nightscout-reporter-local
if EXIST %dstdir%\settings.json goto gotit
set dstdir=Z:\nightscout-reporter
:gotit
set rar="C:\Program Files\WinRAR\winrar.exe"
set unrar="C:\Program Files\WinRAR\unrar.exe"
set log_file=..\nr-deploy.log
set rarparams=a -m5 -r -ep1 -idp -afzip
set rarfile=build\nightscout-reporter_local.zip
echo removing logfile ...
del %log_file% 1>nul 2>nul
set tolog=^>^>"%log_file%"
set options=/y /r /i %tolog%
copy %dstdir%\settings.json settings.json %tolog%
echo removing %dstdir% ...
rd %dstdir% /s/q %tolog%
echo creating %dstdir% ...
md %dstdir% %tolog%
echo removing %rarfile% ...
del %rarfile% %tolog%
echo copying build to %dstdir% ...
xcopy build\*.* %dstdir% /s %options% >nul
xcopy lib\assets\*.css %dstdir%\packages\nightscout_reporter\assets\  /s %options% >nul
copy settings.json %dstdir% %tolog% >nul
%unrar% x nr-pdfmake.rar %dstdir% %tolog%
del %dstdir%\.build.manifest %tolog%
del %dstdir%\.packages %tolog%
%rar% %rarparams% %rarfile% %dstdir%\*.* %tolog%
copy %rarfile% %dstdir% %tolog%

start "" C:\PROGRA~2\BEYOND~1\BCompare.exe "nightscout-reporter.zreptil.de/beta"
