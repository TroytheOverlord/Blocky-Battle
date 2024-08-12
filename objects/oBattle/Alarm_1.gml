/// @description 

state = states.ENEMYATTACK;

oPlayer.hp -= oEnemy.myAttack;


if oPlayer.hp <= 0 {
			state = states.BATTLEEND
			alarm[3] = 90;
		}
		
		else{
		alarm[2] = 60;
		}
	
	
