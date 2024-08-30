extends Control


func _on_demo_01_button_pressed() -> void:
	Global.change_scene("res://game-01/main.tscn")


func _on_demo_02_button_pressed() -> void:
	Global.change_scene("res://game-02/main.tscn")
