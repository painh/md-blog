# 화살표가 합쳐지는 문제
설정 - Appearence - Font 를 설정

# Table Of Contents
추가 플러그인이 있긴 하지만, 비 표준 md 문법임
Setting - Core Plugins - Outline 을 키면 오른쪽에 TOC 창이 뜸. 이게 나음
처음 키면 바로 안보이므로, obsidian 재시작이 필요함

# header가 아니라 파일 이름으로 페이지 생성
https://github.com/lukasgeiter/mkdocs-awesome-pages-plugin
.github/workflows/ci.yml 을 수정
```yaml
      - run: pip install mkdocs-material
      - run: pip install mkdocs-roamlinks-plugin
      - run: pip install mkdocs-awesome-pages-plugin # 추가
      - run: mkdocs gh-deploy --force	
```
mkdocs.yml 수정
```yaml
plugins:
  - search
  - roamlinks 
  - awesome-pages: # 추가
	  filename: .index
```