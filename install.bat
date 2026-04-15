@echo off
echo ============================================
echo  Rank Bot - First Time Setup
echo ============================================
echo.

node --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Node.js is not installed.
    echo Please download and install it from: https://nodejs.org/
    echo Then run this file again.
    pause
    exit /b 1
)

echo Node.js found. Installing packages...
echo.
npm install
if errorlevel 1 (
    echo.
    echo ERROR: Package installation failed.
    pause
    exit /b 1
)

echo.
echo ============================================
echo  Installation complete!
echo ============================================
echo.
echo Next steps:
echo  1. Rename ".env.example" to ".env"
echo  2. Open ".env" in Notepad and fill in your tokens
echo  3. Double-click "start.bat" to run the bot
echo.
pause
