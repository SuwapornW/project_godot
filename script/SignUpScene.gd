extends Node2D

onready var http : HTTPRequest = $HTTPRequest
onready var username : LineEdit = $Username
onready var password : LineEdit = $Password
onready var confirm : LineEdit = $Confirm
onready var notification : Label = $Notification

func _on_HTTPRequest_request_completed(result: int, response_code: int, headers: PoolStringArray, body: PoolByteArray) -> void:
	var response_body := JSON.parse(body.get_string_from_ascii())
	if response_code != 200:
		notification.text = response_body.result.error.message.capitalize()
	else:
		notification.text = "Registration sucessful!"
		yield(get_tree().create_timer(2.0), "timeout")
		get_tree().change_scene("res://Scenes/SignInScene.tscn")


func _on_TextureButton_pressed():
	if password.text != confirm.text or username.text.empty() or password.text.empty():
		notification.text = "Invalid password or username"
		return
	Firebase.register(username.text, password.text, http)


func _on_TextureButton2_pressed():
	get_tree().change_scene('res://Scenes/SignInScene.tscn')
