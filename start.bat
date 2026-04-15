@echo off
echo ============================================
echo  Rank Bot - Starting...
echo ============================================
echo.

node --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Node.js is not installed.
    echo Please download it from: https://nodejs.org/
    pause
    exit /b 1
)

if not exist ".env" (
    echo ERROR: .env file not found.
    echo Please rename ".env.example" to ".env" and fill in your tokens.
    pause
    exit /b 1
)

if not exist "node_modules" (
    echo node_modules not found. Running install first...
    npm install
    if errorlevel 1 (
        echo ERROR: Install failed.
        pause
        exit /b 1
    )
)

if not exist "dist" (
    echo Building for first time...
    npm run build
    if errorlevel 1 (
        echo ERROR: Build failed.
        pause
        exit /b 1
    )
)

echo Starting bot... Press Ctrl+C to stop.
echo.
npm run dev
pause
