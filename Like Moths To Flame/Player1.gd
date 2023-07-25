extends CharacterBody2D


#speed
@export var speed = 200
var tempspeed = speed
var accel = 50

var playerID = 1
var state = "normal"
var canberevived = false
var revivetimer = 3
var reviveimmunity = 0

#weaponstats
var bulletdamage = 20
var firedelay = 0
var knockback = 60

func _physics_process(delta):
	var embers = get_parent().get_parent().embers
	if reviveimmunity > 0:
		reviveimmunity -= delta

		if reviveimmunity < 0:
			reviveimmunity = 0
	if state == "normal" or state == "vulnerable":
		var dir = Input.get_vector("P1left","P1right","P1up","P1down")
		if Input.is_action_pressed("P1right"):
			if dir.y != 0:
				tempspeed /= 1.4
				
			velocity.x = min(velocity.x + accel, tempspeed)
			tempspeed = speed
		elif Input.is_action_pressed("P1left"):
			if dir.y != 0:
				tempspeed /= 1.4

			velocity.x = max(velocity.x - accel, -tempspeed)
			tempspeed = speed
		else:
			velocity.x = lerp(velocity.x,0.0,0.2)
		if Input.is_action_pressed("P1down"):
			velocity.y = min(velocity.y + accel, tempspeed)
		elif Input.is_action_pressed("P1up"):
			velocity.y = max(velocity.y - accel, -tempspeed)
		else:
			velocity.y = lerp(velocity.y,0.0,0.2)
		move_and_slide()
		if embers <= 0:
			state = "vulnerable"
		get_parent().get_node("WeaponHit").set_rotation(self.get_angle_to(get_global_mouse_position()))
		get_parent().get_node("WeaponHit").set_position(self.get_position())
		if Input.is_action_pressed("Click"):
			if firedelay <= 0:
				shoot()
		if firedelay > 0:
			firedelay -= delta
		
	if state == "vulnerable":
		pass
	if state == "downed":
		$hitbox.disabled = true
		$ReviveBox/CollisionShape2D.disabled = false
		if canberevived == true:
			if Input.is_action_pressed("p2res"):
				revivetimer -= delta
			else:
				revivetimer = 3
			if revivetimer <= 0:
				if embers > 0:
					state = "normal"
				else:
					state = "vulnerable"
				$hitbox.disabled = false
				$ReviveBox/CollisionShape2D.disabled = true
				reviveimmunity = 1.5

func _on_revive_box_body_entered(body):
	if body is CharacterBody2D:
		canberevived = true





func _on_revive_box_body_exited(body):
	if body is CharacterBody2D:
		canberevived = false


func shoot():
	var collider = get_parent().get_node("WeaponHit").get_collider()
	var collisionpoint = get_parent().get_node("WeaponHit").get_collision_point()
	if collider != null:
		if collider.has_method("get_hit"):
			var Playerpoint = self.get_global_position()
			collider.get_hit(bulletdamage, knockback,Playerpoint,collisionpoint)
	firedelay = 0.2
