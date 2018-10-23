/// @description Draw Win Text

//Draw the level up message
if(show_win_message){
	draw_sprite_ext(spr_level_up,0,view_get_center_x(0),view_get_center_y(0),5,5,0,-1,1)
	draw_sprite_ext(spr_press_any_key,0,view_get_center_x(0),view_get_center_y(0)+sprite_get_height(spr_level_up)*5-10,3,3,0,-1,1)
}