let locale = GtkMain.Main.init ()

class render =
	object (self)
		val win_x = 1280
		val win_y = 720
		val win_title = "Tamagotchi by jmoiroux & vjacquie"
		
		method loadButtons vbox =
			let button1 = GButton.button ~label:"EAT Function" ~packing:vbox#add () in
			let button2 = GButton.button ~label:"THUNDER Function" ~packing:vbox#add () in
			let button3 = GButton.button ~label:"BATH Function" ~packing:vbox#add () in
			let button4 = GButton.button ~label:"KILL Function" ~packing:vbox#add () in
			ignore(button1#connect#clicked ~callback: (fun () -> prerr_endline "EAT Function"));
			ignore(button2#connect#clicked ~callback: (fun () -> prerr_endline "THUNDER Function"));
			ignore(button3#connect#clicked ~callback: (fun () -> prerr_endline "BATH Function"));
			ignore(button4#connect#clicked ~callback: (fun () -> prerr_endline "KILL Function"));

		method loadButtonsTop vbox =
			let button1 = GButton.button ~label:"Health Status" ~packing:vbox#add () in
			let button2 = GButton.button ~label:"Energy Status" ~packing:vbox#add () in
			let button3 = GButton.button ~label:"Hygiene Status" ~packing:vbox#add () in
			let button4 = GButton.button ~label:"Happyness Status" ~packing:vbox#add () in
			ignore(button1#connect#clicked ~callback: (fun () -> prerr_endline "health Status"));
			ignore(button2#connect#clicked ~callback: (fun () -> prerr_endline "energy Status"));
			ignore(button3#connect#clicked ~callback: (fun () -> prerr_endline "hygiene Status"));
			ignore(button4#connect#clicked ~callback: (fun () -> prerr_endline "happyness Status"))


		method init =
			let window = GWindow.window	~width:win_x
										~height:win_y
										~title:win_title
										~position:`CENTER
										~resizable:false () in


			let mainContainer = GPack.vbox ~width:500 ~height:100 ~packing:window#add ~show:true () in
			let footer = GPack.vbox ~width:500 ~height:100 ~packing:mainContainer#add ~show:true () in
			let image = GMisc.drawing_area ~width:500 ~height:400 ~packing:mainContainer#add ~show:true () in
			let head = GPack.vbox ~width:500 ~height:100 ~packing:mainContainer#add ~show:true () in
			

			ignore(window#connect#destroy ~callback:GMain.Main.quit);

			let menubar1 = GMenu.menu_bar ~packing:footer#pack () in
			let factory1 = new GMenu.factory menubar1 in
			let accel_group = factory1#accel_group in
			let file_menu = factory1#add_submenu "File" in
			(* File menu *)
			let factory = new GMenu.factory file_menu ~accel_group in
			ignore(factory#add_item "Quit" ~key:GdkKeysyms._Q ~callback: GMain.Main.quit);


			self#loadButtonsTop footer;
			self#loadButtons head;			
			(* Display the windows and enter Gtk+ main loop *)
			window#add_accel_group accel_group;
			window#show ();
			GMain.Main.main ()
	end


let main () =
	let render = new render in
	render#init

let () = main ()
