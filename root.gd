extends Node2D

var width = ProjectSettings.get_setting("display/window/size/viewport_width")
var height = ProjectSettings.get_setting("display/window/size/viewport_height")
var y_threshold_min = height/10
var y_threshold_max = height - y_threshold_min
var x_threshold_min = y_threshold_min
var x_threshold_max = width - x_threshold_min
const SPEED = 3

var step = 1
var speed_x
var speed_y

func _ready():
	$player.position.x = width/2
	$player.position.y = height/2

func _process(_delta):
	if step == 1:
		speed_x = 0
		speed_y = -SPEED
		# J'utilise "<=" ici parceque si je ne le fais pas,
		# position.y oscillera de part et d'autre du seuil.
		# J'avais pas spécialement anticipé ça.
		if $player.position.y <= y_threshold_min:
			step += 1
	elif step == 2:
		speed_x = SPEED
		speed_y = 0
		if $player.position.x > x_threshold_max:
			step += 1
			speed_x = -SPEED
			speed_y = SPEED
	elif step == 3:
		if $player.position.x < x_threshold_min or $player.position.x > x_threshold_max:
			speed_x = -speed_x
		if $player.position.y < y_threshold_min or $player.position.y > y_threshold_max:
			speed_y = -speed_y

	$player.position.x += speed_x
	$player.position.y += speed_y
