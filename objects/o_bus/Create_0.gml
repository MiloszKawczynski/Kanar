/// @description setting up bus

passengers = 0;

//spawning entrances

entrance[1] = instance_create_layer(672,704,"instances",o_entrance);
entrance[2] = instance_create_layer(1632,704,"instances",o_entrance);
entrance[3] = instance_create_layer(2560,704,"instances",o_entrance);
entrance[4] = instance_create_layer(3456,704,"instances",o_entrance);

for(var i = 1; i <= 4; i++){
	entrance[i].bus = id;
	entrance[i].spawn = true;
}

//new pasenger spawn timer

alarm_set(0,960);
