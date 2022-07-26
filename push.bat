@echo off
@REM setlocal enabledelayedexpansion

cd /D "%~dp0"

for /f "delims=" %%i in ('git status -s') do (
   set "tmp=%%i"
   set "tmp=!tmp:~2!"
   set "result=!result!,!tmp!"
)

IF "%result:~2%" == "" GOTO END

git add *
git commit -m "autoCommit %date:~-4%%date:~3,2%%date:~0,2%.%time:~0,2%%time:~3,2%%time:~6,2%"
git push origin main

:END