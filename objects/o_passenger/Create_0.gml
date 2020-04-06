/// @description setting passenger
randomise();

depth = -25;

//create ticket
	
	//choosing value and type
	ticket_value = choose(20,40,60);
	ticket_type = choose("reduced","normal");
	
	//choosing code 
	//(provisional)
	ticket_code = choose("Pfagfr","R345reg","Erdg34t","Erdg34t","Erdg34t","Erdg34t","Erdg34t");
	
	//choosing symbol on ticket
	//(provisional)
	ticket_symbol = choose(0,0,0,0,0,0,0,0,0,0,0,1,2,3,4,5);
	
	//choosing validation date and time
	//(provisional)
	ticket_time = choose(global.time+irandom_range(0,20),global.time+irandom_range(-1200,-ticket_value),global.time+irandom_range(-30,0));

//Losowanie twarzy
portrait = irandom_range(0,image_number-1)
