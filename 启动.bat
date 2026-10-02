@echo off
cd /d "%~dp0"
echo 打开 http://127.0.0.1:8765
echo 关掉这个窗口就会停止。
"%~dp0stock-monitor.exe"
