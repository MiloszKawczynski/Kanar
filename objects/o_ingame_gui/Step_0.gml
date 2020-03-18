/// @description behaviour

if( !instance_exists(portrait) && keyboard_check_pressed(ord("S")) ){

    portrait = instance_create_layer(
    
        margin,
        margin,
		"instances",
        o_portrait
        
    );

}

