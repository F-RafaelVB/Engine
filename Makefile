TARGET = Engine
OBJS = main.cpp\
	   Engine.hpp\
	   Engine.cpp

CFLAGS += $(shell $(PSPBIN)/sdl2_config --libs -lSDL2 -lSDL2main)

CXXFLAGS = $(CFLAGS) -fno-exceptions -fno-rtti
ASFLAGS = $(CFLAGS)

#LIBS = -lSDL2 -lGL -lGLU -lglut -lSDL2main
LIBS = -lSDL2 -lGL -lGLU -lglut -lSDL2main -lpspvfpu -lpsphprm -lpspsdk\
	   -lpspctrl -lpspumd -lpsprtc -lpsppower -lpspgum -lpspgu -lpspvram\
	   -lpspaudiolib -lpspaudio -lpsphttp -lpspssl -lpspwlan -lpspnet_adhocmatching\
	   -lpspnet_adhoc -lpspnet_adhocctl -lm -lpspvram -lpspctrl

BUILD_PRX = 1
PSP_FW_VERSION = 500
PSP_LARGE_MEMORY = 1

EXTRA_TARGETS = EBOOT.PBP
PSP_EBOOT_TITLE = Engine-Test

PSPSDK=$(shell psp-config --pspsdk-path)
include $(PSPSDK)/lib/build.mak
