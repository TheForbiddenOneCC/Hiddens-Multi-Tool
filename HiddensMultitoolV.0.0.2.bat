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

set /p a=Select An Option [%user%]:
if "%a%"=="1" goto steam
if "%a%"=="2" goto youtube
if "%a%"=="3" goto suggestions
if "%a%"=="4" goto credits
if "%a%"=="5" goto notes

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


echo Hidden - Main Founder

echo                2025 ©️ Hidden Codes Inc.
pause
goto mainmenu

:notes
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
