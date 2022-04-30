# material for mkdocs 에서 새 줄 관련

## 세팅

매번 git push 를 할순 없으니 따로 프로젝트 생성

새 폴더 생성
```bash
poetry init
poetry add mkdocs
poetry add mkdocs-roamlinks-plugin
.venv\Scripts\mkdocs.exe new .
```

obsidian 에서 blog의 docs 부분을 프로젝트 폴더로 복사
mkdocs.yml 도 플젝 루트에 복사

```bash
.venv\Scripts\mkdocs.exe serve
```

로 수정 후 테스트

## 빌드/테스트
http://127.0.0.1:8000/unity/TopDownEngine/VideoTutorial/11.%20Weapon/
의 줄바꿈이 구림을 확인


## 수정
https://squidfunk.github.io/mkdocs-material/customization/

docs/stylesheets/extra.css
생성
```css
p {
  white-space: pre;
}
```
추가

mkdocs.yml 수정
```yaml
site_name: painh md blog

extra_css:
  - stylesheets/extra.css

```
