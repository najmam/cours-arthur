extends Node2D	

var width = ProjectSettings.get_setting("display/window/size/viewport_width")
var height = ProjectSettings.get_setting("display/window/size/viewport_height")
# Called when the node enters the scene tree for the first time.

func _ready():


	$player.position.x = width/2
	$player.position.y = height/2
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):

	if $player.position.x >= width/2 && $player.position.y >= height/10:
		$player.position.y = $player.position.y -1
	if $player.position.y <= height/10 && $player.position.x >= width/2 && $player.position.x <= width/18*17:
		$player.position.x = $player.position.x +2
		
		
#		SERENDIPITY FTW
#	if $player.position.x <= width/2:
#		$player.position.y = $player.position.y -1
#	if $player.position.x == width:
#		$player.position.y = $player.position.y +1
#	if $player.position.y <= 0:
#		$player.position.x = $player.position.x +2
#	if $player.position.y >= height/2:
#		$player.position.x = $player.position.x -2
		
