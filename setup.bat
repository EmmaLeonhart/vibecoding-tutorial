@echo off
echo ==========================================================
echo   Vibe Coding Tutorial - Setup Script
echo ==========================================================
echo.
echo This script will install the tools you need for vibe coding:
echo   1. Claude Code (AI coding agent)
echo   2. cleanvibe (project scaffolding)
echo.
echo Make sure you have already installed:
echo   - Node.js (from nodejs.org)
echo   - Python  (from python.org - with "Add to PATH" checked)
echo.
echo ==========================================================
echo.
pause

echo.
echo ----------------------------------------------------------
echo  Checking Node.js...
echo ----------------------------------------------------------
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo  ERROR: Node.js is not installed or not in your PATH.
    echo  Please install it from https://nodejs.org
    echo  Download the LTS version and run the installer.
    echo  Then close this window and run setup.bat again.
    echo.
    pause
    exit /b 1
)
echo  Node.js found.
echo.

echo ----------------------------------------------------------
echo  Checking Python...
echo ----------------------------------------------------------
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo  ERROR: Python is not installed or not in your PATH.
    echo  Please install it from https://python.org/downloads
    echo  IMPORTANT: Check "Add Python to PATH" during installation.
    echo  Then close this window and run setup.bat again.
    echo.
    pause
    exit /b 1
)
echo  Python found.
echo.

echo ----------------------------------------------------------
echo  Installing Claude Code...
echo ----------------------------------------------------------
echo  Running: npm install -g @anthropic-ai/claude-code
echo.
call npm install -g @anthropic-ai/claude-code
if %errorlevel% neq 0 (
    echo.
    echo  WARNING: Claude Code installation had an issue.
    echo  Try running this script as Administrator, or manually run:
    echo    npm install -g @anthropic-ai/claude-code
    echo.
) else (
    echo.
    echo  Claude Code installed successfully.
)
echo.

echo ----------------------------------------------------------
echo  Installing cleanvibe...
echo ----------------------------------------------------------
echo  Running: pip install cleanvibe
echo.
pip install cleanvibe
if %errorlevel% neq 0 (
    echo.
    echo  WARNING: cleanvibe installation had an issue.
    echo  Try manually running: pip install cleanvibe
    echo.
) else (
    echo.
    echo  cleanvibe installed successfully.
)
echo.

echo ==========================================================
echo.
echo  Setup complete! Here's what to do next:
echo.
echo  1. Set up your API key (if you haven't already):
echo     setx ANTHROPIC_API_KEY "your-key-here"
echo     (Get a key at https://console.anthropic.com)
echo.
echo  2. Close this terminal and open a new one
echo     (so the PATH changes take effect)
echo.
echo  3. To start Claude Code, double-click "!runClaude.bat"
echo     or open a terminal in your project folder and type: claude
echo.
echo  4. To create a new project with cleanvibe:
echo     cleanvibe new my-project
echo.
echo  Need Visual Studio Code? Download it from:
echo     https://code.visualstudio.com
echo.
echo ==========================================================
echo.
pause
