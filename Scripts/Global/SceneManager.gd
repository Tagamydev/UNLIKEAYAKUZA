extends Node

enum scenes {
	DEFAULT,
	MAIN_MENU,
	SAVES,
	CREDITS,
#---------------------------------------------------
	PROPERTIES,
	EMPLOYEES,
	DEBTS,
	BOARDROOM,
	OPENBUSINESS
}

var scenes_paths = {
	scenes.DEFAULT: "res://Scenes/Game/MainPage.tscn",
	scenes.PROPERTIES: "res://Scenes/Game/Properties.tscn"
}

var actual_scene = scenes.DEFAULT
var	scene_history = [ scenes.DEFAULT ]


func change_scene(scene: scenes):
	scene_history.append(scene)
	get_tree().change_scene_to_file(scenes_paths[scene])
	#print("changing the scene:")

func go_back_scene():
	if scene_history.size() > 1:
		scene_history.pop_back()
	print(scene_history)
	Console._log("this is a test", scene_history)
	print("this is a test", scene_history)
	if scene_history.size() > 0:
		get_tree().change_scene_to_file(scenes_paths[scene_history.back()])

func _process(delta: float):
	if Input.is_action_just_pressed("return"):
		go_back_scene()
