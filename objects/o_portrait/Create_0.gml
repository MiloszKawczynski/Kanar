/// @description setup variables

depth = -10;

ticket = noone;

///give ticket

if(ticket == noone){

    ticket = instance_create_layer(x+sprite_width,y+sprite_height/2,"instances",o_ticket);

}

image_index=choose(0,1,2,3,4,5)
image_speed=0;