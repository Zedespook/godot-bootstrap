extends Control

# * NOTE: When you see _some_var, that just points to function
# * know that you may change it, but it's to prevent the "this function
# * returns to nothing" warning. Happy coding :)

# Path for the main game scene, change if you have something else.
const GAME_SCENE_PATH: String = "res://source/Game/Game.tscn"

# Runs after the node has been initialized.
func _ready() -> void:
	# Connecting the start button's "pressed" function to change to `Game.tscn` scene.
	var start_button: Button = $MenuContainer/ButtonContainer/StartButton
	var _start_connect: int = start_button.connect("pressed", self, "_start_game")

	# Connecting the quit button's "pressed" function to exit the game to desktop.
	var quit_button: Button = $MenuContainer/ButtonContainer/QuitButton
	var _quit_connect = quit_button.connect("pressed", self, "_quit_game")


# Changes the scene tree to `Game.tscn`. Runs when start button is pressed.
func _start_game() -> void:
	var _change_level: int = get_tree().change_scene(GAME_SCENE_PATH)


# Calls quit on the scene tree, which exits the game to desktop.
func _quit_game() -> void:
	get_tree().quit()
