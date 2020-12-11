extends Control

onready var http : HTTPRequest = $HTTPRequest
onready var nickname : LineEdit = $Container/VBoxContainer2/Name/LineEdit
onready var age : LineEdit = $Container/VBoxContainer2/Age/LineEdit
onready var notification : Label = $Container/Notification


var new_profile := false
var information_sent := false
var profile := {
	"nickname": {},
	"age": {},
	
} setget set_profile


func _ready() -> void:
	Firebase.get_document("users/%s" % Firebase.user_info.id, http)


func _on_HTTPRequest_request_completed(result: int, response_code: int, headers: PoolStringArray, body: PoolByteArray) -> void:
	var result_body := JSON.parse(body.get_string_from_ascii()).result as Dictionary
	match response_code:
		404:
			notification.text = "Please, enter your information"
			new_profile = true
			return
		200:
			if information_sent:
				notification.text = "Information saved successfully"
				yield(get_tree().create_timer(2.0), "timeout")
				get_tree().change_scene("res://Scenes/MenuScene.tscn")
				information_sent = false
			self.profile = result_body.fields
			


func _on_ConfirmButton_pressed() -> void:
	if nickname.text.empty() or age.text.empty():
		notification.text = "Please, enter your nickname and age"
		return
	profile.nickname = { "stringValue": nickname.text }
	profile.age = { "stringValue": age.text }
	
	match new_profile:
		true:
			Firebase.save_document("users?documentId=%s" % Firebase.user_info.id, profile, http)
		false:
			Firebase.update_document("users/%s" % Firebase.user_info.id, profile, http)
	information_sent = true


func set_profile(value: Dictionary) -> void:
	profile = value
	nickname.text = profile.nickname.stringValue
	age.text = profile.age.stringValue
	
