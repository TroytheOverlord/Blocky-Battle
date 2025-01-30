/// @description 
// Left Pressed Event 

if (oBattle.state != states.PLAYERCHOOSE) exit;

switch (button) {
    case buttons.ATTACK:
        // Start the QTE
        qteController.qteActive = true;
        qteController.timer = qteController.maxTime;  // Reset the timer
        qteController.pressCount = 0;                 // Reset the press count
        break;

    case buttons.HEAL:
        oPlayer.hp += oPlayer.healMag;
        with (oBattle) {
            state = states.PLAYERDEALDAMAGE;
            alarm[1] = 60;
        }
        break;

    case buttons.DEFEND:
        oEnemy.myAttack /= 2;
        with (oBattle) {
            state = states.PLAYERDEALDAMAGE;
            alarm[1] = 60;
        }
        break;

    case buttons.FLEE:
        game_end();
        break;

    case buttons.RESTART:
        room_restart();
        break;
}

