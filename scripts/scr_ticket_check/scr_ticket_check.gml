var good = true;

//check time if expired
if(floor(global.time) > floor(o_ticket.time) + o_ticket.value)
	good = false;

//check if time higher that current (forged)
if(floor(global.time) < floor(o_ticket.time))
	good = false;
	
//check code
if(o_ticket.code != "Erdg34t")
	good = false;
	
//check symbol (sprite)
if(o_ticket.symbol != 0)
	good = false;
	

return good;