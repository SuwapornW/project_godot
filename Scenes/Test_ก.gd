extends Node2D
var popUpScore
var score 
onready var anim_player = get_node("AnimationPlayer")

func _ready():
	anim_player.connect("finished",self,"on_finished")
	anim_player.play("Draw")
	popUpScore = get_node("PopupScore")
	score = 0
	pass
	
func _process(delta):
	if Input.is_action_just_pressed("draw"):
		var pencil = preload("res://Scenes/Pencil.tscn").instance()
		add_child(pencil)
		
func on_finished():
	print("Animation finished")


func _on_homeButton_pressed():
	get_tree().change_scene("res://Scenes/LearnMode.tscn")
	pass # Replace with function body.

func score():
	score +=10
	if score >= 100:
		score = 100
	print(score)


func _on_test1_mouse_entered():
	score()

func _on_test2_mouse_entered():
	score()

func _on_test3_mouse_entered():
	score()
	
func _on_test4_mouse_entered():
	score()

func _on_test5_mouse_entered():
	score()

func _on_test6_mouse_entered():
	score()

func _on_test7_mouse_entered():
	score()

func _on_test8_mouse_entered():
	score()

func _on_test9_mouse_entered():
	score()

func _on_test10_mouse_entered():
	score()


func _on_FinishButt_pressed():
	$AnimationPlayer/Sprite.hide()
	popUpScore.show()
	anim_player.stop()
	get_node("PopupScore/Score").text = String(score)
	pass 
	
	




func _on_ReplayButton_pressed():
	get_tree().reload_current_scene()
	pass # Replace with function body.


func _on_CloseButton_pressed():
	popUpScore.hide()
	pass # Replace with function body.
