/// @description Insert description here
// You can write your code in this editor
draw_self()
//draw_text(960,480,o_passenger.enteredx)
//draw_text(960,360,pass_id)

if pass_id!=noone and !instance_exists(o_ticket)
{
	draw_sprite_ext(s_portrait,pass_id.portrait,o_ingame_gui.margin, o_ingame_gui.margin,1,1,0,c_white,0.25);
}