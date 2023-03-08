@echo off

timeout  /t 1

echo "## START TouchDesigner ##"
start "Autostart TouchPlayer" "bin\shortcuts\TouchPlayer_shortcut" "%~dp0\Lumen_Player_1.4ver1.toe"
timeout /t 10