/// @description 
// Step Event for Battle

switch (state) {
    case states.PLAYERCHOOSE:
        if (!qteController.qteActive && qteController.resultMessage != "") {
            // QTE finished, calculate damage multiplier
            var multiplier = 1.0;

            switch (qteController.resultMessage) {
                case "Perfect": multiplier = 1.75; break;
                case "Great":   multiplier = 1.40; break;
                case "Good":    multiplier = 1.00; break;
                case "Bad":     multiplier = 0.60; break;
            }

            // Apply damage to the enemy
            oEnemy.hp -= oPlayer.myAttack * multiplier;

            // Reset QTE result
            qteController.resultMessage = "";

            // Handle state change
            if (oEnemy.hp <= 0) {
                state = states.BATTLEEND;
                alarm[3] = 90;
            } else {
                state = states.PLAYERDEALDAMAGE;
                alarm[1] = 60;
            }
        }
        break;

    case states.BATTLEEND:
        // End battle logic here
        break;
}
