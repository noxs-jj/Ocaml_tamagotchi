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

class pet =
	object (self)
		val mutable _health = 100
		val mutable _energy = 100
		val mutable _hygiene = 100
		val mutable _happyness = 100

		method eat =
			_health <- _health + 20;
			_energy <- _energy - 10;
			_hygiene <- _hygiene - 20;
			_happyness <- _happyness + 5

		method thunder =
			_health <- _health - 20;
			_energy <- _energy + 25;
			_happyness <- _happyness - 20

		method bath =
			_health <- _health - 20;
			_energy <- _energy - 10;
			_hygiene <- _hygiene + 25;
			_happyness <- _happyness + 5

		method kill =
			_health <- _health - 20;
			_energy <- _energy - 10;
			_happyness <- _happyness + 20

		method is_alive =
			if _health = 0 || _energy = 0 || _hygiene = 0 || _happyness = 0 then false
			else true
	end
