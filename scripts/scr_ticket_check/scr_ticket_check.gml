var state = "good";

//check time if expired
if(floor(global.time) > floor(o_ticket.time) + o_ticket.value)
	state = "expired";

//check if its validated
if(o_ticket.valid == false)
	state = "unvalidated";
	
//check code
if(o_ticket.code != global.code)
	state = "code";
	
//check symbol (sprite)
if(o_ticket.symbol != global.symbol)
	state = "symbol";
	

return state;