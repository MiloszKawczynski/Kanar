/// @description behaviour

if(portrait == noone && keyboard_check_pressed(ord("S"))){

    portrait = instance_create_layer(
    
        portrait_margin,
        portrait_margin,
		"instances",
        o_portrait
        
    );

}

