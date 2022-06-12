@echo off
cls
set pub="C:\tools\dart-sdk\bin\pub.bat"
call %pub% global activate webdev
call %pub% get
