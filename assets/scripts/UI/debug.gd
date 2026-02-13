extends PanelContainer

@onready
var property_container = $VBoxContainer

var property
var frames_per_second: String

func _ready():
	Global.debug = self
	
	visible = false
	
func _process(delta: float):
	
	if visible:
		frames_per_second = "%.2f" % (1.0/delta)
		add_debug_property("FPS", frames_per_second, 0)
		
func _input(event: InputEvent):
	if event.is_action_pressed("debug"):
		visible = !visible

func add_debug_property(title: String, value, order):
	var target
	target = property_container.find_child(title, true, false)
	if !target:
		target = Label.new()
		property_container.add_child(target)
		target.name = title
		target.text = target.name + ": " + str(value)
	elif visible:
		target.text = title + ": " + str(value)
		property_container.move_child(target, order)
	
	
	
