extends Node2D

var defaultmaxembers = 100000000
var embers = defaultmaxembers


func _process(delta):
	if $Player1Parent/Player1.state == "downed" and $Player2Parent/Player2.state == "downed":
		pass
		#death script here


func take_damage(enemydamage):
	embers -= enemydamage
	if embers < 0:
		embers = 0
