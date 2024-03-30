@tool

extends EditorPlugin


func _enter_tree():
	print("AdvancedControls plugin loading...")
	add_custom_type("ButtonValueToggle", "Button", preload("./Button/ButtonValueToggle.gd"), preload("./res/icon_button.png"))
	add_custom_type("OptionButtonValueSelect", "OptionButton", preload("./Button/OptionButtonValueSelect.gd"), preload("./res/icon_button.png"))
	add_custom_type("LabelFPS", "Label", preload("./Label/LabelFPS.gd"), preload("./res/icon_button.png"))


func _exit_tree():
	print("AdvancedControls plugin unloading...")
	remove_custom_type("ButtonValueToggle")
	remove_custom_type("OptionButtonValueSelect")
	remove_custom_type("LabelFPS")

