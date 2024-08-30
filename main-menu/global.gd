extends Node

const MAIN_SCENE_PATH: String = "res://main-menu/main.tscn"
var current_scene: Node

func _ready() -> void:
	var root = get_tree().root
	current_scene = root.get_child(root.get_child_count() - 1)


func change_scene(path: String) -> void:
	call_deferred("_deferred_change_scene", path)
	

func _deferred_change_scene(path: String) -> void:
	current_scene.free()
	var scene_resource: PackedScene = ResourceLoader.load(path)
	current_scene = scene_resource.instantiate()
	get_tree().root.add_child(current_scene)
	get_tree().current_scene = current_scene


func _input(event: InputEvent) -> void:
	if event is not InputEventKey:
		return
	if event.physical_keycode != KEY_ESCAPE:
		return
	if not event.is_released():
		return
	if not current_scene:
		return
	if current_scene.scene_file_path == MAIN_SCENE_PATH:
		return
	change_scene(MAIN_SCENE_PATH)
