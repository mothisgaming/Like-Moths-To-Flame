extends CharacterBody2D


#speed
@export var speed = Global.speed
var tempspeed = speed
var accel = speed/4

var playerID = 1
var state = "normal"
var canberevived = false
var revivetimer = 3
var reviveimmunity = 0
var kbduration = 0.2
#weaponstats
var bulletdamage = Global.GunDamage
var firedelay:float
var knockback = 0.4

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
		if Input.is_action_pressed("P1down"):
			velocity.y = min(velocity.y + accel, tempspeed)
		elif Input.is_action_pressed("P1up"):
			velocity.y = max(velocity.y - accel, -tempspeed)
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
	if state == "knockedback":
		kbduration -= delta
		if kbduration < 0:
			kbduration = 0
			if embers > 0:
				state = "normal"
			elif embers == 0: state = "vulnerable"
			
	velocity.x = lerp(velocity.x,0.0,0.2)
	velocity.y = lerp(velocity.y,0.0,0.2)
	move_and_slide()
func _on_revive_box_body_entered(body):
	if body is CharacterBody2D:
		canberevived = true
func _on_revive_box_body_exited(body):
	if body is CharacterBody2D:
		canberevived = false


func take_damage(enemydamage,enemypos):

	var kbtoapply = Vector2(1,1)
	var midpoint:float
	var percenttomidpoint:float
	var angletolaunch = atan2(self.get_global_position().y - enemypos.y,self.get_global_position().x - enemypos.x)
	if angletolaunch <= PI and angletolaunch >= PI/2:
		midpoint = (3 * PI)/4 
		percenttomidpoint = (angletolaunch - midpoint)/(PI/4) * 100
		kbtoapply.x = -kbtoapply.x
	elif angletolaunch >= -PI and angletolaunch <= -PI/2:
		midpoint = -(3 * PI)/4 
		percenttomidpoint = (angletolaunch - midpoint)/(-PI/4) * 100
		kbtoapply.x = -kbtoapply.x
		kbtoapply.y = -kbtoapply.y
	elif angletolaunch <= 0 and angletolaunch >= -PI/2:
		midpoint = -PI/4
		percenttomidpoint = (angletolaunch - midpoint)/(PI/4)*100
		kbtoapply.y = -kbtoapply.y
	elif angletolaunch >= 0 and angletolaunch <= PI/2:
		midpoint = PI/4
		percenttomidpoint = (angletolaunch - midpoint)/(PI/4)*100
	kbtoapply.x *= 100 - percenttomidpoint
	kbtoapply.y *= 100 + percenttomidpoint
	print(kbtoapply)
	if state != "downed":
		velocity = kbtoapply * 2
		state = "knockedback"
		kbduration = 0.2
	get_parent().get_parent().embers -= enemydamage
	if get_parent().get_parent().embers < 0:
		get_parent().get_parent().embers = 0

func shoot():
	var collider = get_parent().get_node("WeaponHit").get_collider()
	var collisionpoint = get_parent().get_node("WeaponHit").get_collision_point()
	if collider != null:
		if collider.has_method("get_hit"):
			var Playerpoint = self.get_global_position()
			collider.get_hit(bulletdamage, knockback,Playerpoint,collisionpoint)
	firedelay = Global.FireDelay
