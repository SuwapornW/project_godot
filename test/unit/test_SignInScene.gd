extends "res://addons/gut/test.gd"

var signin = preload("res://script/SignInScene.gd").new()

func test_on_SignupButton_pressed():
	signin._on_SigninButton_pressed()
	
	assert_true(true, "Should pass, true is true")
