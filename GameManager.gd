extends Spatial


var song_instance = preload("res://Scenes/Song.tscn")
var song

func _ready():
	
	#Init Menu Instance
	
	song = song_instance.instance()
	add_child(song)

func _process(delta):
	
	if Input.is_action_just_pressed("ui_up"):
		song.queue_free()
		
	if Input.is_action_just_pressed("ui_down"):
		song = song_instance.instance()
		add_child(song)
	
#Listen to signal from menu to spawn instance
