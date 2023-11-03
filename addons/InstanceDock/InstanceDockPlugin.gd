@tool
extends EditorPlugin

var dock: Control

func _enter_tree():
	dock = preload("res://addons/InstanceDock/InstanceDock.tscn").instantiate()
	dock.plugin = self
	#add_control_to_dock(EditorPlugin.DOCK_SLOT_LEFT_UR, dock)
	add_control_to_bottom_panel(dock, "Instance Dock")

func _exit_tree():
	#remove_control_from_docks(dock)
	remove_control_from_bottom_panel(dock)
	dock.free()
