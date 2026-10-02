@echo off
chcp 936 >nul
cd /d "%~dp0"
echo 股票行情监测
echo 浏览器打开 http://127.0.0.1:8765
echo 关掉这个窗口就会停止。
echo.
netstat -ano | findstr "127.0.0.1:8765" | findstr "LISTENING" >nul
if not errorlevel 1 (
  echo 8765 端口已经有程序在运行，直接打开页面。
  start "" "http://127.0.0.1:8765"
  pause
  exit /b 0
)
start "" cmd /c "ping -n 3 127.0.0.1 >nul & start http://127.0.0.1:8765"
"%~dp0stock-monitor.exe"
echo.
echo 程序已退出。
pause
