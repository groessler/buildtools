@echo Finishing installation qt
@echo ==============================
@cd %CMDER_ROOT%\vendor\qt\mingw32
@call setup-Qt.bat 
@cd %CMDER_ROOT%\vendor\qt\mingw64
@call setup-Qt.bat 
@cd %CMDER_ROOT%
@%CMDER_ROOT%\vendor\env.bat