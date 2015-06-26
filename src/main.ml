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

let file = "save/save.itama"

let main argc argv =
	let game = new Game.game in
	game#run_game argc argv;
	print_endline "test"

let () =
	let argv = Sys.argv in
	let argc = Array.length argv in
	begin try
		main argc argv
	with
	| Failure err -> print_endline err
	| _ -> failwith "Bad arg"
	end