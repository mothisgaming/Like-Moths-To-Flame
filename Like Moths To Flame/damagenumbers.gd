extends Control

@onready var numbers = $numbers

var vel = Vector2.ZERO
var amount = 0
var iscrit = false
var isfire = false
func _ready():
	numbers.set_text(str(amount))
	if iscrit == true:
		numbers.add_theme_color_override("default_color",Color("ff8236"))
		numbers.add_text("!")
	if isfire == true:
		numbers.add_theme_color_override("default_color",Color("ff8236"))
		pass
	vel = Vector2(0.0,60.0)
	
	
	
func _process(delta):
	position -= vel * delta

func _on_stopmovement_timeout():
	vel = Vector2.ZERO


func _on_delete_timeout():
	queue_free()





func _on_tree_exited():
	var imdyingow = true
