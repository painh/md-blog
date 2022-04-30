# Comment

파일의 경로등이 꽤나 자주 바뀌기 때문에, 이 시스템으로는 긴 히스토리 관리가 어려울것 같긴 하지만, 오류 정정 이슈 등을 받을 때 피드백 창구가 없기 때문에 일단은 붙이는것이 좋겠다고 생각함.

# giscus 세팅
https://giscus.app/ko

시캐는 대로 세팅하고, 1, 2, 3을 모두 확인 해야함.
그리고 github.com 등의 도메인을 제외한 저장소 경로만 입력.

![[Pasted image 20220430204824.png]]

```js
<script
  src="https://giscus.app/client.js"
  data-repo="<username>/<repository>"
  data-repo-id="..."
  data-category="..."
  data-category-id="..."
  data-mapping="pathname"
  data-reactions-enabled="1"
  data-emit-metadata="1"
  data-theme="light"
  data-lang="en"
  crossorigin="anonymous"
  async
>
</script>

```

위의 페이지 아래쪽에 나오는 스크립트를 복사해둔다.

## mk-docs에 세팅

overrides 폴더를 만들고 안에 main.html 파일을 만든다.

https://squidfunk.github.io/mkdocs-material/setup/adding-a-comment-system/#giscus-integration
```html
{% extends "base.html" %}

{% block content %}
  {{ super() }}

  <!-- Giscus -->
  <h2 id="__comments">{{ lang.t("meta.comments") }}</h2>
  <!-- Replace with generated snippet -->

  <!-- Reload on palette change -->
  <script>
    var palette = __md_get("__palette")
    if (palette && typeof palette.color === "object")
      if (palette.color.scheme === "slate") {
        var giscus = document.querySelector("script[src*=giscus]")
        giscus.setAttribute("data-theme", "dark") 
      }

    /* Register event handlers after documented loaded */
    document.addEventListener("DOMContentLoaded", function() {
      var ref = document.querySelector("[data-md-component=palette]")
      ref.addEventListener("change", function() {
        var palette = __md_get("__palette")
        if (palette && typeof palette.color === "object") {
          var theme = palette.color.scheme === "slate" ? "dark" : "light"

          /* Instruct Giscus to change theme */
          var frame = document.querySelector(".giscus-frame")
          frame.contentWindow.postMessage(
            { giscus: { setConfig: { theme } } },
            "https://giscus.app"
          )
        }
      })
    })
  </script>
{% endblock %}


```

<!-- Replace with generated snippet -->
이 부분을 위의 스크립트 부분으로 대체.(giscus.app 에서 가져온걸로)
