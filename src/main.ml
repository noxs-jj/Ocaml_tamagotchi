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

let main () =
	let game = new Game.game in
	begin try
		ignore (game#run_game)
	with
		| Failure err -> print_endline err
		| _ -> print_endline "Error"
	end
	

let () = main ()
