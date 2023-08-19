extends Node2D

export var flip_blood = false

func _ready():
	var material: ParticlesMaterial = $Particles2D_Blood.process_material
	
	if (flip_blood):
		material.direction.x = material.direction.x *-1
