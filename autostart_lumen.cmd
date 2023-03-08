@echo off

timeout  /t 1
echo "## START TagTool ohne Session ##"
start "Autostart TagTool" "bin\shortcuts\TagTool_shortcut" "-s" "-h" 
timeout /t 10

echo "## START TouchDesigner ##"
start "Autostart TouchPlayer" "bin\shortcuts\TouchPlayer_shortcut" "%~dp0\Lumen_Player_1.4ver1.toe"
timeout /t 10