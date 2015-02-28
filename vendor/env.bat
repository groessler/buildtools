:: Init Script for cmd.exe
:: Sets some nice defaults
:: Created as part of cmder project

:: Find root dir
@if not defined CMDER_ROOT (
    for /f %%i in ("%~dp0\..") do @set CMDER_ROOT=%%~fi
)

:: Enhance Path
@set git_install_root=%CMDER_ROOT%\vendor\msysgit
@set MINGW32=
@set MINGW64=
@set MINGW_PATH=
@set MINGW32_PATH=
@set MINGW64_PATH=
@if "%PROCESSOR_ARCHITECTURE%"=="x86" (
	@if exist %CMDER_ROOT%\vendor\mingw32\bin (
		set MINGW32_PATH=%CMDER_ROOT%\vendor\mingw32\bin
		set MINGW32=%CMDER_ROOT%\vendor\mingw32
		set MINGW_PATH=%CMDER_ROOT%\vendor\mingw32\bin
	)
) else (
	@if exist %CMDER_ROOT%\vendor\mingw32\bin (
		set MINGW32_PATH=%CMDER_ROOT%\vendor\mingw32\bin	
		set MINGW32=%CMDER_ROOT%\vendor\mingw32
		set MINGW_PATH=%CMDER_ROOT%\vendor\mingw32\bin
	)
	@if exist %CMDER_ROOT%\vendor\mingw64\bin (
		set MINGW64_PATH=%CMDER_ROOT%\vendor\mingw64\bin
		set MINGW64=%CMDER_ROOT%\vendor\mingw64
		set MINGW_PATH=%CMDER_ROOT%\vendor\mingw64\bin
	)	
)
@if "%PROCESSOR_ARCHITECTURE%"=="x86" (
	@if exist %CMDER_ROOT%\vendor\qt\mingw32 (
		set MINGW_PATH=%MINGW_PATH%;%CMDER_ROOT%\vendor\qt\mingw32\Qt\bin
	)
) else (
	@if exist %CMDER_ROOT%\vendor\qt\mingw64 (
		set MINGW_PATH=%MINGW_PATH%;%CMDER_ROOT%\vendor\qt\mingw64\Qt\bin
	)
)
@set PATH=%CMDER_ROOT%\bin;%CMDER_ROOT%\vendor\unixtools;%git_install_root%\cmd;%git_install_root%\share\vim\vim74;%CMDER_ROOT%;%MINGW_PATH%;%CMDER_ROOT%\vendor\python;C:\Windows\System32;C:\Windows

:: Add aliases
@doskey /macrofile="%CMDER_ROOT%\config\aliases"

:: Set home path
@if not defined HOME set HOME=%USERPROFILE%

@if defined CMDER_START (
    @cd /d "%CMDER_START%"
) else (
    @if "%CD%\" == "%CMDER_ROOT%" (
        @cd /d "%HOME%"
    )
)
@if not exist %CMDER_ROOT%\vendor\qt\mingw32\Qt\bin\qt.conf  (
@echo Setup QT mingw32
@echo ================
@cd %CMDER_ROOT%\vendor\qt\mingw32
@call setup-Qt.bat 
@cd %CMDER_ROOT%
)
@if not exist %CMDER_ROOT%\vendor\qt\mingw64\Qt\bin\qt.conf  (
@echo Setup QT mingw64
@echo ================
@cd %CMDER_ROOT%\vendor\qt\mingw64
@call setup-Qt.bat 
@cd %CMDER_ROOT%
)
@set DXSDK_DIR=%CMDER_ROOT%\vendor\dxsdk
@set ANDROID_NDK_ROOT=%CMDER_ROOT%\vendor\android-ndk
@set ANDROID_NDK_ARM=%CMDER_ROOT%\vendor\android-ndk\toolchains\arm-linux-androideabi-4.9\prebuilt\windows
@set ANDROID_NDK_MIPS=%CMDER_ROOT%\vendor\android-ndk\toolchains\mipsel-linux-android-4.9\prebuilt\windows
@set ANDROID_NDK_X86=%CMDER_ROOT%\vendor\android-ndk\toolchains\x86-4.9\prebuilt\windows
@set EMSCRIPTEN=%CMDER_ROOT%\vendor\emsdk\emscripten\1.29.0
@set NACL_SDK_ROOT=%CMDER_ROOT%\vendor\nacl_sdk\pepper_40
@set CYGWIN=nodosfilewarning
