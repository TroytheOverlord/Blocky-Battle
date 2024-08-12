/// @description Enter Battle Area 

global.originalPosX = oPlayer.x;
global.originalPosY = oPlayer.y;


room_goto(targetRoom);
other.x = targetX;
other.y = targetY;

if(global.battleState)instance_destroy();
