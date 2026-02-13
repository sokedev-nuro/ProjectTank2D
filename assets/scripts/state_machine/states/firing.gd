extends State

@export
var reloading: State

var is_complete: bool = false

func enter() -> void:
	is_complete = false
	super()
	is_complete = true
