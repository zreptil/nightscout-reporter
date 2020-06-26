@echo off
cls
cd c:\temp
rd cgm-remote-monitor /s/q
git clone https://github.com/zreptil/cgm-remote-monitor.git
cd cgm-remote-monitor
git remote add upstream https://github.com/nightscout/cgm-remote-monitor
git fetch upstream
git rebase upstream/master
git push --force
