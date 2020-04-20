/// @description click to mandacik

if(mouse_check_button_pressed(mb_left) && instance_exists(o_portrait)){
    
	if(collision_point(mouse_x,mouse_y,id,0,0)){
        
		ticket_state = scr_ticket_check();
		
		if(ticket_state != "good")
			global.points++;
		else
			global.points--;
			
		instance_destroy(o_portrait);
		o_ticket.owner.checked = true;
		instance_destroy(o_ticket);

	}
    
}
