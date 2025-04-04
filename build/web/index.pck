GDPC                �                                                                         X   res://.godot/exported/133200997/export-7cbf4b22f69bbef049bfcab9eef3dcf7-game_camera.scn �      �      �NS����s���v    T   res://.godot/exported/133200997/export-84f9ae3bda0f08deca657157f1bffdaf-Level1.scn  0      �      ����۞�e����=@    X   res://.godot/exported/133200997/export-8b0a1eeefba11527cbd5e5f359840d09-playership.scn  �      �      �N0w�+=��$,h>    ,   res://.godot/global_script_class_cache.cfg  @#             ��Р�8���8~$}P�    L   res://.godot/imported/Background.png-d346e9ce37c7294bb8a0c89de5d380cd.ctex                e�}5��2�~��Ϳ�    L   res://.godot/imported/spaceship.png-79fa49ff5aaf0c7609e4381f7dc09a84.ctex   �
      �       un %����
>4�L       res://.godot/uid_cache.bin  `#      �       �q�DĆ��ڍGT���       res://Background.png.import  !      �       |?�T��N����I�,:    (   res://Scenes/Game_camera/game_camera.gd         �      ���_��S
8��    0   res://Scenes/Game_camera/game_camera.tscn.remap �!      h       f7Y������Hav	        res://Scenes/Level1.tscn.remap  �"      c       �)��l�n���ݳW�    $   res://Scenes/Player/playership.gd   P      3      ��1:7\��\5i��I    ,   res://Scenes/Player/playership.tscn.remap   `"      g       G�=>��9
`�1��    (   res://Scenes/Player/spaceship.png.import`      �       p���|-N�a$���       res://project.binary@$      t      �j�_�ly�&q<J    extends Camera2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	make_current()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#getting playership via "Player" group
	var player_nodes = get_tree().get_nodes_in_group("player")
	if player_nodes.size() > 0:
		var player = player_nodes[0] as Node2D
		offset = player.global_position
      RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script (   res://Scenes/Game_camera/game_camera.gd ��������      local://PackedScene_veteg          PackedScene          	         names "         GameCamera    script 	   Camera2D    	   variants                       node_count             nodes     	   ��������       ����                    conn_count              conns               node_paths              editable_instances              version             RSRC       extends CharacterBody2D

#var cursor_position = get_global_mouse_position()


func _ready() -> void:
	pass # Replace with function body.


func _process(delta):
	look_at(get_global_mouse_position())
	var movement_vector = get_movement_vector()
	var direction = movement_vector.normalized().rotated(rotation)
	global_position += direction * delta * 50

func get_movement_vector():
	var forward_movement = Input.get_action_strength("move_forward") - Input.get_action_strength("move_backward")
	var side_movement = 0
	return Vector2(forward_movement, side_movement)
             RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    radius    script 	   _bundled       Script "   res://Scenes/Player/playership.gd ��������
   Texture2D "   res://Scenes/Player/spaceship.png mi&�0�/      local://CircleShape2D_x60sn �         local://PackedScene_7ywxi �         CircleShape2D            �@         PackedScene          	         names "   	      PlayerShip    script    Player    CharacterBody2D 	   Sprite2D 	   rotation    texture    CollisionShape2D    shape    	   variants                    ��?                         node_count             nodes        ��������       ����                              ����                                 ����                   conn_count              conns               node_paths              editable_instances              version             RSRC  GST2   
   
      ����               
 
        �   RIFF�   WEBPVP8L~   /	@O`��s(��
c���$	�|�k	ο���m��y��1>\�I�"�G�U���� J|� �`0�m�I,�D[�궃��A��#�0��+<ben�;wmy��)W���l���]�       [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cilioahhievd"
path="res://.godot/imported/spaceship.png-79fa49ff5aaf0c7609e4381f7dc09a84.ctex"
metadata={
"vram_texture": false
}
            RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script    
   Texture2D    res://Background.png �O3BՑ8   PackedScene $   res://Scenes/Player/playership.tscn d'��r�qP   PackedScene *   res://Scenes/Game_camera/game_camera.tscn >Z,s�v      local://PackedScene_mofqo �         PackedScene          	         names "         Node2D 	   Sprite2D 	   position    texture    PlayerShip    GameCamera    	   variants       
     lC  <C                   
     �B  �B         
     �C  4C      node_count             nodes     $   ��������        ����                      ����                            ���                           ���                         conn_count              conns               node_paths              editable_instances              version             RSRC GST2   �  �     ����               ��       �  RIFF�  WEBPVP8L�  /�C`O@�ar��C"�d����I����f���	40�І��$䶃�"�G��wH�>�N;@[�o	t+I�d�._a�e���Y���+���O�d~Cի��g�)I`�ZD�D���m�u�X˙z:��x�����v�]_������bV�j���݇j����������b���sR���� 	���`�g�g+���ܤR'ET�Ѝ��~�؎9T��)�����Hn)�����b��~�1|$��C��g���k�!;|'�j�o�Uq��$a�w������EҤ�h��X��� !�i�v�>(DWK���"�.�o����ڜ������8'��4|5�a��݆eԀ�*%���q�#<�uS�P�x��A+g4�戏Mq�y�#��C��LƑT�^��b��r�O#�:������WϤ�:{ĭji�"�W�ga_�B�9�nԙ�,�mN�l�5ߍwH�N��1ɦ,t��t�}+*�y~C�J�}�.���K�����b�nE���ǵaR��Z$Q��k�c��I�~7[@��69r:gLMBf9�	q\�M��N��;^	.G��Ѡ�z-��%o���)�ŭ�F$�cA�b��V�L]���+[��E�#�,|g�ǃ<<�G��|ٓ:ܖ)����w���#va���N��?��Ct�4߷Xr|m�
F�~I���u�ꬱ�toN�y|4�U����#kҁ;���Y����VUp���*���ߡ{�:�Av�c�O;�ҚP���A�^i��Z����6���,ӕg��VQ{��u$8����#�G�J�E�/��h�߭�4��;��j��Xx! )�d$f�N�^J�.��a&��ud����+!�1���y�09 �	�oE�T�_��1�������T�o���E��</�HB��\��̗c�.%�|ֳ�%N��F!���G��5�B�Q��	�vd9ܒk�nd��<V�z�ՔW{,�h2���ӡHlS�?xu!{��l��.�a��G��޴��o�ĩ���@'����I
�[f[����7�b�o,%�P!?��=��A:�aE%iڜʘ~~��:��4MؠC�.���13;�5^�d5D�)�w4���%btl��^\tlv�D�m��h9M�YJG8�	�K6v�,{Y=�,�<5p���9F����/�K{�H�N����V�҄C �W�� �)�W;� :�	�mk�i��9Ć����j��9����+^ܞ+��_�c� �co�F���!�.b���H���t�c�6_�]�#o:�B]�kA�,q����]e���0�0���d�J.��n̠��=�ir}�I����gˮ��[��7_א���Z�D<���a��fͽ��T���A_Y��6eI�>�o�|E���O�)��nQ��������Ҍ��.�I�J*{�¬��,^�*f	�hv����|��"�Jq�d� nI���;E��\߃y�p�����GY���#p�q�Vü����ϧ>j�N
���AÜ=~P��ل���Bn���C�t򺧖Yh��H�'�90�J~��L��o��E�
$��;���-�-��L�x�X2̆�B�T�1ٓ2#t���jG�=�|6��[��'��u�z߄]����P�B0���(�
CZ�t�p�I����C��n�����$�����l��{�8��z�ɯ�}�\>[�[�k(�S��Z����cA���x����#/i��K���
����8��� �
l�!ek�@:�A1�a�ge��04��l8-��O���Z5˒9ǋХǸ2�-�o���_:��R�$� ��4�Nq�T�&�u��O��nf��%�	�Pϕ��}�-�8ЎR�����)3���~
z���Y�!��+�z�D�ݕv���\�;���ߝb�}|��K)Ƞ�yP����#�g�n�8�7yx�kSg5�9+��M��qx'�d-P�sf�-Vp+;�*���I�L�j�\��Y7ߙ����W���� =�
�[l�
���x�`�R�ͱb��vd@RK� ���7t�c�.6y5����]�ŕ�[7�y{P��bj\�u���'��W��f�_�_w^��՘��+��
n�m��U�^�M�����s��q��P��PP�0\v�nC�2��	��htK�0̫�	��q��c�#�����$L���M���Z�x�w�7��k|��i%O~��VܶHR�}h�OŔ�,q��cjf���<�_u{��?�V��S�U�p���V���z龡Ze����on/P�)���ǎT=I�պ����e;�_s�|�
�� t�'7/�C�(C��Q��#�Gm��؃��ԃ���ǃ��'tؑ�?nKv͑ә�+��r Wk�&��ߡw�4V
n�'ˣo�7����fA�^�6���.uT�E�
ד�]>//2Ѭ�ˣ:,�u)�$�β����9�P���F4�&��N���LjO�'�%�@XzC"4 Ι���3��ۤ��n�ᶢ�G��;�����>&���
U��)�L���@�V�Y���������� X�N� �D�ݘX����.+G��M\�s��z���iџ�j��C�B�9"<t��
��u���;�@jK~-��LJ��@ZGP��-�	W�^���p`d�9�QTy��:�3Ҁ��8�P�����^�=S�����I�C��xM��
��hǬ�>Դis��top��yGU�Y��J��1�K0��O�W+2��p�s;�0����P�g��S�A��]�@N#��bU"[b�<|r�`��<5�s'S{�T��Kې�3s�Pu@T�i��~�p��Q�I��P�p�,�3����&'&��ڠ�	���
훩e�P���� �T��IԨ��\�Z�J��E<�eTK #� �.4�2ĨMO3U�Q��jh՞�f��&
����7��Wx��!;OzE������P��lX�y�B�9^Ta ���h������8+����&�,&T���83�a�:�F���	�s��B5��6a��њ��PlS6��P�W=�բ���2�����
;x��;8Rm5:Tׅ�
5	@�+��o5Tu`�n*x<�Mj�#e��pP]#/��2�"��*F�����ѡ�g���-sX�N��P�O�`g(�շѩ��q�+.,tn�g���bx�*k>�&uus����PE�$-S�'�i36��P�^��g����避߽��Q�ڿ֝he�9��j�8�]�6�VS�4BQa��q��j� �YDwU���W�~���3�|��������(4T���u�#P���9+�þ�V
Ua)o����m�?Z����g����:>*PܨB���1/��Z�*��_�Y�J���tiQt��s$\Y����zLRp�8��c@v,�^.���:\�lA1��vԄ{��/TK��N!�%�ϒ�<�G�����j�Ѓl����En.�@'�N�"��Y��6E��:/>c-�=fT������ 4T�ǿ��9UF�����N�5��^2B��.��]Ae���()<T��,`������6�"�gTm��g?}VUZ2�˵�'$�|��?c`)*�E\���<f�j��\�U�は�Y�h�{TQ�$���셫����
�j�5Y{��0,ܴ^jj��V9//������Ok����W�ۙS��j�Dt괝�|V&��m�Ff����ɰH��n����h.ic��f�&�[KѴ�ߑ�U�xp���� oK(��G��N8��T�vw2�c�s�wM���i��x����8lF?�br8f"��.����;�����[�x�fg#�������Q#�4� �3|y�Ω=:o�|�G�o�����S;�� AѪ�}�����|��\B��{h��F0�t�"u.�}�~WL�����j����/� H����1� �f�������Ccמ?��(�~8�]��5mVh����;L��0�T|��Ņ�ǣWI�QB_����o3�Z2[���w3Q�Fd9����K������V|�=0
ob%Qg\qNE���b�ƣWIT;({�'8�,p�߲/��lb��!f���a�'|���L�{v�w�;Κ}7/P�+��6�x�d*ji�r�YG�d�{�V(�V� l�i�+̂��*��sՙm ��ރ�Lr���Ի�����-��S���8�۰�;x����6qS�P�+�R,��o_m$��Չ2!'|��#���1������5	j���/�B>���ԥ9��[WI��@�k�r��*e5�� [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://byctvpmns5scs"
path="res://.godot/imported/Background.png-d346e9ce37c7294bb8a0c89de5d380cd.ctex"
metadata={
"vram_texture": false
}
          [remap]

path="res://.godot/exported/133200997/export-7cbf4b22f69bbef049bfcab9eef3dcf7-game_camera.scn"
        [remap]

path="res://.godot/exported/133200997/export-8b0a1eeefba11527cbd5e5f359840d09-playership.scn"
         [remap]

path="res://.godot/exported/133200997/export-84f9ae3bda0f08deca657157f1bffdaf-Level1.scn"
             list=Array[Dictionary]([])
        >Z,s�v)   res://Scenes/Game_camera/game_camera.tscnd'��r�qP#   res://Scenes/Player/playership.tscnmi&�0�/!   res://Scenes/Player/spaceship.png�d���@G.   res://Scenes/Level1.tscn�O3BՑ8   res://Background.png       ECFG      application/config/name      	   TwinStick      application/run/main_scene          res://Scenes/Level1.tscn   application/config/features$   "         4.2    Forward Plus    "   display/window/size/viewport_width      �  #   display/window/size/viewport_height      h  )   display/window/size/window_width_override      �  *   display/window/size/window_height_override      8     display/window/stretch/mode         viewport   input/move_forward�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device     ����   axis      
   axis_value       �?   script            InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   W   	   key_label             unicode           echo          script            InputEventMouseButton         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          button_mask           position              global_position               factor       �?   button_index         canceled          pressed           double_click          script         input/move_backward�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device     ����   button_index         pressure          pressed           script            InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   S   	   key_label             unicode           echo          script         input/brake|              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode       	   key_label             unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device     ����   button_index   	      pressure          pressed           script      9   rendering/textures/canvas_textures/default_texture_filter                      