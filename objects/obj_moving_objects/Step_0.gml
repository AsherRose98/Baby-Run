///@description Movement

//Check the speed/dir for each level
spd = Speed[Level];
dir = Dir[Level];
//Move the object in the correct direction
if(dir == "right"){
	x-=spd;
}else{
	x+=spd;
}
