class_name Player extends CharacterBody2D

@export
var maxHP: float = 100.0
@export
var currentHP: float = maxHP:
	set(value):
		currentHP = maxHP
		if currentHP <= 0.0:
			pass

func _process(delta):
	Global.debug.add_debug_property("Max HP", maxHP, 1)
