extends Node2D

@export var timer: Timer
@export var planetas: Node2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	var progreso = timer.time_left / timer.wait_time
	
	planetas.rotation = progreso * 2 * PI
	
	for planeta in planetas.get_children():
		planeta.rotation=progreso * 2 * PI * 4
		
	
