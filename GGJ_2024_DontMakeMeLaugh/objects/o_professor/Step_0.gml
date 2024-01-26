
#region Déplacements

x += lengthdir_x(spd, dir);

if side == 0
{
	dir = 0; //TO RIGHT
}

if side == 1
{
	dir = 180; //TO LEFT
}
if x < originalX
{
	event_user(0);
}

if x > destinationX
{
	event_user(0);
}

#endregion