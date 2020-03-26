/// @description behaviour

if( !instance_exists(portrait) && o_ticketinspector.passenger_inspection==1 ){

    portrait = instance_create_layer(
    
        margin,
        margin,
		"instances",
        o_portrait
        
    );
	
	o_ticketinspector.passenger_inspection=0;

}

