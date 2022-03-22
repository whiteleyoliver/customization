@echo off
cmdkey /delete:files.whiteleyoliver.local
cmdkey /delete:*.whiteleyoliver.local
set /p name=Enter your email address :
cmdkey /add:*.whiteleyoliver.local /user:%name% /pass