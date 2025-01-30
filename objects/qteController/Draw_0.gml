/// @description Draws the QTE Event 

draw_text(10, 10, "Time Remaining: " + string(floor(timer / spd)));
draw_text(10, 30, "Press Count: " + string(pressCount));

if(!qteActive)
{
	draw_text(10, 50, "Result: " + resultMessage);	
}
