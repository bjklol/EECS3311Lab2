INCLUDE_PATH =  -I"D:\Program Files\Eiffel Software\EiffelStudio 17.05 GPL\library\time\spec\include"
SHELL = /bin/sh
CC = "D:\Program Files\Eiffel Software\EiffelStudio 17.05 GPL/gcc/win64/mingw/bin/gcc"
CPP = "D:\Program Files\Eiffel Software\EiffelStudio 17.05 GPL/gcc/win64/mingw/bin/gcc"
CFLAGS = -O0 -pipe -imacros eif_config.mingw.h -D_WIN32_WINNT=0x0500 -DWINVER=0x0500 -D_UNICODE -DUNICODE -DWIN32_LEAN_AND_MEAN   -DEIF_IEEE_BEHAVIOR -DWORKBENCH -I"D:\Program Files\Eiffel Software\EiffelStudio 17.05 GPL/studio/spec/win64/include" -I. $(INCLUDE_PATH)
CPPFLAGS = -O0 -pipe -imacros eif_config.mingw.h -D_WIN32_WINNT=0x0500 -DWINVER=0x0500 -D_UNICODE -DUNICODE -DWIN32_LEAN_AND_MEAN   -DWORKBENCH -I"D:\Program Files\Eiffel Software\EiffelStudio 17.05 GPL/studio/spec/win64/include" -I. $(INCLUDE_PATH)
LDFLAGS = 
CCLDFLAGS =   -mconsole
LDSHAREDFLAGS =  
EIFLIB = "D:\Program Files\Eiffel Software\EiffelStudio 17.05 GPL/studio/spec/win64/lib/mingw/wkbench.a"
EIFTEMPLATES = D:\Program Files\Eiffel Software\EiffelStudio 17.05 GPL/studio/config/win64/templates
LIBS = 
MAKE = "D:\Program Files\Eiffel Software\EiffelStudio 17.05 GPL/gcc/win64/msys/1.0/bin/make.exe"
AR = "D:\Program Files\Eiffel Software\EiffelStudio 17.05 GPL/gcc/win64/mingw/bin/ar"
LD = "D:\Program Files\Eiffel Software\EiffelStudio 17.05 GPL/gcc/win64/mingw/bin/ld"
MKDEP =   --
MV = "D:\Program Files\Eiffel Software\EiffelStudio 17.05 GPL/gcc/win64/msys/1.0/bin/cp"
CP = "D:\Program Files\Eiffel Software\EiffelStudio 17.05 GPL/gcc/win64/msys/1.0/bin/cp"
RANLIB = "D:\Program Files\Eiffel Software\EiffelStudio 17.05 GPL/gcc/win64/mingw/bin/ranlib.exe"
RM = "D:\Program Files\Eiffel Software\EiffelStudio 17.05 GPL/gcc/win64/msys/1.0/bin/rm" -f
FILE_EXIST = 
RMDIR = "D:\Program Files\Eiffel Software\EiffelStudio 17.05 GPL/gcc/win64/msys/1.0/bin/rd"
X2C = "D:\Program Files\Eiffel Software\EiffelStudio 17.05 GPL/studio/spec/win64/bin/x2c.exe"
SHAREDLINK = "D:\Program Files\Eiffel Software\EiffelStudio 17.05 GPL/gcc/win64/mingw/bin/dllwrap"
SHAREDLIBS = -luser32 -lws2_32 -ladvapi32 -lgdi32 -lshell32 -lmsimg32 -lcomdlg32 -luuid -lole32 -loleaut32 -lcomctl32 -lmpr -lshlwapi -lwinspool -lstdc++ 
SHARED_SUFFIX = .dll
COMMAND_MAKEFILE = 
START_TEST = if [ ! -f finished ] ; then 
END_TEST = ; fi 
CREATE_TEST = "D:\Program Files\Eiffel Software\EiffelStudio 17.05 GPL/gcc/win64/msys/1.0/bin/touch" finished
PATH := D:\Program Files\Eiffel Software\EiffelStudio 17.05 GPL/gcc/win64/mingw/libexec/gcc/mingw32/3.4.2;C:\ProgramData\Oracle\Java\javapath;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common;%SystemRoot%\system32;%SystemRoot%;%SystemRoot%\System32\Wbem;%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\;C:\Users\tyler\AppData\Local\Microsoft\WindowsApps;C:\Users\tyler\AppData\Local\atom\bin;C:\Users\tyler\AppData\Local\Microsoft\WindowsApps;D:\Program Files (x86)\Microsoft VS Code\bin;C:\Program Files (x86)\Java\jre1.8.0_144\bin; 
SYSTEM_IN_DYNAMIC_LIB = peg_solitaire.dll 

.SUFFIXES:.cpp .o 

.c.o:
	$(CC) $(CFLAGS) -c $<

.cpp.o:
	$(CPP) $(CPPFLAGS) -c $<

OBJECTS = big_file_C1_c.o 

OLDOBJECTS =  ap973.o ap973d.o te977.o te977d.o te976.o te976d.o te975.o te975d.o \
	es972.o es972d.o es974.o es974d.o bo964.o bo964d.o bo965.o bo965d.o \
	ga963.o ga963d.o es970.o es970d.o es971.o es971d.o bo962.o bo962d.o \
	bo961.o bo961d.o es969.o es969d.o sl959.o sl959d.o sl960.o sl960d.o \
	un988.o un988d.o sl987.o sl987d.o av989.o av989d.o c_958.o c_958d.o \
	ti982.o ti982d.o da983.o da983d.o da986.o da986d.o da985.o da985d.o \
	ti981.o ti981d.o ti980.o ti980d.o da984.o da984d.o gr968.o gr968d.o \
	ti979.o ti979d.o co978.o co978d.o da967.o da967d.o da966.o da966d.o 

all::  Cobj1.o

Cobj1.o: $(OBJECTS) Makefile
	$(RM) $@
	$(LD) -r -o $@ $(OBJECTS)
	$(CREATE_TEST)
	$(RM) $(OBJECTS)


clean: local_clean
clobber: local_clobber

local_clean::
	$(RM) core finished *.o

local_clobber:: local_clean
	$(RM) Makefile

