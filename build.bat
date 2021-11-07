call prebuild.bat
del /s /q src\*.css
call %pub% global run webdev build --output=web:build -- --delete-conflicting-outputs --use-polling-watcher

rem --delete-conflicting-outputs
