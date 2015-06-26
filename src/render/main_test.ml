let locale = GtkMain.Main.init ()

class render =
	object (self)
		val win_x = 1280
		val win_y = 720
		val win_title = "Tamagotchi by jmoiroux & vjacquie"

		
		method loadButtons vbox =
			let button1 = GButton.button ~label:"EAT" ~packing:vbox#add () in
			let button2 = GButton.button ~label:"THUNDER" ~packing:vbox#add () in
			let button3 = GButton.button ~label:"BATH" ~packing:vbox#add () in
			let button4 = GButton.button ~label:"KILL" ~packing:vbox#add () in
			ignore(button1#connect#clicked ~callback: (fun () -> prerr_endline "EAT"));
			ignore(button2#connect#clicked ~callback: (fun () -> prerr_endline "THUNDER"));
			ignore(button3#connect#clicked ~callback: (fun () -> prerr_endline "BATH"));
			ignore(button4#connect#clicked ~callback: (fun () -> prerr_endline "KILL"));

		method loadButtonsTop vbox =
			let button1 = GButton.button ~label:"health" ~packing:vbox#add () in
			let button2 = GButton.button ~label:"energy" ~packing:vbox#add () in
			let button3 = GButton.button ~label:"hygiene" ~packing:vbox#add () in
			let button4 = GButton.button ~label:"happyness" ~packing:vbox#add () in
			ignore(button1#connect#clicked ~callback: (fun () -> prerr_endline "health"));
			ignore(button2#connect#clicked ~callback: (fun () -> prerr_endline "energy"));
			ignore(button3#connect#clicked ~callback: (fun () -> prerr_endline "hygiene"));
			ignore(button4#connect#clicked ~callback: (fun () -> prerr_endline "happyness"))


		method init =
			let window = GWindow.window	~width:win_x
										~height:win_y
										~title:win_title
										~position:`CENTER
										~resizable:false () in


			let footer = GPack.vbox ~width:500 ~height:100 ~packing:window#add ~show:true () in
			let head = GPack.vbox ~width:500 ~height:100 ~packing:footer#add ~show:true () in
			let image = GMisc.drawing_area ~width:500 ~height:400 ~packing:footer#add ~show:true () in
			

			ignore(window#connect#destroy ~callback:GMain.Main.quit);



			let menubar1 = GMenu.menu_bar ~packing:head#pack () in
			let factory1 = new GMenu.factory menubar1 in
			let accel_group = factory1#accel_group in
			let file_menu = factory1#add_submenu "File" in
			(* File menu *)
			let factory = new GMenu.factory file_menu ~accel_group in
			ignore(factory#add_item "Quit" ~key:GdkKeysyms._Q ~callback: GMain.Main.quit);


			self#loadButtonsTop head;
			self#loadButtons footer;
			
			(* Display the windows and enter Gtk+ main loop *)
			window#add_accel_group accel_group;
			window#show ();
			GMain.Main.main ()
	end


let main () =
	let render = new render in
	render#init

let () = main ()
