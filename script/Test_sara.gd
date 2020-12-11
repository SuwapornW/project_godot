extends Node2D
onready var anim_player = get_node("AnimationPlayer")


func _ready():
	anim_player.connect("finished",self,"on_finished")
	anim_player.play("write")
	pass 

func _process(delta):
	if Input.is_action_just_pressed("draw"):
		var pencil = preload("res://Scenes/Pencil.tscn").instance()
		add_child(pencil)
		
func on_finished():
	print("Animation finished")



func _on_HomeButton_pressed():
	get_tree().change_scene("res://Scenes/LearnMode.tscn")
	pass # Replace with function body.
