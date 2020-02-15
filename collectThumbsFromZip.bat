@echo off
cls
set srcDir=%userprofile%\Desktop
set dstDir=%userprofile%\Dropbox\Development\AngularDart\nightscout-reporter\lib\assets\img\thumbs
rem set dstDir=%srcDir%
set rar="%ProgramFiles%\WinRAR\WinRAR.exe"
for %%i in (%srcDir%\nr-images.*.zip) do call :extract %%~ni
goto :ende
:extract
set p=%1
set dst=%dstDir%\%p:~-2%
md %dst%
%rar% x -o+ %srcDir%\%1.zip *.* %dst%
goto :eof
:ende
pause