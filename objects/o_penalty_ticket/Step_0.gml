 /// @description ticket movement

//slide at the beggining
if(slide == true)
if(speed > 0){

    speed -= 0.4;

}else{

    pickable = true;
    slide = false;

}

//moving the ticket
if(pickable == true){

    if(mouse_check_button_pressed(mb_left) && state == state.free  && o_ingame_gui.cursor_state == state.c_free){
    
        if(collision_point(mouse_x,mouse_y,id,0,0)){
        
            state = state.picked;
			o_ingame_gui.cursor_state = state.c_picking;
            
            pick_offset_x = x - mouse_x;
            pick_offset_y = y - mouse_y;
            
        }
    
    }
    
    if(state == state.picked && mouse_check_button_released(mb_left)){
    
		//giving the ticket back
		portrait = instance_place(x,y,o_portrait);
		if(portrait != noone){
			
			if o_ticket.ticket_state==reason
			{
				global.points++;
			}
			else
			{
				global.points--;
			}
			
			instance_destroy(portrait);
			owner=o_ticket.owner;
			owner.checked = true;
			if instance_exists(o_ticket) {instance_destroy(o_ticket);}
			instance_destroy();
		
		}else{
		
			state = state.free;
		
		}
		
		o_ingame_gui.cursor_state = state.c_free;
    
    }

}

if(state == state.picked){

	//checking borders
	
	//bottom
	if(mouse_y + pick_offset_y + sprite_height/2 + margin < mouse_border_y){
		
		//up
		if(mouse_y + pick_offset_y - sprite_height/2 - margin > 0){
		
			y = mouse_y + pick_offset_y;
		
		}else{
			//up else
			y = sprite_height/2 + margin;
	
		}
		
	}else{
		//bottom else
		y = mouse_border_y - sprite_height/2 - margin;
	
	}
	
	//right
	if(mouse_x + pick_offset_x + sprite_width/2 + margin < mouse_border_x){
		
		//left
		if(mouse_x + pick_offset_x - sprite_width/2 - margin > 0){
		
			x = mouse_x + pick_offset_x;
		
		}else{
			//left else
			x = sprite_width/2 + margin;
	
		}
	
	
	}else{
		//right else
		x = mouse_border_x - sprite_width/2 - margin;
	
	}

}
