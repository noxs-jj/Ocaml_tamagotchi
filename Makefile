#*****************************************************************************#
#                                                                             #
#   Vincent Jacquier                                     :::      ::::::::    #
#   Jean-Jacques MOIROUX                               :+:      :+:    :+:    #
#                                                    +:+ +:+         +:+      #
#   By: vjacquie <vjacquie@student.42.fr>          +#+  +:+       +#+         #
#   By: jmoiroux <jjmoiroux@gmail.com>           +#+#+#+#+#+   +#+            #
#                                                     #+#    #+#              #
#   Created: 2015/06/26 by vjacquie jmoiroux         ###   ########.fr        #
#                                                                             #
#*****************************************************************************#

NAME = tamagotchi

SOURCES = src/type.ml src/pet.ml src/game.ml src/main.ml

CAMLC = ocamlc
CAMLOPT = ocamlopt
CAMLDEP = ocamldep
FLAGS =
LIBS = 
WITHGRAPHICS = graphics.cma -cclib -LGraphics

INSTALIB = 	opam switch 4.02.1 \
			eval `opam config env` \
			brew install gtk+ \
			brew install lablgtk2

all: depend $(NAME).byt

$(NAME): opt byt
	ln -s $(NAME).byt $(NAME)

opt: $(NAME).opt
byt: $(NAME).byt

OBJS = $(SOURCES:.ml=.cmo)
OPTOBJS = $(SOURCES:.ml=.cmx)

$(NAME).byt: $(OBJS)
	$(CAMLC) $(FLAGS) -o $(NAME).byt $(LIBS) $(OBJS)

$(NAME).opt: $(OPTOBJS)
	$(CAMLOPT) $(FLAGS) -o $(NAME).opt $(LIBS:.cma=.cmxa) $(OPTOBJS)

.SUFFIXES:
.SUFFIXES: .ml .mli .cmo .cmi .cmx

.ml.cmo:
	$(CAMLC) $(FLAGS) -c $<

.mli.cmi:
	$(CAMLC) $(FLAGS) -c $<

.ml.cmx:
	$(CAMLOPT) $(FLAGS) -c $<

clean:
	rm -f src/*.cm[iox] src/*~ src/.*~ src/*.o
	rm -f $(NAME).o

fclean: clean
	rm -f $(NAME)
	rm -f $(NAME).opt
	rm -f $(NAME).byt

depend: .depend
	$(CAMLDEP) $(SOURCES) > .depend

re: fclean all

render_test:
	ocamlfind ocamlc -g -package lablgtk2 -linkpkg \
	src/render/render.ml \
	src/render/main_test.ml \
	-o test_render

include .depend
