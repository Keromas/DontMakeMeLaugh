///@description switch side

switch side
{
	case LEFT: //is LEFT
		side = RIGHT;
		x -= spd*2;
		break;
	case RIGHT: //is RIGHT
		side = LEFT;
		x += spd*2;
		break;
}