@echo off
cd /d %~dp0
del /f /q fritzflash.exe > nul
echo Installing pyinstaller...
pip install pyinstaller
echo Building...
pyinstaller --noconfirm --onefile --console  "fritzflash.py"
move /Y .\dist\macrecovery.exe .\macrecovery.exe > nul
echo Cleaning up...
del /f /q boards.json
del /f /q macrecovery.spec
rd /s /q dist
rd /s /q build
