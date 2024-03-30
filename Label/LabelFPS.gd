extends Label

##
## Label that shows current FPS
##
##

## How often to update the value
@export var refresh_interval = 1.0

## Show lowest frame time
@export var show_low = true

# used to 
var _refresh_limit_counter = 0

# used to calculate lowest fps during interval 
var _max_delta = 0.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if delta > _max_delta:
		_max_delta = delta
	_refresh_limit_counter += delta
	
	if _refresh_limit_counter >= refresh_interval:
		_refresh_limit_counter -= refresh_interval
		
		text = str(Engine.get_frames_per_second()).lpad(4)
		if show_low and _max_delta > 0:
			text += " / %4d" % int(1.0/_max_delta)
		
		_max_delta = 0.0
