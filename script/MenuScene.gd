extends Node2D
var infoPopupmenu
var settingPopupmenu

func _ready():
	infoPopupmenu = get_node("infoPopupMenu")
	settingPopupmenu = get_node("settingPopupMenu2")
	pass 




func _on_PlayButton_pressed():
	get_tree().change_scene('res://Scenes/CategoryScene.tscn')
	pass # Replace with function body.


func _on_infoButton_pressed():
	infoPopupmenu.show()
	pass # Replace with function body.

func _on_SettingButton_pressed():
	settingPopupmenu.show()
	pass # Replace with function body.
	
func _on_closeButton_pressed():
	settingPopupmenu.hide()
	infoPopupmenu.hide()
	pass # Replace with function body.



