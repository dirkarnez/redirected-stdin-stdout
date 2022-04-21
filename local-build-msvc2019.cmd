REM run as Administrator
@echo off
cd /d %~dp0
set DOWNLOAD_DIR=%USERPROFILE%\Downloads
set DOWNLOAD_DIR_LINUX=%DOWNLOAD_DIR:\=/%
@REM %DOWNLOAD_DIR%\mingw64-win32; ^
@REM %DOWNLOAD_DIR%\mingw64-win32\bin; ^

@REM SET PATH=%DOWNLOAD_DIR%\PortableGit\bin;%DOWNLOAD_DIR%\cmake-3.22.2-windows-x86_64\bin;
SET PATH=D:\Softwares\cmake-3.23.0-rc1-windows-x86_64\bin;

cmake -G "Visual Studio 16 2019" -A x64 -B./build

cd build
cmake --build . --target ALL_BUILD --config Debug -- /nologo /verbosity:minimal /maxcpucount

cd Debug
echo: & echo net user > 123.txt

pause

