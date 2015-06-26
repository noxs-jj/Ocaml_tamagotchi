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

let main argc argv =
	let game = new Game.game in
	game#run_game argc argv

let () =
	print_endline "before main";
	let argv = Array.to_list Sys.argv in
	begin try
		main (List.length argv) argv
	with
	| Failure err -> print_endline err
	| _ -> failwith "Bad arg"
	end