```bash
git add *
git commit -m "autoCommit %date:~-4%%date:~3,2%%date:~0,2%.%time:~0,2%%time:~3,2%%time:~6,2%"
git push origin main
```

Windows의  작업 스케쥴러로 실행

push.bat 를 바로가기로 만든 후 실행을 최소화