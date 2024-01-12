extends Camera2D

# Per the tutorial
#@export var tilemap: TileMap  #And then you'd do the thing
# Called when the node enters the scene tree for the first time.
func _ready():
	var tile_map = get_node("/root/World/tile_map")
	var visibleArea = tile_map.get_used_rect();
	var tileSize = tile_map.cell_quadrant_size;
	var upperLeftCorner = visibleArea.position * tileSize;
	var lowerRightCorner = (visibleArea.position + visibleArea.size) * tileSize;
	
	limit_left = tile_map.position.x + upperLeftCorner.x;
	limit_top = tile_map.position.y + upperLeftCorner.y;
	limit_right = tile_map.position.x + lowerRightCorner.x;
	limit_bottom = tile_map.position.y + lowerRightCorner.y;
	
	#Per the tutorial (with zero'd upper left corner)
	#var mapRect = tilemap.get_used_rect()
	#var tileSize = tilemap.cell_quadrant_size
	#var worldSizeInPixels = mapRect.Size * tileSize
	#limit_right = worldSizeInPixels.x
	#limit_bottom = worldSizeInPixels.y

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
