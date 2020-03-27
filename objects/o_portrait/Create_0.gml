randomise();
/// @description setup variables

depth = -10;

ticket = noone;

///give ticket

if(ticket == noone){

    ticket = instance_create_layer(x+sprite_width,y+sprite_height/2,"instances",o_ticket);
	
	//choosing value and type
	ticket.value = choose(20,40,60);
	ticket.type = choose("reduced","normal");
	
	//picking a proper price for value and type
	switch (ticket.value){
	
		case 20: 
			if(ticket.type == "reduced")
				ticket.price = 1.40;
			if(ticket.type == "normal")
				ticket.price = 2.80;
		break;
		case 40: 
			if(ticket.type == "reduced")
				ticket.price = 2.80;
			if(ticket.type == "normal")
				ticket.price = 5.60;
		break;
		case 60: 
			if(ticket.type == "reduced")
				ticket.price = 4.20;
			if(ticket.type == "normal")
				ticket.price = 8.40;
		break;
	
	}
	
	//choosing code 
	//(provisional)
	ticket.code = choose("Pfagfr","R345reg","Erdg34t","Erdg34t","Erdg34t","Erdg34t","Erdg34t");
	
	//choosing symbol on ticket
	//(provisional)
	ticket.symbol = choose(0,0,0,0,0,0,0,0,0,0,0,1,2,3,4,5);
	
	//choosing validation date and time
	//(provisional)
	
	ticket.time = choose(global.time+irandom_range(0,20),global.time+irandom_range(-1200,-ticket.value),global.time+irandom_range(-30,0));

}

//Losowanie twarzy

image_speed=0;
image_index=irandom_range(0,image_number-1)