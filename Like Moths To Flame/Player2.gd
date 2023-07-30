extends CharacterBody2D

var playerID = 2

var speed = Global.speed
var tempspeed = speed
var accel = speed/4
var knockback = 1.2
var ignitestrength = Global.IgniteDamage
var igniteduration = Global.IgniteDuration
var damage = Global.MeleeDamage
var swingduration:float = Global.swingspeed
var kbduration = 0.2
var state = "normal"


var canberevived = false
var revivetimer = 1
var reviveimmunity = 0

var currentDirection:String
var attackdirection:float
var currentswingduration:float = 0
var collisionpoint = Vector2.ZERO

func _physics_process(delta):
	var embers = get_parent().get_parent().embers
	if reviveimmunity > 0:
		reviveimmunity -= delta
		if reviveimmunity < 0:
			reviveimmunity = 0
	if state == "normal" or state == "vulnerable":
		var dir = Input.get_vector("P2left","P2right","P2up","P2down")
		if Input.is_action_pressed("P2right"):
			if dir.y != 0:
				tempspeed /= 1.4
			currentDirection = "right"
			velocity.x = min(velocity.x + accel, tempspeed)
			tempspeed = speed
		elif Input.is_action_pressed("P2left"):
			if dir.y != 0:
				tempspeed /= 1.4
			currentDirection ="left"
			velocity.x = max(velocity.x - accel, -tempspeed)
			tempspeed = speed
		if Input.is_action_pressed("P2down"):
			velocity.y = min(velocity.y + accel, tempspeed)
			if dir.x == 0:
				currentDirection = "down"
		elif Input.is_action_pressed("P2up"):
			velocity.y = max(velocity.y - accel, -tempspeed)
			if dir.x == 0:
				currentDirection = "up"
		if embers <= 0:
			state = "vulnerable"
		if Input.is_action_pressed("p2attack") and currentswingduration <= 0:
			swing(dir)

		if currentswingduration > 0:
			$MeleeWeapon/MeleeHitboxBase/CollisionShape2D.disabled = false
			$MeleeWeapon/MeleeHitboxTip/CollisionShape2D.disabled = false
			var updatesneeded = 60 * swingduration
			currentswingduration -= delta
			$MeleeWeapon.set_rotation($MeleeWeapon.get_rotation() + PI/updatesneeded * attackdirection)
			if currentswingduration < 0:
				$MeleeWeapon/MeleeHitboxBase/CollisionShape2D.disabled = true
				$MeleeWeapon/MeleeHitboxTip/CollisionShape2D.disabled = true

	if state == "vulnerable":
		pass
	if state == "downed":
		$MeleeWeapon/MeleeHitboxBase/CollisionShape2D.disabled = true
		$MeleeWeapon/MeleeHitboxTip/CollisionShape2D.disabled = true
		
		$hitbox.disabled = true
		$ReviveBox/CollisionShape2D.disabled = false
		if canberevived == true:
			if Input.is_action_pressed("p1res"):
				revivetimer -= delta
			else:
				revivetimer = 1
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



func _on_melee_hitbox_base_body_entered(body):
	if body is CharacterBody2D:
		if body.has_method("get_hit"):
			var Playerpoint = self.get_global_position()
			body.get_hit(damage,knockback,Playerpoint,collisionpoint)
func _on_melee_hitbox_tip_body_entered(body):
	if body is CharacterBody2D:
		if body.has_method("ignite"):
			body.ignite(ignitestrength,igniteduration)

func swing(dir):
	if currentDirection == "left" or currentDirection == "right":
		$MeleeWeapon.set_rotation(deg_to_rad(180))
		attackdirection = dir.x
		if dir.x == 0:
			attackdirection = 1
	if currentDirection == "up" or currentDirection == "down":
		$MeleeWeapon.set_rotation(deg_to_rad(90))
		attackdirection = -dir.y
		if dir.y == 0:
			attackdirection = 1
	currentswingduration = swingduration

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
