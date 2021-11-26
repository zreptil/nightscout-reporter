@echo off
call i18n-base.bat
rd %dstARB% /q/s
md %dstARB%
echo creating arb-file...
cd ..\intl_translation
call %pub% run bin\extract_to_arb --output-dir "%dstARB%" --output-file "%dstFile%" --dart-list %dartFileList%
cd ..\nightscout-reporter
echo done!
pause
start "" "https://crowdin.com/project/nightscout-reporter/content/files"
