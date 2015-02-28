@echo off
set PATH=.\Qt\bin;%PATH%
cd > %TMP%\cwd.out
for /f %%a in (%TMP%\cwd.out) do (
  set CWD=%%a
)
del /f %TMP%\cwd.out
set CWD=%CWD:\=/%

echo [Paths] > .\Qt\bin\qt.conf
echo Prefix = %CWD%/Qt >> .\Qt\bin\qt.conf
echo Data = . >> .\Qt\bin\qt.conf
echo Documentation = doc >> .\Qt\bin\qt.conf
echo Headers = include >> .\Qt\bin\qt.conf
echo Libraries = lib >> .\Qt\bin\qt.conf
echo Binaries = bin >> .\Qt\bin\qt.conf
echo Plugins = plugins >> .\Qt\bin\qt.conf
echo Imports = imports >> .\Qt\bin\qt.conf
echo Translations = translations >> .\Qt\bin\qt.conf

.\Qt\bin\qmake -set QMAKE_MKSPECS "%CWD%/Qt/mkspecs"

.\Qt\bin\qmake -query
