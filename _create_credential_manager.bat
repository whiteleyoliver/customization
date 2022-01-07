@echo off
cmdkey /delete:files.whiteleyoliver.local
set /p name=Enter your email address :
cmdkey /add:files.whiteleyoliver.local /user:%name% /pass