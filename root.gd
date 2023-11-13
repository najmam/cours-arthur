extends Node2D	

var islooped = true
var width = ProjectSettings.get_setting("display/window/size/viewport_width")
var height = ProjectSettings.get_setting("display/window/size/viewport_height")
# Called when the node enters the scene tree for the first time.

func _ready():


	$player.position.x = width/2
	$player.position.y = height/2
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):

	if islooped == true:
		if  $player.position.y >= height/10:
			$player.position.y = $player.position.y -1
		if  $player.position.y <= height/10 && $player.position.x <= width/18*17:
			$player.position.x = $player.position.x +2
			#At the end of first path, ignore what's up there ^
		if  $player.position.x >= width/18*17:
			islooped = false
			print("isokay")
#
	if islooped == false:
		if  $player.position.x <= width/18*17:
			$player.position.x = $player.position.x +1
		if  $player.position.x >= width/18:
			$player.position.x = $player.position.x -1
		if  $player.position.y >= height/10:
			$player.position.y = $player.position.y -1
		if  $player.position.y <= height/10*9:
			$player.position.y = $player.position.y +1
