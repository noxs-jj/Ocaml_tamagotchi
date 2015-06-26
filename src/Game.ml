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
		method init_game (ac:int) (av:string list) (pet:Pet.pet) =
			let save = new Save.save in
			if ac = 2 && (List.nth av 1) = "-l" then pet#init_all (save#load_game)
			else print_endline "init_game"

		method run_game (ac:int) (av:string list) =
			let pet = new Pet.pet in
			print_endline "run_game";
			self#init_game ac av pet
	end