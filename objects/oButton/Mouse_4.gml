/// @description 

if oBattle.state != states.PLAYERCHOOSE exit;
switch(button){
	// Player Attacks
	case buttons.ATTACK:
	
	oEnemy.hp -= oPlayer.myAttack;
	with oBattle{
		state = states.PLAYERDEALDAMAGE;
		
		if oEnemy.hp <= 0 {
			state = states.BATTLEEND
			alarm[3] = 90;
		}
		
		else{
		alarm[1] = 60;
		}
	}
	break;
	
	// Player Heals 
	case buttons.HEAL:
	
	oPlayer.hp += oPlayer.healMag;
	with oBattle{
		state = states.PLAYERDEALDAMAGE;
		alarm[1] = 60;
	}
	break;
	
	// Player Defends
	case buttons.DEFEND:
	oEnemy.myAttack /= 2;
	
	with oBattle{
		state = states.PLAYERDEALDAMAGE;
		alarm[1] = 60;
	}
	
	break;
	
	// Flee Combat 
	case buttons.FLEE:
	game_end();
	break;

	case buttons.RESTART:
	room_restart();
	break;
}