GDPC                                                                                          X   res://.godot/exported/133200997/export-1b35751276ee8b9ea7b698dd33a0d19b-size_menu.scn   �	      F      �TL�����Q� �T�Z|    P   res://.godot/exported/133200997/export-3070c538c03ee49b7677ff960a3f5195-main.scn�I            M�@�����Q� /q    P   res://.godot/exported/133200997/export-80a2d35f286fdbe396bed658256a3b0a-tile.scn@      �      Lŧk��q�r�~Ӑ4�    X   res://.godot/exported/133200997/export-d0b8fe2f8f40e9c1115a9f26ea38f368-save_file.scn           �	      
�Du�Ƴ�qC��~U    ,   res://.godot/global_script_class_cache.cfg  `Z            vZl��2�+�LQ�9�]    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex /      �      �̛�*$q�*�́        res://.godot/uid_cache.bin  0_      �       �ι"�D;('a��]��       res://Layers.gd �<            g]�L�SP��P�       res://icon.svg  p[      �      C��=U���^Qu��U3       res://icon.svg.import   �;      �       �r,�) �[���J=U�       res://main.gd   �?      �	      �q��Ŵ#��@�]�4.       res://main.tscn.remap   �Y      a       �J�Sw� ������    $   res://panels/save_file.tscn.remap   �X      f       rHjV��rf��	    $   res://panels/size_menu.tscn.remap   Y      f       ߗ��O	��X|6�0�       res://panels/tile.gd@      �      X�!�`!�.x�       res://panels/tile.tscn.remap�Y      a       3���hϾ�.��6��       res://project.binary�_      +      l���D�``��xQ*�        res://scripts/TopMenu/file.gd   @#      �	      �B��mu�Y��R*�y       res://scripts/TopMenu/map.gd -      �      �.��N�.��Ĝ���    $   res://scripts/panels/save_file.gd               ��<v+�6#�ˇ-r/�    $   res://scripts/panels/size_menu.gd   0!            #���Zhr���b��            RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    content_margin_left    content_margin_top    content_margin_right    content_margin_bottom 	   bg_color    draw_center    skew    border_width_left    border_width_top    border_width_right    border_width_bottom    border_color    border_blend    corner_radius_top_left    corner_radius_top_right    corner_radius_bottom_right    corner_radius_bottom_left    corner_detail    expand_margin_left    expand_margin_top    expand_margin_right    expand_margin_bottom    shadow_color    shadow_size    shadow_offset    anti_aliasing    anti_aliasing_size    script 	   _bundled       Script "   res://scripts/panels/save_file.gd ��������      local://StyleBoxFlat_vbmh6 �         local://PackedScene_vwewd �         StyleBoxFlat             A         A         A         A      ��(>��(>��(>  �?         PackedScene          	         names "   !   	   SaveFile    initial_position    size    visible    theme_override_styles/panel    script    PopupPanel    VBoxContainer    offset_left    offset_top    offset_right    offset_bottom    size_flags_horizontal    size_flags_vertical    Input    layout_mode    HBoxContainer    Label    text    FileNameInput    unique_name_in_owner    placeholder_text 	   TextEdit    Buttons 
   alignment    Ok    Button    Cancel    _on_about_to_popup    about_to_popup    _on_ok_pressed    pressed    _on_cancel_pressed    	   variants             -   �  Z                                   A    �^D     �B                      	   D:/FUnny    	   filename             Ok             Cancel       node_count             nodes     t   ��������       ����                                                    ����         	      
                                         ����      	                          ����      	      
                          ����            	                                ����      	                                 ����      	      
                          ����      	      
                         conn_count             conns                                                                                        node_paths              editable_instances              version             RSRC      RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    content_margin_left    content_margin_top    content_margin_right    content_margin_bottom 	   bg_color    draw_center    skew    border_width_left    border_width_top    border_width_right    border_width_bottom    border_color    border_blend    corner_radius_top_left    corner_radius_top_right    corner_radius_bottom_right    corner_radius_bottom_left    corner_detail    expand_margin_left    expand_margin_top    expand_margin_right    expand_margin_bottom    shadow_color    shadow_size    shadow_offset    anti_aliasing    anti_aliasing_size    script 	   _bundled       Script "   res://scripts/panels/size_menu.gd ��������      local://StyleBoxFlat_vbmh6 �         local://PackedScene_a480x �         StyleBoxFlat             A         A         A         A      ��(>��(>��(>  �?         PackedScene          	         names "   '   	   SizeMenu    initial_position    size    visible    theme_override_styles/panel    script    PopupPanel    VBoxContainer    offset_left    offset_top    offset_right    offset_bottom    size_flags_horizontal    size_flags_vertical    Label    layout_mode    text    Input    HBoxContainer    LabelWidth    WidthInput    unique_name_in_owner 
   min_value 
   max_value    value    rounded    allow_greater    suffix    SpinBox    LabelHeight    HeightInput    Buttons 
   alignment    Ok    Button    Cancel    _on_ok_pressed    pressed    _on_cancel_pressed    	   variants             -   X  x                                   A    �D     �B                         Size of level in tiles:       Width      �?    <F     �C      tiles       Height      HC            Ok             Cancel       node_count             nodes     �   ��������       ����                                                    ����         	      
                                         ����      	      
                          ����      	                          ����      	      
                          ����	            	                                                              ����      	      
                          ����	            	                                                              ����      	                            "   !   ����      	      
                    "   #   ����      	      
                         conn_count             conns        	       %   $              
       %   &                    node_paths              editable_instances              version             RSRC          extends TextureRect

class_name Tile

var Main = null
var m_Material = ""

# Called when the node enters the scene tree for the first time.
func _ready():
	Main = get_tree().root.get_child(0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_mouse_entered():
	if( get_parent().painting && Main.g_SelectedTexture ):
		texture = Main.g_SelectedTexture
		m_Material = Main.g_SelectedTextureName
	elif( get_parent().clearing ):
		texture = null
    RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    content_margin_left    content_margin_top    content_margin_right    content_margin_bottom 	   bg_color    draw_center    skew    border_width_left    border_width_top    border_width_right    border_width_bottom    border_color    border_blend    corner_radius_top_left    corner_radius_top_right    corner_radius_bottom_right    corner_radius_bottom_left    corner_detail    expand_margin_left    expand_margin_top    expand_margin_right    expand_margin_bottom    shadow_color    shadow_size    shadow_offset    anti_aliasing    anti_aliasing_size    script 	   _bundled       Script    res://panels/tile.gd ��������      local://StyleBoxFlat_6hsom w         local://PackedScene_27gl5           StyleBoxFlat                                                                ��b?��b?  �?                           PackedScene          	         names "         Tile    custom_minimum_size    anchor_right    anchor_bottom    offset_right    offset_bottom    grow_horizontal    grow_vertical    size_flags_horizontal    size_flags_vertical    script    TextureRect    Panel    z_index    layout_mode    anchors_preset    mouse_filter    theme_override_styles/panel    _on_mouse_entered    mouse_entered    	   variants       
      B   B     �?     ��     �                          ����                            node_count             nodes     4   ��������       ����
                                                    	      
                        ����	                  	                                    
             conn_count             conns                                       node_paths              editable_instances              version             RSRC extends PopupPanel

signal save_file

var Main = null

# Called when the node enters the scene tree for the first time.
func _ready():
	Main = get_tree().root.get_child(0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_ok_pressed():
	self.hide()
	
	var fileNameInput: TextEdit = %FileNameInput
	save_file.emit( fileNameInput.text )

func _on_cancel_pressed():
	self.hide()


func _on_about_to_popup():
	$VBoxContainer/Input/Label.text = Main.g_AssetPath + "/maps/"
         extends PopupPanel

class_name SizeMenu

signal map_size_changed


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_ok_pressed():
	self.hide()
	
	var widthInput: SpinBox = %WidthInput
	var heightInput: SpinBox = %HeightInput
	map_size_changed.emit( widthInput.value, heightInput.value )


func _on_cancel_pressed():
	self.hide()
               extends PopupMenu

signal assets_loaded

var Main = null

# Called when the node enters the scene tree for the first time.
func _ready():
	Main = get_tree().root.get_child(0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_open_assets_pressed():
	$AssetDialog.popup()

func _open_save_file_menu():
	$SaveFile.popup()

func _open_open_file_dialog():
	$OpenFile.popup()

func _on_id_pressed(id):
	match id:
		0:
			_on_open_assets_pressed()
		1:
			_open_save_file_menu()
		2:
			_open_open_file_dialog()

func _scan_folder_for_materials(dir: DirAccess):
	var files = dir.get_files()
	var dirs = dir.get_directories()
	for file in files:
		var fullPath = dir.get_current_dir()+"/"+file
		var relativePath = fullPath.replace(Main.g_AssetPath, "")
		
		if( not file.ends_with(".material") ):
			continue
		
		var rawFile = FileAccess.open(fullPath, FileAccess.READ)
		if not rawFile:
			print("Dang")
			continue
		
		print(rawFile.get_as_text())
		
		var json = JSON.parse_string(rawFile.get_as_text())
		if( not json ):
			continue
		
		print(json["type"])
		
		if( json["type"] != "sprite" ):
			continue
		
		var imagePath = Main.g_AssetPath + "/" + json["path"]
		
		var rawImage = Image.load_from_file(imagePath)
		if rawImage:
			var imageTexture = ImageTexture.create_from_image(rawImage)
			Main.g_Materials[relativePath] = imageTexture
	
	for subpath in dirs:
		var subdir := DirAccess.open(dir.get_current_dir()+"/"+subpath)
		if subdir:
			_scan_folder_for_materials(subdir)

func _on_file_dialog_dir_selected(path):
	Main.g_AssetPath = path
	var test: Texture2D = null

	Main.g_Materials.clear()
	Main.g_SelectedTexture = null
	
	var dir:DirAccess = DirAccess.open(Main.g_AssetPath+"/"+"materials")
	if dir:
		_scan_folder_for_materials(dir)
	
	$OpenFile.set_current_dir(Main.g_AssetPath+"/"+"maps")
	
	assets_loaded.emit()


func _on_open_file_file_selected(path):
	var mapFile: String = FileAccess.get_file_as_string(path)
	var mapObject: Dictionary = JSON.parse_string(mapFile)
	
	print(mapObject)
	var size = str_to_var("Vector2" + mapObject["size"])
	Main.change_map_size(size)
	
	for str_coords in mapObject["layers"]["tiles_1"].keys():
		var coords = str_to_var("Vector2" + str_coords)
		var material = mapObject["layers"]["tiles_1"][str_coords]
		var index = (size.x * coords.y) + coords.x
		var node = %Layer.get_node( str(index) )
		if( material != "" ):
			node.m_Material = material
			node.texture = Main.g_Materials[material]
            extends PopupMenu

var Main = null

# Called when the node enters the scene tree for the first time.
func _ready():
	Main = get_tree().root.get_child(0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _open_size_menu():
	$SizeMenu.popup()

func _on_id_pressed(id):
	match id:
		0:
			_open_size_menu()

func _on_size_menu_map_size_changed( width: int, height: int ):
	Main.change_map_size(Vector2(width, height))
    GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[             [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://c3lrl6gsos0b4"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
                extends Control

var dragging = false
var painting = false
var clearing = false

var Main = null

# Called when the node enters the scene tree for the first time.
func _ready():
	Main = get_tree().root.get_child(0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_gui_input(event:InputEvent):
	if event is InputEventMouseButton:
		painting = false
		clearing = false
		dragging = false

		match event.button_index:
			1:
				painting = event.pressed
			2:
				clearing = event.pressed
			3:
				dragging = event.pressed

	elif event is InputEventMouseMotion:
		if( not dragging ):
			return
		
		var position: Vector2 = self.get_position()
		
		position += event.relative
		self.set_position(position)
               extends Control

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
RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://main.gd ��������   Script    res://scripts/TopMenu/file.gd ��������   PackedScene    res://panels/save_file.tscn >��}ZI�z   Script    res://scripts/TopMenu/map.gd ��������   PackedScene    res://panels/size_menu.tscn �Y�o_�A   Script    res://Layers.gd ��������      local://PackedScene_17rcl          PackedScene          	         names "   J      Main    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    script    Control    VBoxContainer $   theme_override_constants/separation    TopMenu &   theme_override_constants/h_separation    MenuBar    File    size    item_count    item_0/text 
   item_0/id    item_1/text 
   item_1/id    item_2/text 
   item_2/id 
   PopupMenu    AssetDialog    title    initial_position    popup_window    ok_button_text 
   file_mode    access    FileDialog 	   SaveFile    visible 	   OpenFile    filters    Map 	   SizeMenu    GridContainer    clip_contents    size_flags_vertical    columns    size_flags_horizontal    mouse_filter    Panel    Layer    unique_name_in_owner    ScrollContainer    custom_minimum_size    horizontal_scroll_mode    MaterialList    max_columns    same_column_width    fixed_column_width 
   icon_mode    fixed_icon_size    metadata/_edit_use_anchors_ 	   ItemList    _on_file_assets_loaded    assets_loaded    _on_id_pressed    id_pressed    _on_file_dialog_dir_selected    dir_selected    _on_save_file_save_file 
   save_file    _on_open_file_file_selected    file_selected    _on_size_menu_map_size_changed    map_size_changed    _on_gui_input 
   gui_input    _on_item_list_item_selected    item_selected    	   variants                        �?                             -   �   d         Set Asset Folder...       Save       Open Map...                Open a Directory -      �              Select Current Folder                       Open a File       Open "         *.map       Map       Size...                            
     HC             9   -   9   9         node_count             nodes       ��������       ����                                                          	   	   ����                                       
                       ����                                ����	                               	            
                                ����                                                        ���          !                    "   ����                                       #                    $   ����                                            ���%         !                 &   &   ����   '            (       )          	          $   ����         *       (       +          
       ,   ,   ����                                           
          -   ����   .                                                    	       /   /   ����   0            *      (       1                 9   2   ����
         *       (       +      3       4      5      6      7      8                conn_count    	         conns     ?          ;   :                    =   <                    ?   >                     A   @                    C   B                    =   <                    E   D                    G   F                     I   H                    node_paths              editable_instances              version             RSRC       [remap]

path="res://.godot/exported/133200997/export-d0b8fe2f8f40e9c1115a9f26ea38f368-save_file.scn"
          [remap]

path="res://.godot/exported/133200997/export-1b35751276ee8b9ea7b698dd33a0d19b-size_menu.scn"
          [remap]

path="res://.godot/exported/133200997/export-80a2d35f286fdbe396bed658256a3b0a-tile.scn"
               [remap]

path="res://.godot/exported/133200997/export-3070c538c03ee49b7677ff960a3f5195-main.scn"
               list=Array[Dictionary]([{
"base": &"PopupPanel",
"class": &"SizeMenu",
"icon": "",
"language": &"GDScript",
"path": "res://scripts/panels/size_menu.gd"
}, {
"base": &"TextureRect",
"class": &"Tile",
"icon": "",
"language": &"GDScript",
"path": "res://panels/tile.gd"
}])
 <svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
             >��}ZI�z   res://panels/save_file.tscn�Y�o_�A   res://panels/size_menu.tscnG��^$O�,   res://panels/tile.tscn��R��]   res://icon.svg�Y��)J   res://main.tscn       ECFG      application/config/name         MMOMapEditor   application/run/main_scene         res://main.tscn    application/config/features$   "         4.2    Forward Plus       application/config/icon         res://icon.svg     dotnet/project/assembly_name         MMOMapEditor     