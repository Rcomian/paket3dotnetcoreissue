call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\Tools\VsDevCmd.bat"

.paket\paket.bootstrapper.exe
.paket\paket.exe restore

msbuild /t:Build paket-core-reproduction.sln /p:Configuration="Release" /p:Platform="Any CPU" /p:OutDir="bin"

if %errorlevel% neq 0 (
	IF [%1]==[] pause
	exit /b %errorlevel%
)

IF [%1]==[] pause
