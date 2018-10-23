//Set the font to use
draw_set_font(font_text);
//Spacing between lives
var lives_spacing = 24;
var words_spacing = 64;
//Text to be written to the topbar
var text1 = "Lives: ";
var text2 = "Points: "+string(Points);
var text3 = "Level: "+string(Level+1);
//Height of the GUI
var boxheight = 32;
//The current width of all the text written
var current_width;



//Draw the GUI
draw_rectangle_color(0,0,room_width, boxheight,c_black,c_black,c_black,c_black,c_black)

//Draw text one (Lives)
draw_text_color(0,string_height(text1)/2,text1,c_white,c_white,c_white,c_white,1);

//Draw the lives
for(i=0;i<health;i++){
	draw_sprite(spr_health, 0,i*lives_spacing+string_width(text1),10);
}

current_width = (health)*lives_spacing+words_spacing;

//Draw text two (points)
draw_text_color(
				current_width,
				string_height(text2)/2,
				text2,
				c_white,c_white,c_white,c_white,
				1
				);
				
current_width+= words_spacing+string_width(text3);
//Draw text three (lives)
draw_text_color(
				current_width,
				string_height(text3)/2,
				text3,
				c_white,c_white,c_white,c_white,
				1
				);
