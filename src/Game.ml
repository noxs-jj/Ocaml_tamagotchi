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
			true
		end
		| (x, y) when (self#check_pos x 300) = true && (self#check_pos y 400) = true -> begin
			pet#thunder;
			true
		end
		| (x, y) when (self#check_pos x 450) = true && (self#check_pos y 400) = true -> begin
			pet#bath;
			true
		end
		| (x, y) when (self#check_pos x 600) = true && (self#check_pos y 400) = true -> begin
			pet#kill;
			true
		end
		| (x, y) when (self#check_pos x 300) = true && (self#check_pos y 250) = true -> begin
			pet#restart;
			true
		end
		| (x, y) when (self#check_pos x 450) = true && (self#check_pos y 250) = true -> false
		| (_, _) -> true

		method render_loop pet render =
			let rec loop run =
				if (Graphics.button_down ()) = true then
					begin
						let pos = Graphics.mouse_pos () in
						if (self#mouse pos pet render) = true then begin
							render#draw_screen pet;
							loop run
						end
						else print_endline "Exiting..." 
					end
				else loop run
			in
			loop true

		method run_game =
			let pet = new Pet.pet in
			let render = new Render.render in
			print_endline "run_game";
			self#init_game pet;
			render#draw_screen pet;

			self#render_loop pet render
	end


(* 

	eat			150 400
	thunder		300 400
	bath		450 400
	kill		600 400

	restart		300 250
	quit		450 250

 *)