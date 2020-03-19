/// @description setup variables

depth = -10;

ticket = noone;

///give ticket

if(ticket == noone){

    ticket = instance_create_layer(x+sprite_width,y+sprite_height/2,"instances",o_ticket);

}

//Losowanie twarzy

image_speed=0;
image_index=irandom_range(0,image_number-1)