GDPC                 �
                                                                         \   res://.godot/exported/133200997/export-1d9e1ae41bc7320904975fc9b058c05b-melee_enemy_test.scn�$      b      Ǳ�$������-S��O    `   res://.godot/exported/133200997/export-1e70cecc9adcde991a91aa5422700763-fucking font hell.scn   @      �      Z�ei��vƂ\n��,�    T   res://.godot/exported/133200997/export-5fd55f18fbb0f13554731229139007c0-Players.scn �w      �
      �/]C�1�C@1�!G^�    X   res://.godot/exported/133200997/export-691a90ceeb2d39665fdbcbd1654b9e7a-textTexture.res P�            q ���F���M\�h�    \   res://.godot/exported/133200997/export-74e33d7348207a07856b33dfdc3779ed-PlaytestTileSet.res 0�      �      �Z��3��Qj~�p�:�t    T   res://.godot/exported/133200997/export-eb4811e7262f758952548bc2d887f495-TestMap.scn �      f7      ����v������+3O�    ,   res://.godot/global_script_class_cache.cfg  0�             ��Р�8���8~$}P�    L   res://.godot/imported/New Piskel.png-4b57200a9b5d4d6f89cce1bdbbdb2eec.ctex  P+      �       �b��5N�/�    L   res://.godot/imported/Pixel.ttf-f62d26f806d58c4ea02e32ccdecd737e.fontdata   �,      �3      �oN�W5��0�x��π    T   res://.godot/imported/damagenumbers.png-95a6263196ce82c7776d5e8dc8ab0614.ctexarray  �      �      �	����f=��N�f�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex@      �      �̛�*$q�*�́        res://.godot/uid_cache.bin  �      O      �sӾ{�Z��-f@�U��       res://Label.gd  �$              ��ُ ��	���B~       res://New Piskel.png.import �+      �       ��P8(�N���ށ�       res://Pixel.ttf.import  �`      �       IC�IK�mf:y6"��Hh       res://Player1.gd`a      �	      +[N�f��ӓ����       res://Player2.gd0k      "      �`�4g��wn�[SE��       res://Players.gd`v      -      r斂˾$��;30�>       res://Players.tscn.remapp�      d       la�N�;�'n��,��        res://PlaytestTileSet.tres.remap��      l       u�*�g���q�сV��       res://TestMap.tscn.remapP�      d       �\�C�pe��V�_�G       res://TestMeleeEnemy.gd ��      �      ��І��3�![�0J��       res://WeaponHit.gd  p�             P�љ5&��B�O1�       res://damagenumbers.gd          �      �tr���Uȼ˕�u        res://damagenumbers.png.import  `      �       ���M�i�ͣ��xx�    $   res://fucking font hell.tscn.remap  ��      n       ��t5e�|"A"�       res://icon.svg  P�      �      C��=U���^Qu��U3       res://icon.svg.import    $      �       ����u��]c�K.�W    $   res://melee_enemy_test.tscn.remap    �      m       ��
7!�'�-EoT       res://project.binary`�      �      ��[0xv���nS5       res://textTexture.tres.remap��      h       т��
=���tW����    ��?܅��zTextends Control

@onready var numbers = $numbers

var vel = Vector2.ZERO
var amount = 0
var iscrit = false
var isfire = false
var offset:int
func _ready():
	numbers.set_text(str(amount))
	if iscrit == true:
		numbers.add_theme_color_override("default_color",Color("ff8236"))
		numbers.add_text("!")
	if isfire == true:
		numbers.add_theme_color_override("default_color",Color("ff8236"))
		pass
	vel = Vector2(0.0,60.0 * ((-offset * 0.4)+ 1))
	
	
	
func _process(delta):
	position -= vel * delta

func _on_stopmovement_timeout():
	vel = Vector2.ZERO


func _on_delete_timeout():
	get_parent().numbersspawned -= 1
	print(get_parent().numbersspawned)
	queue_free()





func _on_tree_exited():
	var imdyingow = true
���3�y�GSTL                                         6   RIFF.   WEBPVP8L"   /�0��?����l$AE8��_�"�Ar�/ :   RIFF2   WEBPVP8L&   /@'0@4@�nv� �� �HE8�S���z���G9�4   RIFF,   WEBPVP8L   /� 0 2 B2�E.	��B P�D�?Z &   RIFF   WEBPVP8L   /   P���\���             @   RIFF8   WEBPVP8L+   /�0��?���EmI���=!��Ǌi�(�L�Q��� L   RIFFD   WEBPVP8L8   /@7 Haf/Haf/Haf/Haf�1��W���$8:Y����.��q�77�x�J   RIFFB   WEBPVP8L6   /� / H�!,H�!,H�!L�m��fpj�a�@�m�*�N���M &   RIFF   WEBPVP8L   /   P�򔧬���             <   RIFF4   WEBPVP8L(   /�0��?�����$Iu��H��!D��=��͇ P   RIFFH   WEBPVP8L<   /@/ Haf/Haf/Haf/H�f��W�l$A�eX��H��"�O0ISm��Ԓ�' F   RIFF>   WEBPVP8L2   /� ' Hq�,Hq�,Hq�, $H�*=�?��A�m�C9�#�s&   RIFF   WEBPVP8L   /   P�򔧬���             >   RIFF6   WEBPVP8L*   /�0��?���m�H�C�õ� �;��L��[��� H   RIFF@   WEBPVP8L4   /@/ Haf/Haf/Haf/H�f��W�l$����&��ȴ�O-K F   RIFF>   WEBPVP8L2   /� ' H�!,H�!,H�!,$ S&�b���G� �6U�1\���� &   RIFF   WEBPVP8L   /   P�򔧬���             B   RIFF:   WEBPVP8L.   /�0��?����$)�#	��%���ǵT����T��p�J�L   RIFFD   WEBPVP8L8   /@7 Haf/Haf/Haf/Haf�1��W���$8:Y����.��qƊo���J   RIFFB   WEBPVP8L5   /� 7 Hq#,Hq#,Hq#L&a�(���UA�m�*����Gn  &   RIFF   WEBPVP8L   /   P�򔧰���             B   RIFF:   WEBPVP8L-   /�0��?����m��'C8s��ˈ�8��qʶ)aʶ��ĶS  L   RIFFD   WEBPVP8L8   /@7 Haf/Haf/Haf/Haf�1��W���$8:Y����.��qƊ7���H   RIFF@   WEBPVP8L4   /� / H�!,H�!,H�!L�m�Lvh�!� �mS������&   RIFF   WEBPVP8L   /   P�������             <   RIFF4   WEBPVP8L(   /�0��?�����$9�p���ٛ>BD���w��' <   RIFF4   WEBPVP8L(   /@/0@4@�nv� �;�f)�@������H   RIFF@   WEBPVP8L4   /� ' H�!,H�!,H�!L�m�Ɇph�1A�m�*�P�����M &   RIFF   WEBPVP8L   /   P�������             >   RIFF6   WEBPVP8L*   /�0��?�����$9s	b��#⓾BD��0��\!q��( R   RIFFJ   WEBPVP8L=   /@7 Haf/Haf/Haf/Haf�1��W���&� ���?M�'����cV����	 J   RIFFB   WEBPVP8L5   /� / H��,H��,H��L�m3�L�G����� ȶM�aWxD�c. &   RIFF   WEBPVP8L   /   P�B�Ё��             B   RIFF:   WEBPVP8L-   /�0��?���m#9�5���B\������G�.W�+�\  L   RIFFD   WEBPVP8L8   /@7 Haf/Haf/Haf/Haf�1��W���$8:9���d/��!�_b�H   RIFF@   WEBPVP8L4   /� / Hq�,Hq�,Hq�L�m3��G���D ȶM�a.'xD�c.&   RIFF   WEBPVP8L   /   P�"�����             @   RIFF8   WEBPVP8L+   /�0��?�����$9s�!��>"�+D�?栋'�{��9   L   RIFFD   WEBPVP8L8   /@7 Haf/Haf/Haf/Haf�1��W���&� ����L��U��w�	J   RIFFB   WEBPVP8L5   /� ' Hq�,Hq�,Hq�L�m3�L�G��A�m�c��#�s &   RIFF   WEBPVP8L   /   P���ā��             6   RIFF.   WEBPVP8L!   /�0��?����l�B\���"�?���  :   RIFF2   WEBPVP8L%   /@0@4@�d��V���m�6��3����|�  <   RIFF4   WEBPVP8L'   /�  Hq(�,Hq(�,Hq(�,H2[uԀ�*�@D�c &   RIFF   WEBPVP8L   /   P���p���             "   RIFF   WEBPVP8L   /���� (   RIFF    WEBPVP8L   /@ �������  "   RIFF   WEBPVP8L   /� ��� "   RIFF   WEBPVP8L   /   ��� ��gd[remap]

importer="2d_array_texture"
type="CompressedTexture2DArray"
uid="uid://cmlst3mu2l7ij"
path="res://.godot/imported/damagenumbers.png-95a6263196ce82c7776d5e8dc8ab0614.ctexarray"
metadata={
"vram_texture": false
}
 :LQRSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://damagenumbers.gd ��������	   FontFile    res://Pixel.ttf A�8
��#9      local://PackedScene_vibbc 7         PackedScene          	         names "   !      Control    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    script    numbers    texture_filter    texture_repeat    offset_top    offset_right    offset_bottom $   theme_override_colors/default_color (   theme_override_colors/font_shadow_color !   theme_override_fonts/normal_font    text    fit_content    scroll_active    autowrap_mode    RichTextLabel    delete 
   wait_time 	   one_shot 
   autostart    Timer    stopmovement    _on_tree_exited    tree_exited    _on_delete_timeout    timeout    _on_stopmovement_timeout    	   variants                        �?                                  ��      B     $�     �?  �?  �?  �?                 �?               error                   �@)   ffffff�?      node_count             nodes     P   ��������        ����                                                                ����   	      
                           	      
                                                         ����                                       ����                               conn_count             conns                                                                                        node_paths              editable_instances              version             RSRCt�ҿ;GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[ ��[�q��R�K�}[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://jrrlpoybm1nd"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    radius    script    size 	   _bundled       Script    res://TestMeleeEnemy.gd ��������      local://CircleShape2D_buu6s �         local://RectangleShape2D_8s2e5 �         local://PackedScene_4aixn �         CircleShape2D             A         RectangleShape2D             PackedScene          	         names "         MeleeEnemyTest    collision_layer    collision_mask    slide_on_ceiling    script    CharacterBody2D    CollisionShape2D    shape    NavigationAgent2D    debug_enabled    VisionCone    Area2D    CollisionPolygon2D    scale    polygon    Hurtbox    _on_area_2d_body_entered    body_entered    _on_area_2d_body_exited    body_exited    _on_hurtbox_body_entered    	   variants                                                              	   
   Qf�?33O?%                �C  �  �C  D               node_count             nodes     I   ��������       ����                                              ����                           ����   	                     
   ����                                ����            	                     ����                          ����      
             conn_count             conns                                                                                      node_paths              editable_instances              version             RSRC'	fvzw1�mM �4GST2   @   @      ����               @ @        b   RIFFZ   WEBPVP8LN   /?�/@�mS�����$��F#ȶ�� �����- ��� (�$5����9S����	H\������u-s��q��[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://b68nxd2q3yb2s"
path="res://.godot/imported/New Piskel.png-4b57200a9b5d4d6f89cce1bdbbdb2eec.ctex"
metadata={
"vram_texture": false
}
 ujV����͕RSCC      �e  �	  P  �  >    f  "  (�/�` eM ���V`��I�I�����Y���瞯�RL�3�(8��/�\��b�;�Ϧ�������/k�<����Ҩ��ޝ*�.'˒"�#(A��e
����!��I���8�CE����Am%�)�����8X!UL�=��п� �q��J�	%	�B�t4q�Wz��� ����z�����0���
��#��O��o45�?���_�N$t����n���E��Wz�M��ͨZ@s5������Ђ�֮�A�����5���tl�\h$
��q�� 1H���!���ң��C��H$�x)И�rnꯗ����xT}@#O5YSU����C�H��S���`Q��*��y���?�j$%
Y�K���T�'T�#�#�1l���S#O�w��*P�����z�x>u8<��p��z�5hD��6$W��X��"`1��ު��P=��D����!Q���CC�1S�:L��~,��"P�S�Ԩա���5���t��:T{Gq��1�S{F#ģj�/�O{��{5�Y�ğ��������8=E~6�/��ĸNh>D7���"<"L Ay�!A��4��G,�@;t��� p�;�� @ 9vtr8p7l��j���� `���465ڌL���Ek���\h��R�P'�Y�&��)�h-�������ǟ����OpȔ��������{�Q�n�	۷��r�Wl�ۏ�����]��A��l�I�p����@����n�6�>�?d��>��/P�E�����߳�!�_b�@U��D����$�Y�}n_����G��G��*9��A� �/��K�/�5�&���8�~ޢ~�B=*L���I�uK����T��e�`��+�̷бx��4����S������j,��w��/�#�(��=�7������%�ŢT��̟�1��(��E���a�h�h���<M��������D2ɗ��>�,�Y����/12�M[:c2��b�^,��5�`-�4OSJ�o��%3�2_-�l��Bg1�tB��d.,����f�v�GGi��R��(m��b�o_{q	�8���o��#:J��RIe����4Z�T6��(}ըq]I�5���p6�oc�{s闶:�/|��3X�*Wh�/�Xi����P9�$��a�1��I�K����/�αq���H-�Mw�l�F�Ӷs.=c�^l�7�%kڝg�센�{�}�?�
0��p�r��6e�8Ӛy"�C&�H�����(1S2��1��+/N^�/5/F.E�좃�'c��Ŭ��hI��,_,�����su���VZ�jZH���h��V�r�N�(�	T2Ք��Y����<�8Y1�`R��259a�H��J��Q.���OL"&�y6�&�x���#+�Ub�Z��<I�AE ������h�,�LRb����9����9��'�v��6w���|��PH���{��d:�P(t��t:�?KeRJ'-���\���f~6��\:�ŧ	��8�솎����2�o�[w{c{��ø_;�(�T����I�nm��(3��ךN��N���ͧ�t�v�T��~G��5�Ux+�H���F*�I� �����ɤ�dR���"���T���YRK�&��j��Z������\ͬ�j����c<���<����Ze�\^b�X�m�d��r��͙k 4Le�`f85�낵dUɼ����������<]T���f �b�^/023�M�4ll42f�l�rr��΋�n���2�TRY"�T�H"��M&�7]��`5X͖��r��l���C�Ŝ�!�t���o�Z�������ͦ��K��X��Z=�[B��l�}���'��d���K�s��kZ��o�RW�B���^`\1�٬����D"���L&�I*Kd�a�����p9[�s8X�h�5�r7�0����+�e��%����,�BFFdDD�$IP�13Ue��A�2�JD$��?��󠢻�A������6Eˆm�x�@x�����~?�/y�w	'AHk��DOjm�b(7 v#3�GB�C;;ѩ��lqz�������1>q�$��@���=�&�g�
)�@l��G����;P�t�E�r����>P��,�4c�xp�`�1���0���@�H��P��A�$_q��7���Cd��+ɟ�:�S���>�T�0;z�
s�9T������xI��/�G&�"�P����m)(�&�^z�F�-�~�k�2��r$|#*.���ZI*���]q��ß��̕����>��=�+��׎ú�
 \C<�/����^��y	�����Z�~_�S�W� YMRøY���\�UU�U��+b�3��j��PM��l��3��D���|d=��!<d���oT�a����<��� ��KT>o�P�w{��K�N���Y�EB�w�.�6�����#j��O�����J�[$�6�J�R�Ҡ�~Mtɂ=�op��W��5� ](�/�` 5: �YhC ������$�b%����@�l2O��D���Y@�U���l ����f��{�����&2I�dJ�  HA�4L��"D�$Iߙ���KH�(�#��@\��p��>��<�q��Y��l��z}r��'�}:ϧ��-zux( 1�:�o�� #$��H�=E����%�B X�8���_���1Epx2���; ��ʚLNevN�D.]�I@�IJ(��x�m�uDࠄ''-"��N���i$��'��aZ����6ױ����.j*n�b�LYl� �b� �	����	�Ч�|BO��ˇ�9*-�͔��oI�g$M��=�|�5#)s��ͯ�7�嘶�I����i	�
�"eJ��;�,�f�>�'w�$���i$�/!�Fqo�2�t���T��?��4��^���^Y�夑4QFU�U�0�%���9�4Kf�2�7��}�W��sR�='ʧ4����c���@<�2ݜn�%;�����#cLi)��l7'��[rO钆s�����N�c�K��:��d��#[��1E߿]JO����
��KBLq	�Kps3�"h�x�2�"���Ym��<>6!!H_W����xc�"覴��ޒ��c�u�%}z����>}�-k��H��NԔ�=+��~`�ʀPh������w����$���[��Lz��^�E��+�´m��ͦ�$xc��L��K��|	�ȶN_Z�S�:#齾J�1qf$�Q�GZ�Ŷ�����v]��.�7U��K�5��ʊ���Q�l�D�����Ev�e&M���)�UU��f�`�E��eLψ-#I��\��a�<�Ys����Y��q����4m�ŏeV�]�יي{j[5I�Z����i��2^�j�x{��1��SRUg[�V�.���k�evj��q��&��4�[B�1&6K��O��_؜t^2�`���ICB
���vh�f��u�|,�t^��ʭ�NNi[$9A����J�-���(�.Z���(b��e?���(ja�2˗�E���̖L�Q��6�N�d��׬e��{���m  <M}�բ��lۼ��!����W���}�S6y��cFR�N�Q-b�dDDDD�$Ic��b�����5��
I#"2��� �$�T�E��D�.��g�Ty����YQ���2�"F�T�ݽg����;�GB��T��8�[��[ ��L�?&Հ��F94�tdÁ-�]�lA4�.�M�"MA/}�\����|-$3=C�ib�o�<����%r�/gՇ���TO�ɩ�Ց{����U:���?�K"	*��L'�ܨE�:�q�8zfP��]?�Hs�ĵ�P���q����b�����J�����"�K7���Ui�rO+�'\�֞��+Zq#A ��p�<N��'#����b�K6{���A��	s&�L��E�y-� �.���q��?{����D��hQ[Ԕ+�1���m�!�'����+� �"^ m�
x<dc¸��)���$�##�Z��`inS��+|Lq5M�u�o��r�C�r(n�?�
[��Kv�����6��@�h��v"�\�M��W�5�%����Z2�ߔ�����.�~� �Oܤ;��(���kF)�	na�V9���qI'>�f��v@�t�Ǫ����r/x��9k�LUE�;���XVt�I��l�%�P�3���Wh�R���BƆvU"
O�ײ��� �3|����̊����S`$�sw��x@>�$�O�;e���ڍ29�`�a0M*�����`!lSk%GB�j��]�$���%&o���Kд��.(��jIj��u�(�/�` �6 �N @0S�4=��1�O�����`�=+炃~Z�l��V�n~���6�N���fv�ݮ��$�dK�[J)S�)� � � ��Vp��UBhJ�(�ө49�q�����u/�F�0�j���:)[�G[)��Д�C!��HbJ��>���I��Z�/x����4��ʧӣS6MK�X���X�l0�
;�P���VP�ps�8���g'4t	lbbb��>��8(���$'V�|;�~�u�(FR���=�KӤ��j���洗�zs[���C�iv�+��l:�(lY&¹���eZ���-�j��f6�+c5f��X������=������(o����˽7���A{�Mci�1���Ch����}RX��M�lڄ�Xz�#�U;
�P�t�AZ���&*��У4���_B�QZ����l=��r���
n�����Z�Sq6��iq}a,���L����Q6����'!���E�t���6,��~�>�~�v0N%4etkm�S�L�R�L�\��d4�̥�\�v�������}��l0'��i��sZ��k���(�'JB�O���/W���'}#����`�����ve.K��9��e��t%�#��;	a�C��k���IhRi�5���˂'��u�%��y�M������(2��H��O
�K�r�4��|����\<i+�/���x!� w?��	�eZV�Zk��fCB���l�Ey�XIi�ʺ\#X�$�KB�������l2W�؃M	=���A�`d�i+I4p��� �0� �u�^'
�?�Un��$� �ӹ�82/~� ��40p S%�%%��ጛhe���S��EI�G�}e4͵y��;l�.ieI�׈�=�<�W���%a�����+MSqγ=h�����s?�Е��5�e<z�aˡ�z0�����h:��;��ʚ��`+��>�#ɲ�s���leI��)Ý�V�u~�tf��eYI�e�11SHɈ��$I����X� 13ʡ)!IA��o�ܠ����e�U{�����R�	�����;r���W��-8e�^�MG�}}�&���� �ZKx���&M�4]N�t�o�����V����oԼ��~"Y��|�u�u�P"���;���e_[�4���WX��Z���׏�A��Lf{����X�#0j�D�㈔���'ڥ�͜�]��c;�,�	q�~�<9dZ�f�"i#�Y�5z�1��ok��\�O��H]B%��k�ˑw�T���Gwc�
QB��+A��%��G�}�� ��x�.�ȸe*UE�a��[7�h���%^� Vab�M6J�0����֍0����{+����u� bc5HJ�.��q��9�����%f���&�O׫Ip(F��K��M������j�l5��h�#���h2��,DX퀷 �Df�a�؎�>�C�t[�w;�>�(�U�f��^���/#;IK�Gv ������`��t�ǁ,�g#R�\R�����X�L|��!t�:�g7/�v����)n9ڴ��.��4v�dB����lJ��6�D�չ)�*�[#=x�����p���iO���K�e�Oȍ�"聡�0��C��.
��!�&��F6���@I�Pgl8B�[���U*P�)���4D}�2� ]p��	���	?�ld�3������º�:�A��AK�`4�5��Т�Yp��d�v�Dd�Yr���B����pm@h]��
�
��mU8���~�`0o�Rŵ�ss�� �����H�=��
(�/�` �A �i�H�7z2���3\�1��bd�S3��C�I���Y\�fyv��G�߀34?`���������-r�$S
DSY��*�F*+e��?�\��qtv��a��ݞ����),-�[�/n��~��ʨ:>��Q���ƲnR26�ty�-(�'gh�gu��e�iEvrߑJ�f8E%GG����ٟݒ�&u�xx\ƫ�f��fR�d������!�9;�?))��I����5��q�]�h���n���^l3���Q�N*q0~�!�7����v䊹�\#��S|Z&X�.}����e�ߊF��λ�5$�[R	Y�k�ً��O�F��q(�L&/�rѥfR��4��wwW4�2�s�.�b)��)�gy��y����(���� ᥣCP�Tw�J�9:��d��s�|�c��0D0a����"z�Pqr	q<v�g�rU��^�>�y|��)�2�i���v\ �(���q��{|z|zΕj����_q<����c��X�Q�T�O��ƓX�6�$ZD�hM�#��:-��F����2ˏ Iєg�Iu�zB�KR�4яƔZ29�1:;]~��#������~���Hܽ�Ңe/045&n�6�8�NK�ry�0dʫ���i\y���$��p�y���J56��ēK~y��O��!�5�f���u���k�[��k���<�yu�L��H�L$�GҌ�`hfy��r���`4��XF!T")���`-^,C24E34O/O3+OS����ǖ�Z#�޽��8|��������}�����*�_��FC��!IS^#$ɓ����vu��m����v�_l���z���}�5��]Q��f��I�3��`:b�'U4��Y���yk�cS�d��S��CS�=�r�������TY�Q��q��ɔ�}<C�e���B��U�M��)���R��&1���b��ג�)��4Z9T�s���]���^�f/k����o݁�EH��N��P+e%E��q0��P@(>�>|8e@�2x� d��a��jb������y�Ɓ+��� dv�s��@��SB�,,AA�Z\0�P\J Z��0pi�0��� 6�P�aD9 J�
D�ǡ����H��Q��D���������@����5��K�Eͤf�=%��H���Ӷ�^�l�_�q�t#��C�
EQͳ�i�^��]�����iN�&4��DҊ$E=$�2�ֽ�����5������^A=i>�yx�v������f�{O4j�n}܅$�ُ3�E���F����I��,ɰ�y��ۊ5|7�ov��}�u���.���ƐIs�c�R�8��I��~?PԑJ�i[�x��R��Իr1�g4�,3������}ֿr�ʹ��u��"9V�k^��v�]�u���;'5g����!��[���D�!�rfdDDDD�� �� B�4��3
���$IA!�J
�f��K����xt���m��}������]�C��w�UL7��P�e���U��Q��K��"��ym�иV��?�� ���g�Ž՗�+�-��t`��j�[���o�W�
��9=8���`i���'>��Y���y�UV� ��HX-©�訴-uކ��$�������+�߭oӀZ�:���\\͂�(um�d���0P�j2�� Q��B�oh�������?y���iG�U	.�����~~�M�^���2sB�4 �A[�O�n���~h��Ph����I��HR���Ԅϣ-G��\�{���w�ƛ�n����8��-����Hc/�%	r37����sCrB�AR�� �Hd�H���c�#��D9�9��+g��N��Pjg��5g�QկQ��q��e4��-\c��75I��h|W\
�0Km\�Ozz�/���FqW��B�u��,�.��@� %EM)���,���0��W���w0L��gC�!9�(�z@��!�5=b�5XD�H	��p�7�c��bJ]Q,� =��]B�}C<����E��񔢟�V@���/�n8�h�������@o5�Y�Lg���#�����u���=]���ö?)�oۑ�;�ٕvG�
�4������Lb}�^8���2v�	
��aF(�/�` �? �hH�Tm:V�� W�}	7�+(&hML��6�ve�� 0�;xX#����ʎ+������1z"�q�}7�Q���[�3-S�^.��	�1T�:s.�&(�]w�R�T&۷"zqo܆��3�bZ����a�m�/m�<��� i�"#g�Bgy#g�șj!*QcG�7�e�a}��z4�,~ߊE�*�q�_��٦�^,�Z�:��!W�{�D���M{[m��ڋE$�5���D�%t�tЙ3��e�΍W�8~��b!1}�,ӽ���h�gUu��ҋ9��6|Y,�޶�8�VM������Ži'��6ԄR��hҀ#�}�'�H�g���gB�9k�UӬ�G��I�ݯ����J/im�H��L(��O������:gJ��f�f*������6k/����e��% [�<�1�}*�w]�����y��Ž�;GT�Wc��}$z��8���_�^#���8�D���J�]�VQ��7�u�i�f�:D��q�B�xm�Do����Rp4"u��D�����#��L�:䌓r��4��6s��@\�����o�V{a�4,��}�3�t�!mbX�ڴ��¯3��̥i�̙�u�!ݡ(��H*�~����v�a����]����e9�V���v����,��Y�d�E@���ſ��'ïlf�.�9����L5X_L7.���]��0�XVeY�2�,�,t�YQ#JlqI22�n���`���@�U�w]N�T����:����y�J������Įz��bWE#LL��������}�P}UVH%�� RF�[�I��o�Μs�M���%���,o���,ͬs��T�e9��R�,K'�c����b��W�W5�^X��L5,S���^�� �����TQ�m�1A���Uc`��g��΄2CS�ؕ��@w�� 12�˥�P�K�P�X6(7��'�rU��@5`��^X��ʊU� u_�XٮzF�CS�ދG��x+�	@�0 Y��A���}�Ĳ�>�o�ٴA�9s�B窆^ؽ�;q�����N�?��
�c�?��{�߹��gG��
�w��"^�j��>�<��t wJ���A�a�����AA�DKD	@'���S�譫�߹���w8��������(��;�y�~��?Gq�9��.�%�s��8�y�m~z��h��%��Z��q����k�g��gVG����=��]r�uǯS���y�ǻ�J!��3�,K C�B���ih�հ���r��^�L(�TjTM�ȈU� x��J ���� >��.��RT^` T�ʊM���ؓ�U�Z��Xf	̠Ԕ ,�ފG��ڥ�� IC�0H%�1r��_��P�B�Q1S�dD$�$I2�B�����-B�P�� Ia���X�����^����>H�����@�%�����&طz^��9u��ZO;(��Mj
 K!"_k3)��0�Zx���ߟgg�0ud렪%\����e�Ar\����U5�l����6^m�=�=��sCK�8�ϲ����+x�@����`I�� ´��QP`m*XN�q*��wh7J?���]n<+^B�tŤB�b���l�*z���//��;��:dT%��OS���np�b�"Ź��%�q�8�*��M,�:� �|0�י�%]��n%�q  .|)��M�L��K�n3�����=��^k�]�=���!M,l{��(�+C!J4���\/�? ��Q���3?E�w_+�.�]o�=n��{6�$.�� ���Bxzq���=�Q���H�H����`s+�?���b �ֹ��h���~���
c���Ō'�-\��V�Eª��W���4G|��8"@�=0���_ F:wN&8�4�</�����5�9�+4���!:Ǉɵ���N��&ڴ���`;��+a�H=�рB��ӕ�]V:�0e��a��fuP��E��� �3���:.�h�6�i�*.j�R�У�V
|"��CUu�Cp�>���̊¦�]Y�t�W3�¸���L]bvz35\y�K����a�*(�/�` �B ڐDRp����xi��V�v�Nk���p>���E�u���đ���m0�s����!��W���y�1�`���#h>�-����>gB"$�r�M`Z�����2��5�0�LƠQfBA|"�D'�)ᔐ��S���	2U21j$Ԯj;5�6%�I�-��0,�Fx�R�K�K-8�.�h�|�bH!%�IAƒh!cY---N3+2�X��Ha!b�"��"�X�I�xȠ����1*�`_�0	�a�MF��� �`�o���
JJf�z?b�\�gv԰a�f~����zvG�4�b ����b0������M3�{i"+�4�G]4�C��d�8h�{���c����1o���y�y�:�1�o���s�]c�X�8�c����\��[L3�W�[�3�6/'`����2׎�]���g�,;6�_`r'��߳����tp��[w�:��G�S'����Z*�
	Q͍5��#J�~$��Jҫ�B�@�T�����:꫑Lt�7�Y�5����J��7'�j��ܻf�������('�"���9ʙ;ʉ{꼕p��pΎء��g`}.�C��ஓ�)�-ÉXs��K���q`c�R��D.O*/����!�Y�]~��A.7��ˁ�@}���m��;8y����;.�q���u.�qY�r�˸���a\ns������[\���7����ު�%//S8g�\~�U��*�G�w�0;���q)k_uh�m�����՝Cs�P�E4�|���O�;m޴9��͗6'r�J�t�H����,��C6rU�6r�B�P���9����?���|�y��;6ϱ���s6���klNcs��l~�9��[lN�Vq��l~۫��V�T��Y�1��]���ʳ�}Cs�P�\5777�34�P�]5��8
�U)�%����<�W�U<.D�c���+�궡�m(n$jw�i��^R��4�%EzI�~Ң�,��O����-��8U�y<w�D{�U�?����R�Uzۇ��x|��+ȉL>dr!3	2����?�{�79��{�<ѝ�wL�c������:�ۘ<g��Ә|��2&Ǚ�f��Ø�f����F��07���Ԥy��pr�i�=Ë�}ګ�������U{[�:�bq	~��3�;]�49��K�'��ɋ&'"�R�84��p���>_��Jʛ�
pNjۃ��,�ՕS�l��m��|է��4mZ�LCP�Z]�Jk5i�"�A�ƪ�Z-Z�D7��XZ�ASh���ꏁ��Jy{��#խCs�P�^����4�ų]R�Y�9Ι���j~�忒w�v ��l�:tU}n�ʉۇ�"(9m(��U�",��������z��q(�9\Jg���"���+o��rjn��f����5�l�U�U�y\��8?Ч���	�4�2MU�P�tO�]�tO����F��h��B����s��pH�ǵCs��@���o�Ms�ӵ:-Ӧke���w�K˪t�Iˊ��G�jt�E�d�֠�8����L����[�o�A�\�T�4�=U����T����V-ڪDSڪAO���ꏛ�����b|gq#�y��[5/�4�8yW��J�\gn�7g��S����I}3ǪX/�h��L�/��*��Du�pWէ��tm:�L?P�Y]X���4�HK����բ��:���#-��5\���J����0�#E��DDF��p�!�@B(�H& 	�F�� �°�J/�\}}Ż�G�Ȑ�T�`N2Xs�QϠdp[��o��3��vZ�(q��t��d�S�܈�EH >�-B��28 J���J F��ͳ��Y����A��Ψ2� ��~��8���?���v)k�TA4����wJ��7���޴���
Wp|3 %I��=7�d(W��Pւ�Bׯ[���g&8t*��gq�f�8�������Ʉ�*�đ�5t�t�\�*8�Pl���e("c�������[(�N*(����p_�w�u��|�5$�g���C�9꣪y$�.�D����:]}۫S�nw�m�Y�vי��-P_|���b�������Ȃ�*n6+@���As���XeSTWM���Jo���=����6M���Þ�@���=|TT�BED����ȝa�0w��~j(�/�`�� &��D��5�0�`��u�m�dT8�@��0�D�	���<���0��T��'B�2,����ݎ����*e({�� � � �����YY��\����u�Z��zᝪP�(����OM˼>1����{x^��s�t|�`��si8����-���np�?��]��G]��Q
nT�mY�et�HőNT�S��Q�e힙{��3o8�u��;�jZU����>�m���9�q��}s7�av�ms7�%��pPW_�j�Pq����IM=��&�N��E���Zfn�M�t[�C}ݥ�c�P�Zã��\�Z��D��i��{n�F�<�$�ќw�Ya��g�Y�!�İ��Q�Z�
�i��SrYU��x���|�p+%��~����nEͣ������y۴Q_>jN�!fҢd�z*T<��D�m�O��QÇJp)�l���m�����9�y�$1s�|��mp���t���?)x�z�s���]E]-Tq��c	Z�V?̈�� �
��f����_A����a���@��	�P�X��7%`�!4�R�?�?�$�0�U�{OX�e�M���e�`���xQ��~��Z�i�����GHűЌlq1+�r?���� ����S�jU-�8����������	I��<#P0a�������`3*��

-,��(�fLw��NLǮ'e�G��ɛ\1=O�\M�H(H	�6�y�����{%lm��<�!�n������k��g{d�~�p�xuމSisx�M��iv�']���Lr�U� WzOΔQ�YY%M:�nڜYW$�jRSCC�D��|��'��[remap]

importer="font_data_dynamic"
type="FontFile"
uid="uid://bywq88n8s2f0d"
path="res://.godot/imported/Pixel.ttf-f62d26f806d58c4ea02e32ccdecd737e.fontdata"
 �dU��W��w��extends CharacterBody2D


#speed
@export var speed = 200
var tempspeed = speed
var accel = 50

var playerID = 1
var state = "normal"
var canberevived = false
var revivetimer = 3
var reviveimmunity = 0

#weaponstats
var bulletdamage = 20
var firedelay = 0
var knockback = 6

func _physics_process(delta):
	var embers = get_parent().get_parent().embers
	if reviveimmunity > 0:
		reviveimmunity -= delta
		print (reviveimmunity)
		if reviveimmunity < 0:
			reviveimmunity = 0
	if state == "normal" or state == "vulnerable":
		var dir = Input.get_vector("P1left","P1right","P1up","P1down")
		if Input.is_action_pressed("P1right"):
			if dir.y != 0:
				tempspeed /= 1.4
				
			velocity.x = min(velocity.x + accel, tempspeed)
			tempspeed = speed
		elif Input.is_action_pressed("P1left"):
			if dir.y != 0:
				tempspeed /= 1.4

			velocity.x = max(velocity.x - accel, -tempspeed)
			tempspeed = speed
		else:
			velocity.x = lerp(velocity.x,0.0,0.2)
		if Input.is_action_pressed("P1down"):
			velocity.y = min(velocity.y + accel, tempspeed)
		elif Input.is_action_pressed("P1up"):
			velocity.y = max(velocity.y - accel, -tempspeed)
		else:
			velocity.y = lerp(velocity.y,0.0,0.2)
		move_and_slide()
		if embers <= 0:
			state = "vulnerable"
		get_parent().get_node("WeaponHit").set_rotation(self.get_angle_to(get_global_mouse_position()))
		get_parent().get_node("WeaponHit").set_position(self.get_position())
		if Input.is_action_pressed("Click"):
			if firedelay <= 0:
				shoot()
		if firedelay > 0:
			firedelay -= delta
		
	if state == "vulnerable":
		pass
	if state == "downed":
		$hitbox.disabled = true
		$ReviveBox/CollisionShape2D.disabled = false
		if canberevived == true:
			if Input.is_action_pressed("p2res"):
				revivetimer -= delta
			else:
				revivetimer = 3
			if revivetimer <= 0:
				if embers > 0:
					state = "normal"
				else:
					state = "vulnerable"
				$hitbox.disabled = false
				$ReviveBox/CollisionShape2D.disabled = true
				reviveimmunity = 1.5

func _on_revive_box_body_entered(body):
	if body is CharacterBody2D:
		canberevived = true
		print("swag")




func _on_revive_box_body_exited(body):
	if body is CharacterBody2D:
		canberevived = false


func shoot():
	var collider = get_parent().get_node("WeaponHit").get_collider()
	var collisionpoint = get_parent().get_node("WeaponHit").get_collision_point()
	if collider != null:
		if collider.has_method("get_hit"):
			collider.get_hit(bulletdamage, knockback,collisionpoint)
	print (collider)
	firedelay = 0.2
CG�	�2�$�l��extends CharacterBody2D

@export var speed = 200
var tempspeed = speed
var playerID = 2
var state = "normal"
var canberevived = false
var revivetimer = 1
var reviveimmunity = 0
var totalvel = 200
var accel = 50
var currentDirection:String
var damage = 20
var knockback = 9
var collisionpoint = Vector2.ZERO
var ignitestrength = 6
var igniteduration = 3
func _physics_process(delta):
	var embers = get_parent().get_parent().embers
	if reviveimmunity > 0:
		reviveimmunity -= delta
		if reviveimmunity < 0:
			reviveimmunity = 0
	if state == "normal" or state == "vulnerable":
		var dir = Input.get_vector("P2left","P2right","P2up","P2down")
		if Input.is_action_pressed("P2right"):
			if dir.y != 0:
				tempspeed /= 1.4
			currentDirection = "right"
			velocity.x = min(velocity.x + accel, tempspeed)
			tempspeed = speed
		elif Input.is_action_pressed("P2left"):
			if dir.y != 0:
				tempspeed /= 1.4
			currentDirection ="left"
			velocity.x = max(velocity.x - accel, -tempspeed)
			tempspeed = speed
		else:
			velocity.x = lerp(velocity.x,0.0,0.2)
		if Input.is_action_pressed("P2down"):
			velocity.y = min(velocity.y + accel, tempspeed)
			if dir.x == 0:
				currentDirection = "down"
		elif Input.is_action_pressed("P2up"):
			velocity.y = max(velocity.y - accel, -tempspeed)
			if dir.x == 0:
				currentDirection = "up"
		else:
			velocity.y = lerp(velocity.y,0.0,0.2)
		move_and_slide()
		if embers <= 0:
			state = "vulnerable"
		if Input.is_action_just_pressed("p2attack"):
			swing()
			$MeleeWeapon.set_rotation(5)
	if state == "vulnerable":
		pass
	if state == "downed":
		$hitbox.disabled = true
		$ReviveBox/CollisionShape2D.disabled = false
		if canberevived == true:
			if Input.is_action_pressed("p1res"):
				revivetimer -= delta
			else:
				revivetimer = 1
			if revivetimer <= 0:
				if embers > 0:
					state = "normal"
				else:
					state = "vulnerable"
				print ("awesome")
				$hitbox.disabled = false
				$ReviveBox/CollisionShape2D.disabled = true
				reviveimmunity = 1.5

func _on_revive_box_body_entered(body):
	if body is CharacterBody2D:
		canberevived = true
		print("swag")

func _on_revive_box_body_exited(body):
	if body is CharacterBody2D:
		canberevived = false





func _on_melee_hitbox_base_body_entered(body):
	if body is CharacterBody2D:
		if body.has_method("get_hit"):
			body.get_hit(damage,knockback,collisionpoint)


func _on_melee_hitbox_tip_body_entered(body):
	if body is CharacterBody2D:
		if body.has_method("ignite"):
			body.ignite(ignitestrength,igniteduration)

func swing():
	if currentDirection == "left" or currentDirection == "right":
		$MeleeWeapon/MeleeHitboxBase.set_rotation($MeleeWeapon/MeleeHitboxBase.get_rotation()+(PI))
	if currentDirection == "up" or currentDirection == "down":
		$MeleeWeapon/MeleeHitboxBase.set_rotation($MeleeWeapon/MeleeHitboxBase.get_rotation()+PI/2)
|�Ƃ��M�_p!" extends Node2D

var defaultmaxembers = 100
var embers = defaultmaxembers


func _process(delta):
	if $Player1Parent/Player1.state == "downed" and $Player2Parent/Player2.state == "downed":
		pass
		#death script here


func take_damage(enemydamage):
	embers -= enemydamage
	if embers < 0:
		embers = 0
��TRSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://Players.gd ��������   Script    res://Player1.gd ��������   Script    res://Player2.gd ��������      local://RectangleShape2D_jfee4 $         local://RectangleShape2D_3380n E         local://RectangleShape2D_3dabv f         local://RectangleShape2D_8b5bp �         local://PackedScene_dtuue �         RectangleShape2D             RectangleShape2D             RectangleShape2D       
     �B  �A         RectangleShape2D             PackedScene          	         names "   !      Players    script    Node2D    Player1Parent 
   WeaponHit 	   position    target_position    collision_mask 
   RayCast2D    Player1    slide_on_ceiling    CharacterBody2D    hitbox    shape    CollisionShape2D    TempCamera 	   Camera2D 
   ReviveBox    collision_layer    Area2D 	   disabled    Player2Parent    Player2    MeleeWeapon    MeleeHitboxBase    scale    MeleeHitboxTip    _on_revive_box_body_entered    body_entered    _on_revive_box_body_exited    body_exited #   _on_melee_hitbox_base_body_entered "   _on_melee_hitbox_tip_body_entered    	   variants                 
     8  ��
     �D          
         ��                                                      
         �A         
      ?   ?      
     B             
     B    
     �>  �>               node_count             nodes     �   ��������       ����                            ����                     ����                                   	   ����               
                             ����                          ����                     ����      	                    ����      
                           ����                     ����               
                	             ����             	             ����      	                    ����      
             	             ����                     ����            	                          ����                                      ����            	                          ����                               conn_count             conns     *                                                    	                       	                       	                       	                           node_paths              editable_instances              version             RSRCZ`�G)瞞�GWRSRC                    TileSet            ��������                                            P      resource_local_to_scene    resource_name 	   vertices 	   polygons 	   outlines 
   cell_size    script    texture    margins    separation    texture_region_size    use_texture_padding    0:0/0 &   0:0/0/physics_layer_0/linear_velocity '   0:0/0/physics_layer_0/angular_velocity '   0:0/0/physics_layer_0/polygon_0/points    0:0/0/script    0:1/0 &   0:1/0/physics_layer_0/linear_velocity '   0:1/0/physics_layer_0/angular_velocity '   0:1/0/physics_layer_0/polygon_0/points    0:1/0/script    1:0/0 &   1:0/0/physics_layer_0/linear_velocity '   1:0/0/physics_layer_0/angular_velocity '   1:0/0/physics_layer_0/polygon_0/points    1:0/0/script    2:0/0 &   2:0/0/physics_layer_0/linear_velocity '   2:0/0/physics_layer_0/angular_velocity !   2:0/0/navigation_layer_0/polygon    2:0/0/script    2:1/0 &   2:1/0/physics_layer_0/linear_velocity '   2:1/0/physics_layer_0/angular_velocity !   2:1/0/navigation_layer_0/polygon    2:1/0/script    3:0/0 &   3:0/0/physics_layer_0/linear_velocity '   3:0/0/physics_layer_0/angular_velocity !   3:0/0/navigation_layer_0/polygon    3:0/0/script    3:1/0 &   3:1/0/physics_layer_0/linear_velocity '   3:1/0/physics_layer_0/angular_velocity !   3:1/0/navigation_layer_0/polygon    3:1/0/script    1:1/0 &   1:1/0/physics_layer_0/linear_velocity '   1:1/0/physics_layer_0/angular_velocity '   1:1/0/physics_layer_0/polygon_0/points    1:1/0/script    1:2/0 &   1:2/0/physics_layer_0/linear_velocity '   1:2/0/physics_layer_0/angular_velocity    1:2/0/script    0:2/0 &   0:2/0/physics_layer_0/linear_velocity '   0:2/0/physics_layer_0/angular_velocity    0:2/0/script    0:3/0 &   0:3/0/physics_layer_0/linear_velocity '   0:3/0/physics_layer_0/angular_velocity    0:3/0/script    1:3/0 &   1:3/0/physics_layer_0/linear_velocity '   1:3/0/physics_layer_0/angular_velocity    1:3/0/script    tile_shape    tile_layout    tile_offset_axis 
   tile_size    uv_clipping     physics_layer_0/collision_layer    physics_layer_0/collision_mask    navigation_layer_0/layers 
   sources/0    tile_proxies/source_level    tile_proxies/coords_level    tile_proxies/alternative_level    
   Texture2D    res://New Piskel.png ��
�oE@       local://NavigationPolygon_1ir71 �	      !   local://TileSetAtlasSource_gmpyr )
         local://TileSet_1aodv �         NavigationPolygon       %        ��  ��  �@  ��  �@  �@  ��  �@                                      %        ��  ��  �@  ��  �@  �@  ��  �@         TileSetAtlasSource :                             
                        %         �   �   �   A   A   A   A   �                   
                        %         �   �   �   A   A   A   A   �                   
                        %         �   �   �   A   A   A   A   �                   
                                                   !   
           "          #             $      %          &   
           '          (             )      *          +   
           ,          -             .      /          0   
           1          2   %         �   �   �   A   A   A   A   �3      4          5   
           6          7      8          9   
           :          ;      <          =   
           >          ?      @          A   
           B          C               TileSet    I         J          K         L                  RSRC���RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       TileSet    res://PlaytestTileSet.tres �a
cҪZ   PackedScene    res://Players.tscn ��FC�D   PackedScene    res://melee_enemy_test.tscn �P�h�L      local://PackedScene_24e8l z         PackedScene          	         names "         Node2D    TileMap 	   tile_set    format    layer_0/tile_data 	   position    MeleeEnemyTest    	   variants                           �    ��          ��        ��        ��       ��         ��        ��        ��       ��         ��        ��        ��       ��         ��        ��        ��       ��         ��       	 ��       	 ��      
 ��        
 ��        ��        ��                                                                                                                                                                    	                 	                 	                 	                 	                 	                 	                 	                 	       	         	 	       
         
 	                 	                 	                 	                                                                                                                                                 
          
                                            	          	                                                                                                                                                                                                                                           	         	        
         
                         
         
                                          	         	                                                                                                                                                                                                   	         	                                          ��        ��       ��        ��       
         
                         ��        ��       ��        ��       ��        ��       ��        ��       ��         ��       ��         ��       ��        ��	       ��        ��	       ����        ����       ����       ����       ��         ��        ��        ��       ��         ��        ��        ��                                                                                                                                                          	                 	        
                   
                 
                   
                
 
         
          
                 
                  	 
        	         
                   
                 
                   
                 
                   
                ��
         ��        ��
        ��       ��
         ��        ��
        ��         
                    
                ��        ��	       ��        ��	       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��         ��       ��         ��       ����        ����       ����       ����                	                 	                 	                 	                 	                 	                 	                 	                 	                                                                                                                                                                                           	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ��         ��       ��         ��       ��         ��       ��         ��       ��         ��       ��         ��       ��         ��       ��         ��       ��         ��       ��         ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��	       ��        ��	       ��        ��	       ��        ��	       ��        ��	       ��        ��	       ��        ��	       ��        ��	       ��        ��	       ��        ��	       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ����        ����       ����       ����      ����        ����       ����       ����      ����        ����       ����       ����      ����        ����       ����       ����      ����        ����       ����       ����       ��         ��        ��        ��       ��         ��        ��        ��       ��         ��        ��        ��       ��         ��        ��        ��       ��         ��        ��        ��       
                   
                 
                   
                 
                   
                 
                   
                 
                   
                ��
         ��        ��
        ��       ��
         ��        ��
        ��       ��
         ��        ��
        ��       ��
         ��        ��
        ��       ��
         ��        ��
        ��                                            ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��      
 ��       
 ��       ��        ��       ��        ��      	 ��       	 ��                                                                            ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��                                                                                                                                                                                                                                                                	                 	                 	                 	                 	        
                 
                 
                 
                 
                 
                          	                                                                             ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��        ��         ��       ��        ��      ����       ����      ����       ����      ����       ����      ����       ����      ����       ����      ����       ����      ����       ����      ����       ����      ����       ����      ����       ����      ����       ����      ����       ����      ����       ����      ����       ����      ����       ����      ����       ����      ����       ����      ����       ����      ��         ��       ��         ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��	       ��        ��	       ��
        ��       ��
        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��                                                                                                                                                                  	         	        
         
                                                                                                                                                                                                                                                                                                                                                                             ����       ����      ����       ����      ��        ��       ��        ��       ��         ��       ��         ��       ����       ����      ����       ����      ��        ��       ��        ��       ��        ��       ��        ��       ��        ��	       ��        ��	       ��
        ��       ��
        ��       ��        ��       ��        ��       ����       ����      ����       ����      ����       ����      ����       ����      ����       ����      ����       ����      ����       ����      ����       ����      ����       ����      ����       ����      ����       ����      ����       ����      ����       ����      ����       ����       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��        ��         ��       ��        ��      ����       ����      ����       ����      ����       ����      ����       ����       ��        ��       ��        ��       ��        ��       ��        ��      
 ��       
 ��       ��        ��       ��        ��      	 ��       	 ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��                                                                                                                                                                                                                  
         
                                          	         	                                                                                                                                                                                                                                                                                          ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��       ��        ��                
     �  �B         
     �A  �B      node_count             nodes     &   ��������        ����                      ����                                  ���                            ���                         conn_count              conns               node_paths              editable_instances              version             RSRCqԢ�!����Eextends CharacterBody2D

var damagenumbers = preload("res://fucking font hell.tscn")

var stundur = 0
var numbersspawned = 0
var durationmult = 1
var enemydamage = 20 + (8*durationmult)
var speed = 20
var active = true
#targeting
var NodeToCheck
var Player1
var Player2
var unknownPlayer
var unknownPlayer2
var target
var stayTargeted = false
var attention = 0.1
var PlayersInRange: Array
var charactersinrange = 0
var canseenode = false
var takingkb = false
var health = 200 + (5*durationmult)
var CurrentDOTdamage:int
var igniteTimer = 0
var DOTupdate = 0
#pathfinding
var state = "wander"

func _physics_process(delta):
	if active == true:
		if charactersinrange > 0:
			if unknownPlayer2 != null and unknownPlayer != null:
				if self.get_global_position().distance_to(unknownPlayer.global_position) < self.get_global_position().distance_to(unknownPlayer2.global_position):
					NodeToCheck = unknownPlayer
					canseenode = false
					CanSee(NodeToCheck)
					if canseenode == true:
						target = unknownPlayer
					else:
						NodeToCheck = unknownPlayer2
						CanSee(NodeToCheck)
						if canseenode == true:
							target = unknownPlayer2
						else:
							target = null
				else:
					canseenode = false
					NodeToCheck = unknownPlayer2
					CanSee(NodeToCheck)
					if canseenode == true:
						target = unknownPlayer2
					else:
						NodeToCheck = unknownPlayer
						CanSee(NodeToCheck)
						if canseenode == true:
							target = unknownPlayer
						else:
							target = null
			else:
				if unknownPlayer2 != null:
					canseenode = false
					NodeToCheck = unknownPlayer2
					CanSee(NodeToCheck)
					if canseenode == true:
						target = unknownPlayer2
					else:
						target = null
				elif unknownPlayer != null:
					canseenode = false
					NodeToCheck = unknownPlayer
					CanSee(NodeToCheck)
					if canseenode == true:
						target = unknownPlayer
					else:
						target = null
			if target != null:
				if not PlayersInRange.has(target.playerID):
					PlayersInRange.append(target.playerID)
				stayTargeted = true
		if target == null:
			stayTargeted = false
			print("yes")
			print (attention)
		if stayTargeted == true:
			state = "alerted"
			attention = 0.5
		if attention > 0:
			attention -= 0.016666
		if stundur > 0:
			stundur -= 0.0166666
		if target is CharacterBody2D and attention > 0 and state == "alerted":
			
			if PlayersInRange.has(1) and target == Player1:
				$NavigationAgent2D.set_target_position(target.global_position)
			if PlayersInRange.has(2) and target == Player2:
				$NavigationAgent2D.set_target_position(target.global_position)
		if $NavigationAgent2D.is_navigation_finished() != true and stundur == 0:
			if target != null:
				$VisionCone.set_rotation(get_angle_to(target.global_position))
			velocity += ($NavigationAgent2D.get_target_position() - self.get_position()).normalized() * speed
			velocity.x = lerp(velocity.x,0.0,0.2)
			velocity.y = lerp(velocity.y,0.0,0.2)
		if attention <= 0 and $NavigationAgent2D.is_navigation_finished() == true and takingkb == false:
			target = null
			state = "wander"
			velocity = Vector2()
		move_and_slide()
		if igniteTimer > 0 and DOTupdate == 0:
			DOTupdate = 1
		if DOTupdate > 0:
			DOTupdate -= delta
		if DOTupdate < 0 and igniteTimer > 0:
			DOTUpdate()
			DOTupdate = 1



func _on_area_2d_body_entered(body):
	if body is CharacterBody2D:
		if body.playerID == 1:
			Player1 = body
		elif body.playerID == 2:
			Player2 = body
		
		if unknownPlayer != null:
			unknownPlayer2 = body
		else:
			unknownPlayer = body
		charactersinrange += 1


func _on_area_2d_body_exited(body):
	if body is CharacterBody2D:
		charactersinrange -= 1
		PlayersInRange.erase(body.playerID)
	if charactersinrange == 0:
		stayTargeted = false
	if body == unknownPlayer:
		unknownPlayer = null
	elif body == unknownPlayer2:
		unknownPlayer2 = null


func CanSee(NodeToCheck):
	var canSee = PhysicsRayQueryParameters2D.create(self.get_global_position(),NodeToCheck.global_position)
	canSee.exclude = [self]
	var result = get_world_2d().direct_space_state.intersect_ray(canSee)
	if not result.is_empty():
		if result.collider is CharacterBody2D:
			canseenode = true



func _on_hurtbox_body_entered(body):
	if active == true:
		if body is CharacterBody2D:
			if body.get_parent().get_parent().has_method("take_damage"):
				if body.reviveimmunity == 0:
					if body.get_parent().get_parent().embers <= 0:
						body.state = "downed"
					body.get_parent().get_parent().take_damage(enemydamage)
					print(enemydamage)
					#player knockback here
					#like seriously thats important you need to do that
					#get off your ass 
					#body.velocity = -body.velocity

func get_hit(damage,knockback,collisionpoint):
	if active == true:
		#why is kb such a pain in the ass
		#stundur = 1.5
		#velocity = position.move_toward(-collisionpoint, 0.0166666 * speed)
		#takingkb = true
		health -= damage
		var text = damagenumbers.instantiate()
		text.amount = damage
		numbersspawned += 1
		text.offset = numbersspawned
		add_child(text)
		if health <= 0:
			die()

func die():
	active = false
	$Hurtbox/CollisionShape2D.disabled = true

func ignite(ignitestrength,igniteduration):
	if igniteTimer > 0:
		CurrentDOTdamage += ignitestrength
	else:
		CurrentDOTdamage = ignitestrength
	igniteTimer = igniteduration


func DOTUpdate():
	igniteTimer -= 1
	health -= CurrentDOTdamage
	var text = damagenumbers.instantiate()
	text.isfire = true
	text.amount = CurrentDOTdamage
	numbersspawned += 1
	text.offset = numbersspawned
	add_child(text)
	print("ow i am on fire")
	if health <= 0:
		die()
FRSRC                    CompressedTexture2D            ��������                                                  resource_local_to_scene    resource_name 
   load_path    script        "   local://CompressedTexture2D_vv54t �          CompressedTexture2D          RSRC��q�jn�extends RayCast2D

"�D�X�F�N�[remap]

path="res://.godot/exported/133200997/export-1e70cecc9adcde991a91aa5422700763-fucking font hell.scn"
h9[remap]

path="res://.godot/exported/133200997/export-1d9e1ae41bc7320904975fc9b058c05b-melee_enemy_test.scn"
6NV[remap]

path="res://.godot/exported/133200997/export-5fd55f18fbb0f13554731229139007c0-Players.scn"

Nߞ�f4�C"i�[remap]

path="res://.godot/exported/133200997/export-74e33d7348207a07856b33dfdc3779ed-PlaytestTileSet.res"
���[remap]

path="res://.godot/exported/133200997/export-eb4811e7262f758952548bc2d887f495-TestMap.scn"
�l�.v��k�[remap]

path="res://.godot/exported/133200997/export-691a90ceeb2d39665fdbcbd1654b9e7a-textTexture.res"
�Ɍ���>list=Array[Dictionary]([])
}���<svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
`�L�z� �"q
   ��堪�AN   res://damagenumbers.png����Q1)i   res://fucking font hell.tscn��/��D	   res://icon.svg�P�h�L   res://melee_enemy_test.tscn��
�oE@   res://New Piskel.pngA�8
��#9   res://Pixel.ttf��FC�D   res://Players.tscn�a
cҪZ   res://PlaytestTileSet.tres��P�>�]   res://TestMap.tscn�K�S��   res://textTexture.tres�ECFG      application/config/name         Like Moths To Flame    application/config/features$   "         4.1    Forward Plus       application/config/icon         res://icon.svg  (   gui/fonts/dynamic_fonts/use_oversampling          #   gui/theme/default_font_antialiasing             gui/theme/default_font_hinting          +   gui/theme/default_font_subpixel_positioning          
   input/P1up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   W   	   key_label             unicode    w      echo          script         input/P1down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   S   	   key_label             unicode    s      echo          script         input/P1left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   A   	   key_label             unicode    a      echo          script         input/P1right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   D   	   key_label             unicode    d      echo          script      
   input/P2up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/P2down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/P2left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/P2right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/p1res�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   F   	   key_label             unicode    f      echo          script         input/p2res�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   X   	   key_label             unicode    x      echo          script         input/Click�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          button_mask          position    ��C  �@   global_position     ��C  HB   factor       �?   button_index         canceled          pressed          double_click          script         input/p2attack�              events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   Z   	   key_label             unicode    z      echo          script            deadzone      ?   layer_names/2d_physics/layer_1         Players    layer_names/2d_physics/layer_2         Enemies    layer_names/2d_physics/layer_3         Embers  ,   navigation/2d/default_edge_connection_margin         9   rendering/textures/canvas_textures/default_texture_filter          >   rendering/textures/default_filters/anisotropic_filtering_level          v�&�X