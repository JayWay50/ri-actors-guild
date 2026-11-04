:: RI Actors Guild gallery - one-time push to GitHub
@echo off
cd /d %~dp0
echo.
echo  RI Actors Guild gallery - pushing to JayWay50/ri-actors-guild ...
echo.
git --version >nul 2>&1
if errorlevel 1 (
  echo  Git is not installed on this computer yet.
  echo  Install it once from https://git-scm.com/download/win - keep clicking Next, all defaults are right.
  echo  Then run this file again.
  pause
  exit /b 1
)
git init -b main
git config user.name "JayWay50"
git config user.email "JayWay50@users.noreply.github.com"
git add -A
git commit -m "Actors Guild gallery - full roster (187 actors, Waves 1-9, corrected ages)"
git remote add origin https://github.com/JayWay50/ri-actors-guild.git 2>nul
git remote set-url origin https://github.com/JayWay50/ri-actors-guild.git
git push -u origin main
echo.
echo  If a GitHub sign-in window opened, sign in as JayWay50 - that is expected, once.
echo  When the push finishes, tell Riri - she verifies the live page before anyone celebrates.
pause
