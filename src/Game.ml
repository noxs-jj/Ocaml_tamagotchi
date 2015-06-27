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

		method render_loop pet render =
			let rec loop run =
				if run = true then loop true
				else print_endline "Exiting ..."
			in
			loop true

		method run_game () =
			let pet = new Pet.pet in
			let render = new Render.render in
			print_endline "run_game";
			self#init_game pet;
			render#draw_screen pet;

			self#render_loop pet render
			(* ignore (Graphics.read_key ()); *)
	end