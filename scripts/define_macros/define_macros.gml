///@description define_macros()

randomize();

//Set the gridsize that the player moves on and the objects spawn on
#macro GRIDSIZE 32

//Set the array possitions for spawning
#macro SPEED 0
#macro DIR 1
#macro SPAWN 2
#macro TIMER 3
#macro ODDS 4
#macro DUMPER 5

//Odds of bottle spawning
#macro BOTTLEODDS 74

//Score keepers
globalvar Level; Level = 0;
globalvar Points; Points = 0;
#macro MAXLEVEL 6

//Create Arrays with the spawning and movememnt variables for each level

//SAFE ZONES
globalvar Wagon3;
Wagon3 =  [
			[1,1.5,1.75,2,3,4,5],							//Speed
			["left","left","left","left","left","left","left"],//Dir
			[7,7,7,7,7,7,7],								//Spawn Point
			[3.5,3.25,3,1.75,1.8,1.5,1],					//Spawn Timer
			[5,5,6,6,5,5,5]								//Odds of Not Spawning
		];

globalvar Dump;
Dump =  [
			[1.8,2,2.5,3,3.2,3.4,3.5],								//Speed
			["right","right","right","right","right","right","right"],	//Dir
			[8,8,8,8,8,8,8],										//Spawn Point
			[2.5,2.5,2.75,3,2,1.5,1],							//Spawn Timer
			[6,6,5,5,6,6,5],										//Odds of Not Spawning
			[7,6,5,5,4,3,3]										//Odds of being a dump truck
		];

globalvar Wagon2;
Wagon2 =  [
			[2,2.5,2.75,3,4,5,6],						//Speed
			["left","left","left","left","left","left","left"],//Dir
			[9,9,9,9,9,9,9],								//Spawn Point
			[3,3.25,2.5,2.75,1.75,1.5,1.25],				//Spawn Timer
			[7,6,5,4,4,5,5]								//Odds of Not Spawning
		];

globalvar Wagon;
Wagon =  [
			[2,2.5,3,3,3.5,4,5],									//Speed
			["right","right","right","right","right","right","right"],	//Dir
			[10,10,10,10,10,10,10],								//Spawn Point
			[2,2,2,1.5,1,.8,.75],									//Spawn Timer
			[4,3,3,3,1,2,2]										//Odds of Not Spawning
		];


globalvar Bike;
Bike =  [
			[2.25,2.5,4,7,8.5,10,11],						//Speed
			["left","left","left","left","left","left","left"],//Dir
			[13,13,13,13,13,13,13],						//Spawn Point
			[2.75,3,2,1,.9,.8,.75],							//Spawn Timer
		];

globalvar Car;
Car =  [
			[1.75,2,3,4,5.5,7,8],									//Speed
			["right","right","right","right","right","right","right"],	//Dir
			[14,14,14,14,14,14,14],								//Spawn Point
			[3.6,3.5,3,2,1.8,1.6,1.4],								//Spawn Timer
		];

globalvar Car2;
Car2 = [
			[1.5,2,2.5,3,4,5,7],							//Speed
			["left","left","left","left","left","left","left"],//Dir
			[15,15,15,15,15,15,15],						//Spawn Point
			[4,4,3,2.75,2.3,2.1,1.5],						//Spawn Timer
		];

globalvar Truck;
Truck = [
			[1.25,1.5,1.75,2,3,4,6],									//Speed
			["right","right","right","right","right","right","right"],	//Dir
			[16,16,16,16,16,16,16],								//Spawn Point
			[6,5.5,5,4,3.75,3.5,3.25],							//Spawn Timer
		];