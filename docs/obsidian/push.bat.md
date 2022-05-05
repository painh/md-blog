```bash
@echo off
setlocal enabledelayedexpansion

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
```

Windows의  작업 스케쥴러로 실행
	push.bat 를 바로가기로 만든 후 실행을 최소화
	스케쥴러 만들땐 첫 실행을 미래로 해야 제대로 실행됨
	slient mode 로 실행되길 원하기 때문에 아래와 같은 동작으로 등록
	