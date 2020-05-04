/// @description setting passenger
randomise();

hspeed_value=10//speed horizonatal
vspeed_value=5//speed vertical

range=500//how far horizontally passenger may go from doors


//(enteredx,enteredy) -- point to which passenger will head towards
enteredy=irandom_range(900,1050);
enteredx=irandom_range(x-range,x+range);


standingzone=10 // area that passenger will be standing after reaching coordinates close enough (prevents from weird wobblying)
vdirection=0 //vertical dirtection
hdirection=0 //horizontal direction

//initiate passenger state

state = state.staying;
checked = false;

//create ticket

	//deciding if passenger wants to ride illegaly
	var rnd = random_range(0,1);
	if(rnd <= 1/5){
		//evil = choose(1,2,3,4);	
		evil = 3;
	}else 
		evil = 0;
	
	//choosing value and type
	ticket_value = choose(20,40,60);
	ticket_type = choose("reduced","normal");
	
	//choosing code 
	if(evil == 1)
		do
			ticket_code = choose("Pfagfr","R345reg","Erdg34t");
		until(ticket_code != global.code)
	else
		ticket_code = global.code;
		
	
	//choosing symbol on ticket
	if(evil == 2)
		do
			ticket_symbol = choose(0,1,2,3,4,5);
		until(ticket_symbol != global.symbol)
	else
		ticket_symbol = global.symbol;
		
	//is the ticket validated
	if(evil == 3)
		ticket_valid = false;
	else
		ticket_valid = true;
	
	//choosing validation date and time
	if(evil == 4)
		ticket_time = global.time+irandom_range(-1200,-ticket_value-1);
	else
		ticket_time = global.time-ticket_value+irandom_range(10,ticket_value-5);

//Losowanie twarzy
portrait = irandom_range(0,8-1);

move_check_success=300// how big is the chance of small movement (1000 is 100%)
move_check_time=1 //how often there will be check on small movement
xrange=100//how far in x axis passenger can move
yrange=50//how far in y axis passenger can move
latency = random(2) //latency for desyncing movement of passengers

//small movement check
alarm[0] = (move_check_time+latency)*room_speed;

//newcomer check
newcomer=true