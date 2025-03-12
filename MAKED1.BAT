rem d1vars sets up compiler variables
call d1vars.bat
set LIBDIR=c:\dev\d1\main
rem no separate build dir for now...
rem mkdir /p build
set BUILD_DIR=c:\dev\d1\main
set CCFLAGS=/dNETWORK /dRELEASE /dNDEBUG
cd misc
dsmake
copy misc.lib %BUILD_DIR%
cd..
rem TODO: Double-check includes directory
rem cd includes
rem dsmake
rem cd ..
cd fix
dsmake
copy fix.lib %BUILD_DIR%
cd ..
cd cfile
copy cfile.lib %BUILD_DIR%
dsmake
cd ..
cd 2d
copy gr.lib %BUILD_DIR%
dsmake
cd ..
cd bios
copy io.lib %BUILD_DIR%
dsmake
cd ..
cd iff
copy iff.lib %BUILD_DIR%
dsmake
cd ..
cd div
dsmake
copy div0.lib %BUILD_DIR%
cd ..
cd mem
dsmake
copy mem.lib %BUILD_DIR%
cd ..
cd vecmat
dsmake
copy vecmat.lib %BUILD_DIR%
cd ..
cd 3d
dsmake
copy 3d.lib %BUILD_DIR%
cd ..
cd texmap
dsmake
copy texmap.lib %BUILD_DIR%
cd ..
cd ui
dsmake
copy ui.lib %BUILD_DIR%
cd ..
cd main
rem no editor, for now...
rem cd editor
rem dsmake
rem cd ..
dsmake
rem since we have main as build_dir now...
rem copy main.lib %BUILD_DIR%
rem copy inferno.obj %BUILD_DIR%
cd ..
rem cd build
rem dsmake
rem cd ..
Echo Make complete.

