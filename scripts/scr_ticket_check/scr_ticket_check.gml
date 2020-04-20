var state = "good";

//check time if expired
if(floor(global.time) > floor(o_ticket.time) + o_ticket.value)
	state = "expired";

//check if time higher that current (forged)
if(floor(global.time) < floor(o_ticket.time))
	state = "forged";
	
//check code
if(o_ticket.code != "Erdg34t")
	state = "wrong_code";
	
//check symbol (sprite)
if(o_ticket.symbol != 0)
	state = "wrong_symbol";
	

return state;