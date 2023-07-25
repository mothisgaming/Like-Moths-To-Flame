extends CharacterBody2D

var playerID = 2

@export var speed = 200
var tempspeed = speed
var totalvel = 200
var accel = 50
var knockback = 300
var ignitestrength = 6
var igniteduration = 3
var damage = 20
var swingduration:float = 0.3

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
		else:
			velocity.x = lerp(velocity.x,0.0,0.2)
		if Input.is_action_pressed("P2down"):
			velocity.y = min(velocity.y + accel, tempspeed)
			if dir.x == 0:
				currentDirection = "down"
		elif Input.is_action_pressed("P2up"):
			velocity.y = max(velocity.y - accel, -tempspeed)
			if dir.x == 0:
				currentDirection = "up"
		else:
			velocity.y = lerp(velocity.y,0.0,0.2)
		move_and_slide()
		if embers <= 0:
			state = "vulnerable"
		if Input.is_action_just_pressed("p2attack") and currentswingduration <= 0:
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
