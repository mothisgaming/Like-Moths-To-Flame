extends CharacterBody2D

var damagenumbers = preload("res://fucking font hell.tscn")

var stundur = 0
var numbersspawned = 0
var durationmult = 1
var enemydamage = 20 + (8*durationmult)
var speed = 20
var active = true
#targeting
var NodeToCheck
var Player1
var Player2
var unknownPlayer
var unknownPlayer2
var target
var stayTargeted = false
var attention = 0.1
var PlayersInRange: Array
var charactersinrange = 0
var canseenode = false
var takingkb = false
var health = 200 + (5*durationmult)
var CurrentDOTdamage:int
var igniteTimer = 0
var DOTupdate = 0
#pathfinding
var state = "wander"

func _physics_process(delta):
	if active == true:
		if charactersinrange > 0:
			if unknownPlayer2 != null and unknownPlayer != null:
				if self.get_global_position().distance_to(unknownPlayer.global_position) < self.get_global_position().distance_to(unknownPlayer2.global_position):
					NodeToCheck = unknownPlayer
					canseenode = false
					CanSee(NodeToCheck)
					if canseenode == true:
						target = unknownPlayer
					else:
						NodeToCheck = unknownPlayer2
						CanSee(NodeToCheck)
						if canseenode == true:
							target = unknownPlayer2
						else:
							target = null
				else:
					canseenode = false
					NodeToCheck = unknownPlayer2
					CanSee(NodeToCheck)
					if canseenode == true:
						target = unknownPlayer2
					else:
						NodeToCheck = unknownPlayer
						CanSee(NodeToCheck)
						if canseenode == true:
							target = unknownPlayer
						else:
							target = null
			else:
				if unknownPlayer2 != null:
					canseenode = false
					NodeToCheck = unknownPlayer2
					CanSee(NodeToCheck)
					if canseenode == true:
						target = unknownPlayer2
					else:
						target = null
				elif unknownPlayer != null:
					canseenode = false
					NodeToCheck = unknownPlayer
					CanSee(NodeToCheck)
					if canseenode == true:
						target = unknownPlayer
					else:
						target = null
			if target != null:
				if not PlayersInRange.has(target.playerID):
					PlayersInRange.append(target.playerID)
				stayTargeted = true
		if target == null:
			stayTargeted = false
		if stayTargeted == true:
			state = "alerted"
			attention = 0.5
		if attention > 0:
			attention -= 0.016666
		if stundur > 0:
			stundur -= 0.0166666
			if stundur < 0:
				takingkb = false
		if target is CharacterBody2D and attention > 0 and state == "alerted":
			
			if PlayersInRange.has(1) and target == Player1:
				$NavigationAgent2D.set_target_position(target.global_position)
			if PlayersInRange.has(2) and target == Player2:
				$NavigationAgent2D.set_target_position(target.global_position)
		if $NavigationAgent2D.is_navigation_finished() != true and stundur <= 0:
			if target != null:
				$VisionCone.set_rotation(get_angle_to(target.global_position))
			velocity += ($NavigationAgent2D.get_target_position() - self.get_position()).normalized() * speed
			velocity.x = lerp(velocity.x,0.0,0.2)
			velocity.y = lerp(velocity.y,0.0,0.2)
			print("a")
		if attention <= 0 and $NavigationAgent2D.is_navigation_finished() == true and takingkb == false:
			target = null
			state = "wander"
			velocity.x = lerp(velocity.x,0.0,0.2)
			velocity.y = lerp(velocity.y,0.0,0.2)
		move_and_slide()
		if igniteTimer > 0 and DOTupdate == 0:
			DOTupdate = 1
		if DOTupdate > 0:
			DOTupdate -= delta
		if DOTupdate < 0 and igniteTimer > 0:
			DOTUpdate()
			DOTupdate = 1



func _on_area_2d_body_entered(body):
	if body is CharacterBody2D:
		if body.playerID == 1:
			Player1 = body
		elif body.playerID == 2:
			Player2 = body
		
		if unknownPlayer != null:
			unknownPlayer2 = body
		else:
			unknownPlayer = body
		charactersinrange += 1


func _on_area_2d_body_exited(body):
	if body is CharacterBody2D:
		charactersinrange -= 1
		PlayersInRange.erase(body.playerID)
	if charactersinrange == 0:
		stayTargeted = false
	if body == unknownPlayer:
		unknownPlayer = null
	elif body == unknownPlayer2:
		unknownPlayer2 = null


func CanSee(NodeToCheck):
	var canSee = PhysicsRayQueryParameters2D.create(self.get_global_position(),NodeToCheck.global_position)
	canSee.exclude = [self]
	var result = get_world_2d().direct_space_state.intersect_ray(canSee)
	if not result.is_empty():
		if result.collider is CharacterBody2D:
			canseenode = true



func _on_hurtbox_body_entered(body):
	if active == true:
		if body is CharacterBody2D:
			if body.get_parent().get_parent().has_method("take_damage"):
				if body.reviveimmunity == 0:
					if body.get_parent().get_parent().embers <= 0:
						body.state = "downed"
					body.get_parent().get_parent().take_damage(enemydamage)
					print(enemydamage)
					#player knockback here
					#like seriously thats important you need to do that
					#get off your ass 
					#body.velocity = -body.velocity

func get_hit(damage,knockback,Playerpoint,collisionpoint):
	if active == true:
		print(collisionpoint - self.get_global_position())
		takingkb = true
		var dirtolaunchCall = self.get_global_position() - Playerpoint
		var dirtolaunch = Vector2.ZERO
		if dirtolaunchCall.x > 0:
			dirtolaunch.x = 1
		elif dirtolaunchCall.x < 0:
			dirtolaunch.x = -1
		else: dirtolaunch.x = 0
		if dirtolaunchCall.y > 0:
			dirtolaunch.y = 1
		elif dirtolaunchCall.y < 0:
			dirtolaunch.y = -1
		else: dirtolaunch.y = 0
		print(dirtolaunch)
		if collisionpoint != Vector2.ZERO:
			velocity = dirtolaunch * knockback
		else:
			velocity = dirtolaunch * knockback
		stundur = 0.3
		health -= damage
		var text = damagenumbers.instantiate()
		text.amount = damage
		add_child(text)
		text.reparent(get_parent())
		if health <= 0:
			await call_deferred("die")

func die():
	active = false
	$Hurtbox/CollisionShape2D.disabled = true

func ignite(ignitestrength,igniteduration):
	if igniteTimer > 0:
		CurrentDOTdamage += ignitestrength
	else:
		CurrentDOTdamage = ignitestrength
	igniteTimer = igniteduration


func DOTUpdate():
	igniteTimer -= 1
	health -= CurrentDOTdamage
	var text = damagenumbers.instantiate()
	text.isfire = true
	text.amount = CurrentDOTdamage
	add_child(text)
	text.reparent(get_parent())
	print("ow i am on fire")
	if health <= 0:
		die()
	if takingkb == false:
		velocity = Vector2.ZERO
