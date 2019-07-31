@echo off
if exist "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" (
    call "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" x64
) else (
    call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\VC\Auxiliary\Build\vcvarsall.bat" x64
)
set compilerflags=/Od /Zi /EHsc /std:c++latest /I include
set linkerflags=/OUT:bin\Warbot.exe
set res=build\windows\resource.res
rc build\windows\resource.rc
cl.exe %compilerflags% %res% src\*.cpp /link %linkerflags%
del bin\*.ilk *.obj *.pdb