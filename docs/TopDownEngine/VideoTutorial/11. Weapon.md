### Weapon
https://www.youtube.com/watch?v=dvvcTtCrm_8&list=PLl3caEhMYxQGFQ8LA5doTSkWhP2Mx84Gx&index=11
Koala2D의 projectile 을 복제해서 하기를 추천
Projecttile : 총알 발사체
MuzzleFlare : 발사시 포구 이펙트
	Particle -> Renderer -> Material 에서 생상 변경
MM Feedbacks
	게임 오브젝트에서 생성한 후 MM Feedback 을 add component 
	해당 오브젝트를 TutorialGun(무기 최상단 오브젝트) 의 Feedbacks 에 넣음
	화면에 살짝 파란 이펙트 출력하기 위해 Bloom 사용

WeaponAmmo
	무기에 추가(tutorial gun)

Picker
	C# Item Picker Script
	바닥에 떨어진 아이템들
	Basic Info
		설명등을 적음
	Prefab Drop
		Picker prefab 을 등록함

Prefab Variant
	prefab도 상속 가능한듯?
	https://docs.unity3d.com/kr/2018.4/Manual/PrefabVariants.html
	base에 해당하는 프리펩보다 설정값이 우선됨