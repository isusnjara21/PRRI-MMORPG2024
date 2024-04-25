extends Control

var TileInstance = preload("res://panels/tile.tscn")

var g_AssetPath = "ASSET PATH NOT SELECTED"
var g_Materials: Dictionary = {}

var g_TileSize = 32

var g_SelectedTexture = null
var g_SelectedTextureName = ""

var g_EditorVersion = "1"

var g_MapSize: Vector2 = Vector2( 0, 0 )

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func change_map_size(size: Vector2):
	g_MapSize = size
	var width = size.x
	var height = size.y
	
	%Layer.set_size( Vector2( g_TileSize * width, g_TileSize * height ) )
	for child in %Layer.get_children():
		%Layer.remove_child(child)
	
	for y in range( 0, height ):
		for x in range( 0, width ):
			var newTile = TileInstance.instantiate()
			newTile.name = str( (y * width) + x )
			%Layer.add_child(newTile)
			newTile.set_size( Vector2( g_TileSize, g_TileSize ) )
			newTile.set_position( Vector2( x * g_TileSize, y * g_TileSize ) )

func _on_file_assets_loaded():
	var itemList: ItemList = $VBoxContainer/GridContainer/ScrollContainer/MaterialList
	itemList.clear()
	
	for name in g_Materials.keys():
		itemList.add_item( name, g_Materials[name] )
		print( name )


func _on_item_list_item_selected(index):
	var materialList = $VBoxContainer/GridContainer/ScrollContainer/MaterialList
	if( materialList.get_selected_items().is_empty() ):
		return
		return
	var matName = materialList.get_item_text(index)
	g_SelectedTexture = g_Materials[matName]
	g_SelectedTextureName = matName

func _on_save_file_save_file(filename: String):
	var savePath = g_AssetPath + "/maps"
	var filePath = savePath + "/" + filename + ".map"
	
	var dir := DirAccess.open(savePath)
	if( not dir ):
		DirAccess.make_dir_recursive_absolute(savePath)
		dir = DirAccess.open(savePath)
		if( not dir ):
			return

	var map: Dictionary = {}
	map["editor_version"] = g_EditorVersion
	map["size"] = g_MapSize
	map["layers"] = {}
	
	if( g_MapSize != Vector2( 0, 0 ) ):
		map["layers"]["tiles_1"] = {}
		
		for tile in %Layer.get_children():
			if( tile.texture == null ):
				continue
			
			if( tile.m_Material == null ):
				continue
			
			var coord = Vector2(tile.position.x / g_TileSize, tile.position.y / g_TileSize)
			print(coord)
			map["layers"]["tiles_1"][coord] = tile.m_Material

	var file = FileAccess.open(filePath, FileAccess.WRITE)
	file.store_line( JSON.stringify(map) )
	file.close()