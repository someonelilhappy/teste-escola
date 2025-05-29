extends CharacterBody2D


const MOVESPEED = 1500

func _physics_process(delta: float) -> void:
	var horizontal = Input.get_axis("ui_left","ui_right")
	var vertical = Input.get_axis("ui_up","ui_down")
	
	position.x+=horizontal*MOVESPEED*delta
	position.y+=vertical*MOVESPEED*delta
	
	move_and_slide()
