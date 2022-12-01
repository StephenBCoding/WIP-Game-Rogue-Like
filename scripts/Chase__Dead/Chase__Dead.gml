//Kill me
//Dead Code.
function Chase(CurrentObj, TargetObj, CurrentSpeed){
	NewX = CurrentObj.x - TargetObj.x;
	NewY = CurrentObj.y - TargetObj.y;
	Diff = NewX - NewY
	XMove = (-1*(sign(NewX))) * CurrentSpeed;
	YMove = (-1*(sign(NewY))) * CurrentSpeed;
	if place_meeting(x + XMove, y, Obj_Wall){
	if !place_meeting(x + sign(XMove), y, Obj_Wall){
		x += sign(XMove); 	
	}
	XMove = 0;
}
if place_meeting(x, y + YMove, Obj_Wall){
	if !place_meeting( x, y + sign(YMove), Obj_Wall){
		y += sign(YMove); 	
	}
	YMove = 0;	
}	
	if(sign(NewX) == 1){
		if(sign(NewY) == 1){
			if(sign(Diff) == 1){
				CurrentObj.y += YMove;
			} else if(sign(Diff) == -1){
				CurrentObj.x += XMove;
			} else if(sign(Diff) == 0){
				CurrentObj.x += XMove;
			}
		}
		if(sign(NewY) == -1){
			if(Diff > (NewX * 2)){
				CurrentObj.x += XMove;	
			} else if(Diff < (NewX * 2)){
				CurrentObj.y += YMove;
			} else if(Diff == (NewX * 2)){
				CurrentObj.x += XMove;	
			}
		}
	}
	if(sign(NewX) == -1){
		if(sign(NewY) == 1){
			if(Diff > (2 * NewX)){
				CurrentObj.x += XMove;
				}
			if(Diff < (2 * NewX)){
				CurrentObj.y += YMove;
				}
			if(Diff == (2* NewX)){
				CurrentObj.x += XMove;
				}
			}
		if(sign(NewY == -1)){
			if(sign(Diff) == 1){
				CurrentObj.x += XMove;
			}
			if(sign(Diff) == -1){
				CurrentObj.y += YMove;
			}
			if(sign(Diff) == 0){
				CurrentObj.x += XMove;
			}
			}
	}
}
