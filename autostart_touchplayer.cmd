@echo off

timeout  /t 1

echo "## START TouchDesigner ##"
start "Autostart TouchPlayer" "bin\shortcuts\TouchPlayer_shortcut" "%~dp0\Lumen_Player_5.toe"
timeout /t 10