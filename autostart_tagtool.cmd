@echo off

timeout  /t 1
echo "## START TagTool ohne Session ##"
start "Autostart TagTool" "bin\shortcuts\TagTool_shortcut" "-s" "-h" 
timeout /t 10