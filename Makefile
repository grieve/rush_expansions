CC = g++
DEBUG = -g
CFLAGS = -Wall $(DEBUG) -I src/ 
LFLAGS = -Wall $(DEBUG) 
LIBS = -lsfml-graphics -lsfml-window -lsfml-system

PROJECT = rush_expansions
DEP_LINKS = 	

default: $(PROJECT)

Debug: $(PROJECT)

Release: $(PROJECT)

include ../stile/Makefile.inc
include ../$(PROJECT)/Makefile.inc

$(PROJECT) : $(DEPS)
	$(CC) $(CFLAGS) $(PROJECT_SRCS) $(STILE_SRCS) $(DEPS_LINKS) $(LIBS) -o $(PROJECT)

include ../Box2D/Makefile.inc
box2d.a :
	$(CC) $(CFLAGS) -c $(BOX2D_SRCS)
	ar rcs box2d.a $(BOX2D_OBJS)

clean :
	\rm -f *.o *.a *~ */*.o */*~ */*.a *.bin $(PROJECT)
