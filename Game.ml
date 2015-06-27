(*****************************************************************************)
(*                                                                           *)
(*   Vincent Jacquier                                     :::      ::::::::  *)
(*   Jean-Jacques MOIROUX                               :+:      :+:    :+:  *)
(*                                                    +:+ +:+         +:+    *)
(*   By: vjacquie <vjacquie@student.42.fr>          +#+  +:+       +#+       *)
(*   By: jmoiroux <jjmoiroux@gmail.com>           +#+#+#+#+#+   +#+          *)
(*                                                     #+#    #+#            *)
(*   Created: 2015/06/26 by vjacquie jmoiroux         ###   ########.fr      *)
(*                                                                           *)
(*****************************************************************************)

include Type

class game =
	object (self)
		val _run = true

		method init_game (pet:Pet.pet) =
			let save = new Save.save in
			pet#init_all (save#load_game)

		method check_pos x value =
			if x >= (value - 50) && x <= (value + 50) then true
			else false

		method mouse pos pet render = match pos with
		| (x, y) when (self#check_pos x 150) = true && (self#check_pos y 400) = true -> begin
			pet#eat;
			Graphics.sound 440 1000; (* LA - 1 sec*)
			true
		end
		| (x, y) when (self#check_pos x 300) = true && (self#check_pos y 400) = true -> begin
			pet#thunder;
			Graphics.sound 440 1000; (* LA - 1 sec*)
			true
		end
		| (x, y) when (self#check_pos x 450) = true && (self#check_pos y 400) = true -> begin
			pet#bath;
			Graphics.sound 440 1000; (* LA - 1 sec*)
			true
		end
		| (x, y) when (self#check_pos x 600) = true && (self#check_pos y 400) = true -> begin
			pet#kill;
			Graphics.sound 440 1000; (* LA - 1 sec*)
			true
		end
		| (x, y) when (self#check_pos x 300) = true && (self#check_pos y 250) = true -> begin
			pet#restart;
			Graphics.sound 440 1000; (* LA - 1 sec*)
			true
		end
		| (x, y) when (self#check_pos x 450) = true && (self#check_pos y 250) = true -> begin
			let save = new Save.save in
			save#save pet;
			Graphics.sound 440 1000; (* LA - 1 sec*)
			false
		end
		| (_, _) -> true

		method sleep pet render last_timer = 
			if ((Unix.time ()) -. !last_timer) >= 1.0 then  begin
				pet#decrHealth;
				render#draw_screen pet;
				last_timer := Unix.time ()
			end
			else print_string "";

		method render_loop pet render =
			let last_timer = ref (Unix.time ()) in
			let rec loop pressed ite =
				self#sleep pet render last_timer;
				if pet#is_alive = false then print_endline "You lose you snooze" 
				else if (Graphics.button_down ()) = true then
					begin
						if pressed = false then begin
							let pos = Graphics.mouse_pos () in
							if (self#mouse pos pet render) = true then begin
								render#draw_screen pet;
								loop true 0
							end
							else print_endline "Exiting..." 
						end
						else begin loop true 0 end
					end
				else begin
					if (ite + 1) = 10 then
						loop false 0
					else if pressed = false then begin loop false 0 end
					else begin loop true (ite + 1) end
				end;
			in
			loop false 0

		method run_game =
			let pet = new Pet.pet in
			let render = new Render.render in
			self#init_game pet;
			render#draw_screen pet;

			self#render_loop pet render
	end
