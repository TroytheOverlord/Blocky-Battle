/// @description Ends Game after winning

room_goto(Battleground);


oPlayer.x = global.originalPosX;
oPlayer.y = global.originalPosY;

oPlayer.hp = oPlayer.hpMax;

global.battleState = true;


