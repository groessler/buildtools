@echo Downloading nacl sdk
@echo ====================
@if not exist %CMDER_ROOT%\packages (
	mkdir %CMDER_ROOT%\packages
)
@wget -c "http://storage.googleapis.com/nativeclient-mirror/nacl/nacl_sdk/nacl_sdk.zip" -O %CMDER_ROOT%\packages\nacl_sdk.zip
@echo Installing nacl sdk
@echo ===================
@7za x -o%CMDER_ROOT%\vendor %CMDER_ROOT%\packages\nacl_sdk.zip -y  > nul
@echo Finishing installation nacl sdk
@echo ===============================
@cd %CMDER_ROOT%\vendor\nacl_sdk
@call naclsdk update
@cd %CMDER_ROOT%
@%CMDER_ROOT%\vendor\env.bat
