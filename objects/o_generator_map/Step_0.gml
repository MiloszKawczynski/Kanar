if keyboard_check_pressed(ord("R")) {room_restart();}
if keyboard_check_pressed(vk_enter) {room_goto(r_test);}

x=mouse_x;
y=mouse_y;

choose_station=instance_nearest(x,y,o_station);

if mouse_check_button_pressed(mb_left)
{
	actual_statoion=choose_station;
}