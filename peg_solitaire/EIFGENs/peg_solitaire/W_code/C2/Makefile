INCLUDE_PATH =  -I"$(ISE_LIBRARY)/library/time/spec/include"
SHELL = /bin/sh
CC = gcc
CPP = g++
CFLAGS = -O0 -pipe -fPIC -D_GNU_SOURCE -m64  -DEIF_IEEE_BEHAVIOR -DWORKBENCH -I"/usr/include/eiffelstudio-17.05" -I. $(INCLUDE_PATH)
CPPFLAGS = -O0 -pipe -fPIC -D_GNU_SOURCE -m64  -DWORKBENCH -I"/usr/include/eiffelstudio-17.05" -I. $(INCLUDE_PATH)
LDFLAGS = -m elf_x86_64
CCLDFLAGS = -m64  
LDSHAREDFLAGS =  -m elf_x86_64 -shared -o
EIFLIB = "/usr/lib/eiffelstudio-17.05/libwkbench.a"
EIFTEMPLATES = /usr/share/eiffelstudio-17.05/studio/config/unix/templates
LIBS = -lm
MAKE = make
AR = ar
LD = ld
MKDEP = \$(EIFFEL_SRC)/C/mkdep $(DPFLAGS) --
MV = /bin/mv
CP = /bin/cp
RANLIB = :
RM = /bin/rm -f
FILE_EXIST = 
RMDIR = 
X2C = "/usr/lib/eiffelstudio-17.05/studio/x2c"
SHAREDLINK = ld
SHAREDLIBS = -lm
SHARED_SUFFIX = .so
COMMAND_MAKEFILE = 
START_TEST = if [ ! -f finished ] ; then 
END_TEST = ; fi 
CREATE_TEST = touch finished 
SYSTEM_IN_DYNAMIC_LIB = peg_solitaire.so 

.SUFFIXES:.cpp .o

.c.o:
	$(CC) $(CFLAGS) -c $<

.cpp.o:
	$(CPP) $(CPPFLAGS) -c $<

OBJECTS = big_file_C2_c.o 

OLDOBJECTS =  ty1015.o ty1015d.o ty1017.o ty1017d.o ar1018.o ar1018d.o ba995.o \
	ba995d.o go994.o go994d.o pl993.o pl993d.o es996.o es996d.o es998.o \
	es998d.o es997.o es997d.o un992.o un992d.o oc991.o oc991d.o da1011.o \
	da1011d.o ti1009.o ti1009d.o av990.o av990d.o da1002.o da1002d.o \
	da1007.o da1007d.o da1014.o da1014d.o ab1003.o ab1003d.o da1005.o \
	da1005d.o da1010.o da1010d.o ti1001.o ti1001d.o ti1008.o ti1008d.o \
	da1000.o da1000d.o du999.o du999d.o da1004.o da1004d.o da1013.o \
	da1013d.o fi1006.o fi1006d.o da1012.o da1012d.o in1016.o in1016d.o 

all: Cobj2.o

Cobj2.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj2.o $(OBJECTS)
	$(RM) $(OBJECTS)
	$(CREATE_TEST)

clean: local_clean
clobber: local_clobber

local_clean::
	$(RM) core finished *.o

local_clobber:: local_clean
	$(RM) Makefile

