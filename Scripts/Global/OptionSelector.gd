extends Node


@export var options : Array[String] = []
@export var selfput : bool = true

var option_selected = ""

func select_option(option: int):
	if option > options.size():
		return 
	GameManager.call(options[option])

func _process(delta: float):
	if Input.is_action_just_pressed("0"):
		option_selected += "0"
	if Input.is_action_just_pressed("1"):
		option_selected += "1"
	if Input.is_action_just_pressed("2"):
		option_selected += "2"
	if Input.is_action_just_pressed("3"):
		option_selected += "3"
	if Input.is_action_just_pressed("4"):
		option_selected += "4"
	if Input.is_action_just_pressed("5"):
		option_selected += "5"
	if Input.is_action_just_pressed("6"):
		option_selected += "6"
	if Input.is_action_just_pressed("7"):
		option_selected += "7"
	if Input.is_action_just_pressed("8"):
		option_selected += "8"
	if Input.is_action_just_pressed("9"):
		option_selected += "9"
	if Input.is_action_just_pressed("Enter"):
		select_option(int(option_selected))


func	print_options():
	var i = 0;
	
	for option in options:
		print("[", i, "]: ", option)
		i += 10
		

func	_ready():
	print("Choose an option:")
	print_options()
	
