/// @description variables setup

depth = -20;

pickable = false;
slide = true;

speed = 10;
direction = 0;

state = state.free;

mouse_border_y = o_ingame_gui.height;
mouse_border_x = o_ingame_gui.width - o_ingame_gui.portrait_width - o_ingame_gui.margin;

margin = 8;

//ticket properties

//for how long ticket is valid and its price (price just for display)
value = 0;
price = 0;
type = "";

//when was the ticket validated
time = 0;

//ticked security code
code = "";

//is ticket symbol correct 0 - yes, other - forged/obscured
symbol = 0;