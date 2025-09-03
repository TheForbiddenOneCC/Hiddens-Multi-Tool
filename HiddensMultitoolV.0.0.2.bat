@echo off
title Hiddens Multitool V.0.0.2
chcp 65001 >nul
:mainmenu
cls
color 0B

echo ███    ███ ██    ██ ██      ████████ ██ ████████  ██████   ██████  ██      
echo ████  ████ ██    ██ ██         ██    ██    ██    ██    ██ ██    ██ ██      
echo ██ ████ ██ ██    ██ ██         ██    ██    ██    ██    ██ ██    ██ ██      
echo ██  ██  ██ ██    ██ ██         ██    ██    ██    ██    ██ ██    ██ ██      
echo ██      ██  ██████  ███████    ██    ██    ██     ██████   ██████  ███████                 
echo Welcome To Hiddens Multitool   2025 ©️ Hidden Codes Inc.
      
color 0A
echo Make A Selection Below:
echo 1 - Steam Store
echo 2 - Youtube
echo 3 - Suggestions
echo 4 - Credits
echo 5 - Notes
echo 6 - Calculator
echo 7 - Stopwatch
echo 8 - Lets Go Gambling!

set /p a=Select An Option [%user%]:
if "%a%"=="1" goto steam
if "%a%"=="2" goto youtube
if "%a%"=="3" goto suggestions
if "%a%"=="4" goto credits
if "%a%"=="5" goto notes
if "%a%"=="6" goto calculator
if "%a%"=="7" goto stopwatch
if "%a%"=="8" goto slotmachine

:steam
msg * Opened Steam Store
start https://store.steampowered.com/
goto mainmenu

:youtube
msg * Opened Youtube
start https://youtube.com
goto mainmenu

:suggestions
msg * Opened Suggestions Form
start https://docs.google.com/forms/d/e/1FAIpQLSe3DikKobLbiaiiDj6aaBpo7dHBcrMdtCrjBJtIqz-pNF3GMw/viewform?usp=header
goto mainmenu

:credits
cls

echo Hidden - Main Founder

echo                2025 ©️ Hidden Codes Inc.
pause
goto mainmenu

:notes
cls
color 0F
echo ===============================
echo              NOTES
echo ===============================
echo Type your notes below.
echo (Enter ";" on a new line to return to menu)
echo ===============================


set /p note=Note: 
if "%note%"==";" goto mainmenu
echo %note% >> notes.txt

:calculator
cls
echo ===============================
echo           CALCULATOR
echo ===============================
set /p math=Enter calculation (or ; to exit): 
if "%math%"==";" goto mainmenu

rem do the math
set /a result=%math%
echo Result: %result%
pause
goto calculator

:stopwatch
cls
echo ===============================
echo            STOPWATCH
echo ===============================
echo Press any key to start stopwatch...
pause >nul
setlocal enabledelayedexpansion

set /a seconds=0
set /a minutes=0
set /a hours=0

:swloop
cls
echo ===============================
echo            STOPWATCH
echo ===============================
echo   Time: !hours!h:!minutes!m:!seconds!s
echo ===============================
echo Press Q to stop and return to main menu.

:: wait 1 second or key press
choice /c QN /n /t 1 /d N >nul
if errorlevel 2 goto tick     :: if N (timeout), keep going
if errorlevel 1 goto mainmenu :: if Q, exit to main menu

:tick
:: increment time
set /a seconds+=1
if !seconds! GEQ 60 (
    set /a seconds=0
    set /a minutes+=1
)
if !minutes! GEQ 60 (
    set /a minutes=0
    set /a hours+=1
)

goto swloop

:slotmachine
cls
echo ===============================
echo         SLOT MACHINE
echo ===============================
echo Press ENTER to spin!
pause >nul

:: Define slot symbols (ASCII-safe)
set symbols=@ $ # * 7

:: Generate 3 random symbols
set /a s1=%random% %% 5 + 1
set /a s2=%random% %% 5 + 1
set /a s3=%random% %% 5 + 1

:: Assign symbols using call
for /f "tokens=%s1%" %%a in ("%symbols%") do set slot1=%%a
for /f "tokens=%s2%" %%a in ("%symbols%") do set slot2=%%a
for /f "tokens=%s3%" %%a in ("%symbols%") do set slot3=%%a

:: Display result
echo -------------------------------
echo      %slot1%   %slot2%   %slot3%
echo -------------------------------

:: Check if all three match
if "%slot1%%slot2%%slot3%"=="%slot1%%slot1%%slot1%" (
    echo JACKPOT! You win!
) else (
    echo Better luck next time!
)

pause
goto mainmenu
