/// @description Insert description here
// You can write your code in this editor

//Creates Movement
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));

//Direction

var xmove = (keyRight - keyLeft) * character_speed;
var ymove = (keyDown - keyUp) * character_speed;

//Collison Work
if place_meeting(x + xmove, y, Obj_Wall){
	//Moves the object one pixel to the left or right (depends on the sign of the xmove)
	//This is necessary since GameMaker does not fully move the Player on the wall unless
	//It is specifically programmed.
	if !place_meeting(x + sign(xmove), y, Obj_Wall){
		x += sign(xmove); 	
	}
	xmove = 0;
}
if place_meeting(x, y + ymove, Obj_Wall){
	if !place_meeting( x, y + sign(ymove), Obj_Wall){
		y += sign(ymove); 	
	}
	ymove = 0;	
}
//Moves the player by xmove if collison statments are false.

x += xmove;
y += ymove;