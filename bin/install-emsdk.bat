@echo Downloading emsdk
@echo ====================
@if not exist %CMDER_ROOT%\packages (
	mkdir %CMDER_ROOT%\packages
)
@if not exist %CMDER_ROOT%\vendor\emsdk (
	mkdir %CMDER_ROOT%\vendor\emsdk
)
@wget -c "https://s3.amazonaws.com/mozilla-games/emscripten/releases/emsdk-1.29.0-portable-64bit.zip" -O %CMDER_ROOT%\packages\emsdk-1.29.0-portable-64bit.zip --no-check-certificate
@echo Installing emsdk
@echo ===================
@7za x -o%CMDER_ROOT%\vendor\emsdk packages\emsdk-1.29.0-portable-64bit.zip -y  > nul
@echo Finishing installation emsdk
@echo ===============================
@cd %CMDER_ROOT%\vendor\emsdk
@call emsdk update
@call emsdk install latest
@call emsdk activate latest
@cd %CMDER_ROOT%
@%CMDER_ROOT%\vendor\env.bat
