@echo off
chcp 936 >nul
cd /d "%~dp0"
echo 股票行情监测
echo 默认打开 http://127.0.0.1:8765
echo 如果这个端口被占用，会自动改用下一个端口。
echo 关掉这个窗口就会停止。
echo.
"%~dp0stock-monitor.exe"
echo.
echo 程序已退出。
pause
