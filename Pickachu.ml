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

include Type

class action =
	object (self)
		method default x y =
			Graphics.moveto x (y - 10);
			Graphics.draw_string " '::::'._";
			Graphics.moveto x (y - 20);
			Graphics.draw_string "   '.    '.                        __.,,.";
			Graphics.moveto x (y - 30);
			Graphics.draw_string "     '.    '.                _..-'''':::\"";
			Graphics.moveto x (y - 40);
			Graphics.draw_string "       \\     \\,.--\"\"\"\"--.,-''      _:'";
			Graphics.moveto x (y - 50);
			Graphics.draw_string "   /\\   \\  .               .    .-'";
			Graphics.moveto x (y - 60);
			Graphics.draw_string "            '':---''_)      '-'-'";
			Graphics.moveto x (y - 70);
			Graphics.draw_string "  /  \\   \\                   ':'";
			Graphics.moveto x (y - 80);
			Graphics.draw_string " /    \\  :                     :";
			Graphics.moveto x (y - 90);
			Graphics.draw_string "/      \\:                       :";
			Graphics.moveto x (y - 100);
			Graphics.draw_string "\\       :                       :";
			Graphics.moveto x (y - 110);
			Graphics.draw_string " \\      :      ,--,         ,-,  :";
			Graphics.moveto x (y - 120);
			Graphics.draw_string "  \\    :      |(_):|       |():| :";
			Graphics.moveto x (y - 130);
			Graphics.draw_string "   \\   :     __'--'   __    '-'_  :";
			Graphics.moveto x (y - 140);
			Graphics.draw_string "    \\  :    /  \\      \\/      / \\ :";
			Graphics.moveto x (y - 150);
			Graphics.draw_string "     \\  :  (    )             \\_/ :";
			Graphics.moveto x (y - 160);
			Graphics.draw_string "  .-'' . :  \\__/   '--''--'      :";
			Graphics.moveto x (y - 170);
			Graphics.draw_string "  \\  . .-:'.                   .:";
			Graphics.moveto x (y - 180);
			Graphics.draw_string "   \' :| :  '-.__      ___...-' :";
			Graphics.moveto x (y - 190);
			Graphics.draw_string "    \\::|:        ''''''          '.";
			Graphics.moveto x (y - 200);
			Graphics.draw_string "  .,:::':  :                       '.";
			Graphics.moveto x (y - 210);
			Graphics.draw_string "   \\::\\:   :                         '._";
			Graphics.moveto x (y - 220);
			Graphics.draw_string "    \\::    :     /             '-._     '.";
			Graphics.moveto x (y - 230);
			Graphics.draw_string "     \\:    :    /              .   :-._ :-'";
			Graphics.moveto x (y - 240);
			Graphics.draw_string "      :    :   /               :   :  ''";
			Graphics.moveto x (y - 250);
			Graphics.draw_string "      :   .'   )'.             :   :";
			Graphics.moveto x (y - 260);
			Graphics.draw_string "       :  :  .'   '.          :   :";
			Graphics.moveto x (y - 270);
			Graphics.draw_string "        : '..'      :      _.' _.:";
			Graphics.moveto x (y - 280);
			Graphics.draw_string "         '._        :..---'\'''  _)";
			Graphics.moveto x (y - 290);
			Graphics.draw_string "            '':---''_)      '-'-'";
			Graphics.moveto x (y - 300);
			Graphics.draw_string "               '-'-'  PIKACHU!"

		method happyness x y = 
			Graphics.moveto x (y - 10);
			Graphics.draw_string "_¶___________¶¶¶";
			Graphics.moveto x (y - 20);
			Graphics.draw_string "_¶¶__________¶__¶";
			Graphics.moveto x (y - 30);
			Graphics.draw_string "¶__¶_________¶___¶";
			Graphics.moveto x (y - 40);
			Graphics.draw_string "¶___¶________¶___¶";
			Graphics.moveto x (y - 50);
			Graphics.draw_string "¶____¶_______¶____¶¶¶¶¶¶";
			Graphics.moveto x (y - 60);
			Graphics.draw_string "¶_____¶______¶__________¶¶";
			Graphics.moveto x (y - 70);
			Graphics.draw_string "¶______¶¶¶__¶_¶¶_________¶¶¶¶¶¶¶¶¶¶¶¶¶";
			Graphics.moveto x (y - 80);
			Graphics.draw_string "¶_____¶___¶¶_¶¶¶¶________________¶¶¶¶";
			Graphics.moveto x (y - 90);
			Graphics.draw_string "_¶___¶___¶¶___¶¶___________¶¶¶¶¶¶";
			Graphics.moveto x (y - 100);
			Graphics.draw_string "__¶__¶__¶___¶_____¶___¶¶¶¶_¶";
			Graphics.moveto x (y - 110);
			Graphics.draw_string "___¶_¶_¶______________¶¶¶¶_¶";
			Graphics.moveto x (y - 120);
			Graphics.draw_string "¶¶¶__¶¶_________¶¶¶¶______¶";
			Graphics.moveto x (y - 130);
			Graphics.draw_string "¶___¶__¶_________¶¶____¶__¶";
			Graphics.moveto x (y - 140);
			Graphics.draw_string "_¶___¶_¶_________________¶";
			Graphics.moveto x (y - 150);
			Graphics.draw_string "__¶__¶_¶________________¶¶";
			Graphics.moveto x (y - 160);
			Graphics.draw_string "___¶_¶¶___________________¶¶";
			Graphics.moveto x (y - 170);
			Graphics.draw_string "____¶¶_________________¶¶___¶";
			Graphics.moveto x (y - 180);
			Graphics.draw_string "____¶_________________¶__¶___¶";
			Graphics.moveto x (y - 190);
			Graphics.draw_string "___¶_________________¶____¶¶¶¶";
			Graphics.moveto x (y - 200);
			Graphics.draw_string "__¶___________________¶";
			Graphics.moveto x (y - 210);
			Graphics.draw_string "__¶____________________¶";
			Graphics.moveto x (y - 220);
			Graphics.draw_string "__¶_____¶¶¶¶¶¶¶¶_______¶";
			Graphics.moveto x (y - 230);
			Graphics.draw_string "___¶__¶¶________¶¶____¶";
			Graphics.moveto x (y - 240);
			Graphics.draw_string "___¶__¶___________¶____¶¶";
			Graphics.moveto x (y - 250);
			Graphics.draw_string "__¶¶¶¶_____________¶¶¶¶¶¶¶¶";

		method dance x y =
			Graphics.moveto x (y - 10);
			Graphics.draw_string "                   ,-'\"-.";
			Graphics.moveto x (y - 20);
			Graphics.draw_string "             __...| .\".  |";
			Graphics.moveto x (y - 30);
			Graphics.draw_string "        ,--+\"     ' |   ,'";
			Graphics.moveto x (y - 40);
			Graphics.draw_string "       | .'   ..--,  `-' `.";
			Graphics.moveto x (y - 50);
			Graphics.draw_string "       |/    |  ,' |       :";
			Graphics.moveto x (y - 60);
			Graphics.draw_string "       |\\...-+-\".._|       |";
			Graphics.moveto x (y - 70);
			Graphics.draw_string "     ,\"            `--.     `.     _..-'+\"/__";
			Graphics.moveto x (y - 80);
			Graphics.draw_string "    /   .              |      :,-\"'     `\" |_'";
			Graphics.moveto x (y - 90);
			Graphics.draw_string " ..| .    _,....___,'  |    ,'            /";
			Graphics.moveto x (y - 100);
			Graphics.draw_string ".\'.__.-\\  /V     |   '                ,'\"\"";
			Graphics.moveto x (y - 110);
			Graphics.draw_string "`. |  `:  \\.       |  .               ,'         ,.-.";
			Graphics.moveto x (y - 120);
			Graphics.draw_string "  `:       |       |  '             .^.        ,' ,\"`.";
			Graphics.moveto x (y - 130);
			Graphics.draw_string "    `.     |       | /               _.\\.---..'  /   |     ,-,.";
			Graphics.moveto x (y - 140);
			Graphics.draw_string "      `._  A      / j              .\"       /   /    |   .',' |";
			Graphics.moveto x (y - 150);
			Graphics.draw_string "         `. `...-' ,'             /        /._ /     | ,' /   |";
			Graphics.moveto x (y - 160);
			Graphics.draw_string "           |\"-----'             ,'        /   /-.__  |'  /    |";
			Graphics.moveto x (y - 170);
			Graphics.draw_string "           | _.--'\"'\"\"`.       .         /   /     `\"^-.,     |";
			Graphics.moveto x (y - 180);
			Graphics.draw_string "           |\"       ____\\     j             j            `\"--.|";
			Graphics.moveto x (y - 190);
			Graphics.draw_string "           |  _.-\"\"'     \\    |             |                j";
			Graphics.moveto x (y - 200);
			Graphics.draw_string "         _,+.\"_           \\   |             |                |";
			Graphics.moveto x (y - 210);
			Graphics.draw_string "        '    . `.     _.-\"'.     ,          |                '";
			Graphics.moveto x (y - 220);
			Graphics.draw_string "       |_    | `.`. ,'      `.   |          |               .";
			Graphics.moveto x (y - 230);
			Graphics.draw_string "       | `-. |  ,'.\\         .\\   \\         |              /";
			Graphics.moveto x (y - 240);
			Graphics.draw_string "       |\\   ;+-'   \"\\      ,'  `.  \\        |             /";
			Graphics.moveto x (y - 250);
			Graphics.draw_string "       '\\.\"         \\ _.-'     ,`. \\       '            /";
			Graphics.moveto x (y - 260);
			Graphics.draw_string "        \\\\           :       .'   `.`._     \\          / `-..-.";
			Graphics.moveto x (y - 270);
			Graphics.draw_string "         ``.          |    _.\" _...,:.._`.    `._     ,'   -. \'";
			Graphics.moveto x (y - 280);
			Graphics.draw_string "          `.`.        |`\".'__.'           `,...__\"--`/  |   / |";
			Graphics.moveto x (y - 290);
			Graphics.draw_string "            `.`.     _'    \\|             ,'       ,'_  `..'  |..__,.";
			Graphics.moveto x (y - 300);
			Graphics.draw_string "              `._`--\".'     \\`._      _,-'       ,' `-'  /    | .  ,'";
			Graphics.moveto x (y - 310);
			Graphics.draw_string "                 `\"\"'        `. `\"'\"\"'   ,-\" _,-'    _ .'     '  `' `.";
			Graphics.moveto x (y - 320);
			Graphics.draw_string "                               `-.._____:  |\"       _,\" .\"  ,'__,..\"'";
			Graphics.moveto x (y - 330);
			Graphics.draw_string "                                         `.|-...,.<'    `,_\"\"'`./";
			Graphics.moveto x (y - 340);
			Graphics.draw_string "                                             `.'   `\"--'\" ";

		method eat x y =
			Graphics.moveto x (y - 10);
			Graphics.draw_string "           ,     ,_";
			Graphics.moveto x (y - 20);
			Graphics.draw_string "           |`\\    `;;,            ,;;'";
			Graphics.moveto x (y - 30);
			Graphics.draw_string "           |  `\\    \\ '.        .'.'";
			Graphics.moveto x (y - 40);
			Graphics.draw_string "           |    `\\   \\  '-\"\"\"\"-' /";
			Graphics.moveto x (y - 50);
			Graphics.draw_string "           `.     `\\ /          |`";
			Graphics.moveto x (y - 60);
			Graphics.draw_string "             `>    /;   _     _ \\ ";
			Graphics.moveto x (y - 70);
			Graphics.draw_string "              /   / |       .    ;";
			Graphics.moveto x (y - 80);
			Graphics.draw_string "             <  (`\";\\ ()   ~~~  (/_";
			Graphics.moveto x (y - 90);
			Graphics.draw_string "              ';;\\  `,     __ _.-'` )";
			Graphics.moveto x (y - 100);
			Graphics.draw_string "                >;\\          `   _.'";
			Graphics.moveto x (y - 110);
			Graphics.draw_string "                `;;\\          \\-'";
			Graphics.moveto x (y - 120);
			Graphics.draw_string "                  ;/           \\ _";
			Graphics.moveto x (y - 130);
			Graphics.draw_string "                  |   ,\"\".     .` \\";
			Graphics.moveto x (y - 140);
			Graphics.draw_string "                  |      _|   '   /";
			Graphics.moveto x (y - 150);
			Graphics.draw_string "                   ;    /\")     .;-,";
			Graphics.moveto x (y - 160);
			Graphics.draw_string "              jgs   \\    /  __   .-'";
			Graphics.moveto x (y - 170);
			Graphics.draw_string "                     \\,_/-\"`  `-'";

	end
