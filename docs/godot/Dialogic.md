\_ready 에서 쓰면 망함.
https://github.com/coppolaemilio/dialogic/blob/main/addons/dialogic/Documentation/Content/Tutorials/BeginnersGuideStepByStep.md


https://github.com/coppolaemilio/dialogic/blob/main/addons/dialogic/Documentation/Content/Reference/001.md
get/set value
.......의 경우 그냥 해당 타임라인/다이얼로그 안에서 관리되는 스크립트이므로, 엔진 내에서 뭔가 값을 받으려면 emit_signal을 쓰는게 맞을듯.

```python
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		dialog = Dialogic.start("ts_a")
		dialog.connect("dialogic_signal", self, "dialog_listener")		
		add_child(dialog)
		
func dialog_listener(value):
	print('dialog_listener', value)

```