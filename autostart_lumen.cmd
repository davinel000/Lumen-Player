@echo off

echo "## Checking and updating shortcuts if necessary ##"
PowerShell -NoProfile -ExecutionPolicy Bypass -File "CheckShortcuts.ps1"

echo "## Waiting for shortcut check/update to complete ##"
timeout /t 2

echo "## START TagTool ohne Session ##"
start "Autostart TagTool" "bin\shortcuts\TagTool_shortcut.lnk" "-s" "-h" 
timeout /t 10

echo "## START TouchDesigner ##"
start "Autostart TouchPlayer" "bin\shortcuts\TouchPlayer_shortcut.lnk" "%~dp0\Lumen_Player_5.toe"
timeout /t 10