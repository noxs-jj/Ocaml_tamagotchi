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
		(* method init_game ac av pet =
			if ac = 2 && av.(1) = "-n" then pet#init_all (Save#load_game); *)
		method run_game (ac:int) (av:string array) =
			let pet = new Pet.pet in
			print_endline "testtest"
			(* self#init_game ac av pet *)
	end