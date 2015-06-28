include Type

class render =
	object (self)
		initializer Graphics.open_graph " 800x1000+900-250"

		method draw_square x y size =
			let s = size / 2 in
			Graphics.moveto (x - s) (y - s);
			Graphics.lineto (x + s) (y - s);
			Graphics.lineto (x + s) (y + s);
			Graphics.lineto (x - s) (y + s);
			Graphics.lineto (x - s) (y - s)

		method draw_button x y =
			self#draw_square x y 100;
			Graphics.moveto x y;
			Graphics.draw_string "EAT";
			self#draw_square (x + 150) y 100;
			Graphics.moveto (x + 120) y;
			Graphics.draw_string "THUNDER";
			self#draw_square (x + 300) y 100;
			Graphics.moveto (x + 290) y;
			Graphics.draw_string "BATH";
			self#draw_square (x + 450) y 100;
			Graphics.moveto (x + 440) y;
			Graphics.draw_string "KILL";
			self#draw_square (x + 150) (y - 150) 100;
			Graphics.moveto (x + 120) (y - 150);
			Graphics.draw_string "RESTART";
			self#draw_square (x + 300) (y - 150) 100;
			Graphics.moveto (x + 290) (y - 150);
			Graphics.draw_string "QUIT";
			(* bonus *)
			self#draw_square x (y - 150) 100;
			Graphics.moveto (x - 10) (y - 150);
			Graphics.draw_string "SLEEP";
			self#draw_square (x + 450) (y - 150) 100;
			Graphics.moveto (x + 430) (y - 150);
			Graphics.draw_string "DANCE"

		method draw_stats x y pet =
			Graphics.set_color Graphics.red;
			Graphics.moveto x y;
			Graphics.draw_string ("Health: " ^ (string_of_int pet#get_health));
			Graphics.set_color Graphics.blue;
			Graphics.moveto x (y - 20);
			Graphics.draw_string ("Energy: " ^ (string_of_int pet#get_energy));
			Graphics.set_color Graphics.green;
			Graphics.moveto x (y - 40);
			Graphics.draw_string ("Hygiene: " ^ (string_of_int pet#get_hygiene));
			Graphics.set_color Graphics.magenta;
			Graphics.moveto x (y - 60);
			Graphics.draw_string ("Happyness: " ^ (string_of_int pet#get_happyness));
			Graphics.set_color Graphics.black;

		method draw_screen (pet:Pet.pet) =
			let pickachu = new Pickachu.action in
			Graphics.clear_graph ();
			self#draw_stats 10 900 pet;
			self#draw_button 150 400;
			match pet#get_last_action with
				| Type.Eat		-> pickachu#eat 300 900
				| Type.Thunder	-> pickachu#thunder 300 900
				| Type.Bath		-> pickachu#bath 300 900
				| Type.Kill		-> pickachu#default 300 900
				| Type.Restart	-> pickachu#default 300 900
				| Type.Sleep	-> pickachu#sleep 300 900
				| Type.Dance	-> pickachu#dance 300 900
				| Type.Cheat	-> pickachu#cheat 300 900;		
	end
