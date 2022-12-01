//States arent't being currently used, will implement later.
var state = 0;
var idle = 1;
var active = 2;

//Every frame, the timer is reduced by one.
timer--;
//Defined in Create
sight = default_sightdis;
//Defined in the ChrParent Object.
speed = character_speed;
//Randomizes movement for when the player is not 50 pixels away from this Enemy.
if (distance_to_object(Obj_Player) > sight){
		state = idle;
	if !place_meeting(x, y, Obj_Wall){
		speed = character_speed - 2;
		if(timer <= 0){
			timer = time;
			direction = choose(0, 90, 180, 270);
		}
	} else {
		speed = 0;	
	}
//Moves enemy on the most direct path to the character if they are closer than 50 pixels.
} else if (distance_to_object(Obj_Player) < sight){
	state = active;
	direction = point_direction(x, y, Obj_Player.x, Obj_Player.y)
	if !place_meeting(x, y, Obj_Wall){
	speed = character_speed - 1;
	} else {
		speed = 0;
	}
}