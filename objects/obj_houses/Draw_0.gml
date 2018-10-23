/// @description Draw Baby When Full
draw_self();
//Draw a baby sprite in the house if the player touches it
if(is_full){
	draw_sprite(spr_baby,2,x+sprite_width/2,y);
}