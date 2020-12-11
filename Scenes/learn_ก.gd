extends Node2D
var mydialog = ["ยินดีต้อนรับเข้าสู่บทเรียน เรามาฝึกอ่านออกเสียง ก ไก่ กันเถอะ"]
var dialogpage = 0
onready var RichText = get_node("Polygon2D/RichTextLabel")
onready var anim_player = get_node("AnimationPlayer")
onready var anim_player2 = get_node("AnimationPlayer2")

func _ready():
	RichText.set_bbcode(mydialog[dialogpage])
	RichText.set_visible_characters(0)
	
	anim_player.connect("finished",self,"on_finished")
	anim_player.play("rotate")
	anim_player2.connect("finished",self,"on_finished")
	anim_player2.play("stretch")
	pass # Replace with function body.

func on_finished():
	print("Animation finished")



func _on_Area2D2_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed() :
			if RichText.get_visible_characters() > RichText.get_total_character_count():
				if dialogpage < mydialog.size()-1:
					dialogpage+=1
					RichText.set_bbcode(mydialog[dialogpage])
					RichText.set_visible_characters(0)
			else:
				RichText.set_visible_characters(RichText.get_total_character_count())
	pass # Replace with function body.


func _on_Timer_timeout():
	RichText.set_visible_characters(RichText.get_visible_characters()+1)
	pass # Replace with function body.


func _on_TextureButton_pressed():
	get_tree().change_scene("res://Scenes/Test_ก.tscn")
	pass # Replace with function body.
