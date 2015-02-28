@echo Downloading android-ndk
@echo =======================
@if not exist %CMDER_ROOT%\packages (
	mkdir %CMDER_ROOT%\packages
)
@wget -c "http://dl.google.com/android/ndk/android-ndk-r10d-windows-x86.exe" -O %CMDER_ROOT%\packages\android-ndk-r10d-windows-x86.exe
@echo Installing android-ndk
@echo ======================
@cd %CMDER_ROOT%\vendor
@call %CMDER_ROOT%\packages\android-ndk-r10d-windows-x86.exe
@mv %CMDER_ROOT%\vendor\android-ndk-r10d %CMDER_ROOT%\vendor\android-ndk
@echo Finishing installation android-ndk
@echo ==================================
@%CMDER_ROOT%\vendor\env.bat
