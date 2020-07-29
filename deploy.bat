@echo off
cls
rem goto skipbuild
call "C:\Program Files\Dart\dart-sdk\bin\pub.bat" get
call "C:\Program Files\Dart\dart-sdk\bin\pub.bat" global activate webdev
call "C:\Program Files\Dart\dart-sdk\bin\pub.bat" global run webdev build --output=web:build

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
del %log_file% 1>nul 2>nul
set tolog=^>^>"%log_file%"
set options=/y /r /i %tolog%
copy %dstdir%\settings.json settings.json %tolog%
rd %dstdir% /s/q %tolog%
md %dstdir% %tolog%
del %rarfile% %tolog%
xcopy build\*.* %dstdir% /s %options% 
xcopy lib\assets\*.css %dstdir%\packages\nightscout_reporter\assets\  /s %options% 
copy settings.json %dstdir% %tolog%
%unrar% x nr-pdfmake.rar %dstdir% %tolog%
del %dstdir%\.build.manifest %tolog%
del %dstdir%\.packages %tolog%
%rar% %rarparams% %rarfile% %dstdir%\*.* %tolog%
copy %rarfile% %dstdir% %tolog%

start "" C:\PROGRA~2\BEYOND~1\BCompare.exe "nightscout-reporter.zreptil.de/beta"
