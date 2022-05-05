Assets/Game/Scene 폴더를 만듬

MinimalScene2D 씬을 복사해서 저기에 넣음

카메라 계속 움직이는거 보기 안좋으니 이것부터 고정좀
	Minimal2DCameras/CM vcam1 의 Noise 를 none으로 변경

NPC 추가 관례
	KoalaDungeon 기준
	Level / NPCs 에 추가
		Guide - 이건 NPC라기보단 표지판에 가까움
		EncouragingHorns
			이쪽이 전통적인 NPC로 보임
			이걸 Assets/Game/Scene/MinimalScene2D 에 복사
			NPCs/EncouragingHorns/DialogZone/Dialog
				에서 대화 텍스트 수정

Topdownengine의 dialoguezone은 기본 기능만 있기 때문에, 
https://forum.unity.com/threads/released-topdown-engine-by-more-mountains-new-v2-3-tanks-stun-etc.566533/page-24#post-5515231

https://assetstore.unity.com/packages/tools/ai/dialogue-system-for-unity-11672
를 사면 그때부터 퀘스트 만들 생각