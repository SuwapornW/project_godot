extends Node2D
var settingPopupmenu

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	settingPopupmenu = get_node("settingPopupMenu")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_backButton_pressed():
	get_tree().change_scene('res://Scenes/MenuScene.tscn')
	pass # Replace with function body.




func _on_animalButton_pressed():
	get_tree().change_scene('res://Scenes/Mode_Animal.tscn')
	pass # Replace with function body.


func _on_SettingButton_pressed():
	settingPopupmenu.show()
	pass # Replace with function body.


func _on_ClosePop_pressed():
	settingPopupmenu.hide()
	pass # Replace with function body.


func _on_LearnButton_pressed():
	get_tree().change_scene("res://Scenes/LearnMode.tscn")
	pass # Replace with function body.
