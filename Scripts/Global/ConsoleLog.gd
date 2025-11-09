extends Control

@onready var text: RichTextLabel = $PanelContainer/RichTextLabel

func	_log(...args: Array):
	var	result = ""
	
	for arg in args:
		result += str(arg)
	print(result)
	text.text += str(result, "\n")
	
func	_process(delta: float):
	if Input.is_action_just_pressed("Debug"):
		visible = !visible
