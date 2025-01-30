/// @description Activates the QTE

if(qteActive)
{
	timer--;	
	
	if(keyboard_check_pressed(targetKey))
	{
		pressCount++;	
	}
	
	// Checks if time is up
	if(timer <= 0 )
	{
		qteActive = false;
		
		// Determine result based on press count 
		if(pressCount >= 40)
		{
			resultMessage = "Perfect";
		}
		
		else if(pressCount >= 31 and pressCount <= 39)
		{
			resultMessage = "Great";
		}
		
		else if(pressCount >= 21 and pressCount <= 30)
		{
			resultMessage = "Good";
		}
		
		if(pressCount >= 0 and pressCount <= 20)
		{
			resultMessage = "Bad";
		}
	}
}
