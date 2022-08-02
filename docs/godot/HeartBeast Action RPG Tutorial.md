# HeartBeast Action RPG Tutorial
https://www.youtube.com/watch?v=mAbG8Oi-SvQ&list=PL9FzW-m48fn2SlrW0KoLT4n5egNdX-W9a&index=2

## Make an Action RPG in Godot 3.2
Import 할때 세팅하고 (Filter Off)  Preset 눌러서 Set as Default 눌러줘야 이후에 임포트 하는거에 적용됨
Project Settings 에서 Width / Height (실제 사이즈) 정하고, Test Width / TestHeight 를 정하고(윈도우 크기)
Mode를  diabled -> 2D 로 바꿔야 의도한대로 확대됨

## Make an Action RPG in Godot 3.2 (P6 | Animation in all directions with an AnimationTree)
https://www.youtube.com/watch?v=Z9aR9IiiHT8&list=PL9FzW-m48fn2SlrW0KoLT4n5egNdX-W9a&index=6
애니메이션 트리 관련해서 외부 툴을 쓰기 때문에, 툴 자체에 익숙해져야 해서 실수할 부분이 많음.
특히 애니메이션 우선순위를 위해서 Blend Position 의 max 를 조절하는 건 좀 핵 같은 느낌.
4방향 에니를 넣을때마다 이거 보면서 해야 할듯


## Make an Action RPG in Godot 3.2 (P7 | Background Grass and Dirt Path Autotile)
texture repeat 나옴 (작은 이미지를 패턴으로 크게 화면 채우기)
bitmask를 이용해서 오토 autotile 만드는것을 체크.
빨간색으로 표시되는 비트마스크는 현재 타일 근처에 다른 타일의 존재 상태에 대한 것일듯
그냥 같은 패턴을 복북해서 쓰는게 맞을듯.

## Make an Action RPG in Godot 3.2 (P14 | Enemy Stats + Export Variables + Setget)
유니티의 장점인 컴포넌트 방식의 개발을 gd에선 어떻게 하는가? 에 대한 해법.
자식 노드를 만들어 연결함. 조금 번거롭긴하지만, 결국 같은 내용.
signal / setget 을 다룸
setget 스타일은 개인적으로 싫어하는 스타일이라 안쓸듯.
operator override 처럼 기본적으로 알고 있는 작동 방식을 바꾸는 형태라 불호
class extends 에 대해서도 다룸
node2d -> hitbox -> swordhitbox

## Make an Action RPG in Godot 3.2 (P16 | Bat AI Start)
move_and_slide 덕분에 길찾기가 없어도 그럴싸하게 진행됨

## Make an Action RPG in Godot 3.2 (P17 | Player Stats + Enemy Attack)
monitorable 대신 monitoring 을 써야 함. 3.4부터 바뀐듯.


## Make an Action RPG in Godot 3.2 (P18 | Player Hearts UI)
Control node를 쓰는 이유는 잘 모르겠음. 그냥 UI 의 Root인가?
Heart Empty를 쓰기 위해서 expand 를 체크하고 줄여이는걸 잊지 말것.
그런데 그동안은 툴의 기능들 잘 쓰더니 갑자기 급 하드코딩?

## Make an Action RPG in Godot 3.2 (P22 | Sounds + Hit Flash Effect)
사운드 관련 내용이 나옴. 
경고 제거용 주석
```python
# warning-ignore:return_value_discarded
```
딱히 대소문자는 구분 안하는듯. 저장한다고 경고가 사라지는건 아니라서 F5로 실행 한번 함

WhiteColorShader는 LocalToScene 옵션을 켜야 한다고 함. 안그러면 같은 노드 공유. 음....
박쥐에 하는건 안했음.  코드로 쉽게 돌려 쓸수 있게 고민해보는게 좋을듯 함
