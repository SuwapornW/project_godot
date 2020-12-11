extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_backButton_pressed():
	get_tree().change_scene("res://Scenes/CategoryScene.tscn")
	pass # Replace with function body.




func _on_hardButton_pressed():
	get_tree().change_scene("res://Scenes/Animal_hard.tscn")
	pass # Replace with function body.
