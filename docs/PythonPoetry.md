아래 설정으로 해두는게 좋음. 확실하게 하기 위해선 --local 옵션으로 poetry.yml 을 생성하는것도 좋을듯.
```bash
poetry config virtualenvs.in-project true
poetry config virtualenvs.path .venv
```