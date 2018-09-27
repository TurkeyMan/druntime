# built from the druntime top-level folder
# to be overwritten by caller
DMD=dmd
MODEL=64
DRUNTIMELIB=druntime64.lib

test:
	$(DMD) -m$(MODEL) -conf= -Isrc -defaultlib=$(DRUNTIMELIB) -main -unittest test\stdcpp\src\string.d
	string.exe
	del test.exe test.obj

