draw_self();

draw_set_font(f_note_small);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);

if list==1
{
	for(var i=1;i<5;i++)
	{
		
		if collision_rectangle(mouse_x-101,mouse_y-(37*i),mouse_x+101,mouse_y-(37*i),self,1,0)
		{
			draw_sprite_ext(sprite_index,0,x,y+(40*i),1,1,0,c_red,1);
		}
		else
		{
			draw_sprite_ext(sprite_index,0,x,y+(40*i),1,1,0,c_white,1);
		}
		
		draw_set_color(c_black);
		draw_text(x,y+(40*i),reason[i])
	}
}

draw_text(x,y,choosed_reason);