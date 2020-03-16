/// @description behaviour

if( !instance_exists(portrait) && keyboard_check_pressed(ord("S")) ){

    portrait = instance_create_layer(
    
        portrait_margin,
        portrait_margin,
		"instances",
        o_portrait
        
    );

}

