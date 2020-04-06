randomise();
/// @description spawn ticket

//give ticket

if(ticket == noone && passenger != noone){

    ticket = instance_create_layer(x+sprite_width,y+sprite_height/2,"instances",o_ticket);
	
	//passing value and type
	ticket.value = passenger.ticket_value;
	ticket.type = passenger.ticket_type;
	
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
	
	//passing code 
	ticket.code = passenger.ticket_code;
	
	//passing symbol on ticket
	ticket.symbol = passenger.ticket_symbol;
	
	//passing validation date and time
	ticket.time = passenger.ticket_time;
	
	ticket.owner = passenger;

}