@echo off
cmake.exe "-GNMake Makefiles" -DCMAKE_BUILD_TYPE=Release "-DCMAKE_INSTALL_PREFIX=MK_DIST/windows/amd64" -DMK_DEP_WINDOWS_FORCE_CRT_MT=ON -DMK_DEP_DEPNAME=%1
if %errorlevel% neq 0 exit /b %errorlevel%
nmake.exe
if %errorlevel% neq 0 exit /b %errorlevel%
