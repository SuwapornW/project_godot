extends Node2D

onready var anim_player = get_node("AnimationPlayer")
onready var anim_player2 = get_node("AnimationPlayer2")
func _ready():
	anim_player.connect("finished",self,"on_finished")
	anim_player.play("move")
	anim_player2.connect("finished",self,"on_finished")
	anim_player2.play("move")
	pass 


func on_finished():
	print("Animation finished")


func _on_backButton_pressed():
	get_tree().change_scene("res://Scenes/CategoryScene.tscn")
	pass # Replace with function body.





func _on_payun_pressed():
	get_tree().change_scene("res://Scenes/learn_ก.tscn")
	pass # Replace with function body.


func _on_sara_pressed():
	get_tree().change_scene("res://Scenes/Sara.tscn")
	pass # Replace with function body.
