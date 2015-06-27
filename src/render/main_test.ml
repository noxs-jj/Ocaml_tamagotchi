(*
ocamlfind ocamlc -g -package lablgtk2 -linkpkg main_test.ml -o test_render && ./test_render
*)

type data = {
	mutable health : int;
	mutable energy : int;
	mutable hygiene : int ;
	mutable happyness : int
}

let get_record = {health = 100; energy = 100; hygiene = 100; happyness = 100}

class pet =
	object (self)
		val mutable _health = 100
		val mutable _energy = 100
		val mutable _hygiene = 100
		val mutable _happyness = 100

		method init_all (d:data) =
			_health <- d.health;
			_energy <- d.energy;
			_hygiene <- d.hygiene;
			_happyness <- d.happyness

		method eat =
			print_string "method pet.eat success health: ";
			_health <- _health + 20;
			_energy <- _energy - 10;
			_hygiene <- _hygiene - 20;
			_happyness <- _happyness + 5;
			print_endline (string_of_int _health)

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

		method getHealth = _health
		method getEnergy = _energy
		method getHygiene = _hygiene
		method getHappyness = _happyness

		method is_alive =
			if _health = 0 || _energy = 0 || _hygiene = 0 || _happyness = 0 then false
			else true

		method pikachu =
			" :::,\n" ^
			" '::::'._\n" ^
			"   '.    '.                        __.,,.\n" ^
			"     '.    '.                _..-'''':::\"\n" ^
			"       \\     \\,.--\"\"\"\"--.,-''      _:'\n" ^
			"   /\\   \\  .               .    .-'\n" ^
			  	"            '':---''_)      '-'-'\n" ^
			"  /  \\   \\                   ':'\n" ^
			" /    \\  :                     :\n" ^
			"/      \\:                       :\n" ^
			"\\       :                       :\n" ^
			" \\      :      ,--,         ,-,  :\n" ^
			"  \\    :      |(_):|       |():| :\n" ^
			"   \\   :     __'--'   __    '-'_  :\n" ^
			"    \\  :    /  \\      \\/      / \\ :\n" ^
			"     \\  :  (    )             \\_/ :\n" ^
			"  .-'' . :  \\__/   '--''--'      :\n" ^
			"  \\  . .-:'.                   .:\n" ^
			"   \' :| :  '-.__      ___...-' :\n" ^
			"    \\::|:        ''''''          '.\n" ^
			"  .,:::':  :                       '.\n" ^
			"   \\::\\:   :                         '._\n" ^
			"    \\::    :     /             '-._     '.\n" ^
			"     \\:    :    /              .   :-._ :-'\n" ^
			"      :    :   /               :   :  ''\n" ^
			"      :   .'   )'.             :   :\n" ^
			"       :  :  .'   '.          :   :\n" ^
			"        : '..'      :      _.' _.:\n" ^
			"         '._        :..---'\'''  _)\n" ^
			"            '':---''_)      '-'-'\n" ^
			"               '-'-'  PIKACHU!\n"
	end



class render =
	object (self)
		val locale = GtkMain.Main.init ()
		val win_x = 250
		val win_y = 720
		val win_title = "Tamagotchi by jmoiroux & vjacquie"

		val tama = new pet


		method loadButtons vbox = (* ACTION *)
			let button1 = GButton.button ~label:"EAT Function" ~packing:vbox#add () in
			let button2 = GButton.button ~label:"THUNDER Function" ~packing:vbox#add () in
			let button3 = GButton.button ~label:"BATH Function" ~packing:vbox#add () in
			let button4 = GButton.button ~label:"KILL Function" ~packing:vbox#add () in
			ignore(button1#connect#clicked ~callback: (fun () -> tama#eat; prerr_endline "EAT Function"));
			ignore(button2#connect#clicked ~callback: (fun () -> prerr_endline "THUNDER Function"));
			ignore(button3#connect#clicked ~callback: (fun () -> prerr_endline "BATH Function"));
			ignore(button4#connect#clicked ~callback: (fun () -> prerr_endline "KILL Function"))


		method loadButtonsTop vbox = (* STATUS *)
			let button1 = GButton.button ~label:(string_of_int tama#getHealth) ~packing:vbox#add () in
			let button2 = GButton.button ~label:(string_of_int tama#getEnergy) ~packing:vbox#add () in
			let button3 = GButton.button ~label:(string_of_int tama#getHygiene) ~packing:vbox#add () in
			let button4 = GButton.button ~label:(string_of_int tama#getHappyness) ~packing:vbox#add () in
			print_string ""; ignore(button1); ignore(button2); ignore(button3); ignore(button4)


		method init =
			let window = GWindow.window	~width:win_x
										~height:win_y
										~title:win_title
										~position:`CENTER
										~resizable:false () in



			let mainContainer = GPack.vbox ~packing:window#add ~show:true () in
			let head = GPack.vbox ~packing:mainContainer#add ~show:true () in
			let headStatus = GPack.hbox ~height:110 ~packing:mainContainer#add ~show:true () in (* STATUS *)
			let image = GPack.hbox ~height:480 ~packing:mainContainer#add ~show:true () in (* PET IMAGE *)
			let footer = GPack.hbox ~height:110 ~packing:mainContainer#add ~show:true () in (* ACTION *)

			ignore(window#connect#destroy ~callback:GMain.Main.quit);
			ignore(image);
			
			(* START File menu *)
			let menubar1 = GMenu.menu_bar ~packing:head#pack () in
			let factory1 = new GMenu.factory menubar1 in
			let accel_group = factory1#accel_group in
			let file_menu = factory1#add_submenu "File" in
			let factory = new GMenu.factory file_menu ~accel_group in
			ignore(factory#add_item "Quit" ~key:GdkKeysyms._Q ~callback: GMain.Main.quit);
			(* END File menu *)


			(* START image pix https://mindsized.org/spip.php?article243 *)



			(* END image pix*)

			self#loadButtonsTop headStatus; (* STATUS *)

			self#loadButtons footer; (* ACTION *)
			let buttonPika = GButton.button ~label:tama#pikachu ~packing:image#add () in
			ignore(buttonPika);


			(* Display the windows and enter Gtk+ main loop *)
			window#add_accel_group accel_group;
			window#show ();
			GMain.Main.main ()
	end


let main () =
	let render = new render in
	render#init

let () = main ()
