///@description Draw Health/Game Over
draw_topbar()


//Draw Game over screen at the center of the view
if(game_over){
	var mid_x = view_get_center_x(0);
	var mid_y = view_get_center_y(0);
	var top_multi = 4;
	var bottom_mutli = 2;
	
	draw_sprite_ext(spr_game_over,0,mid_x,mid_y,top_multi,top_multi,0,-1,1)
	draw_sprite_ext(spr_press_any_key,0,mid_x,mid_y+sprite_get_height(spr_game_over)*top_multi+10,bottom_mutli,bottom_mutli,0,-1,1)
}