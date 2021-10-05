@echo off
setlocal enabledelayedexpansion

echo.
echo ===============
echo.

set string=

for /L %%i in (1,1,%1) do ( 
	for /L %%j in (1,1,%%i) do set string=!string!*
	echo !string!
	set string=
)

echo.
echo ===============
echo.

set string=

for /L %%i in (1,1,%1) do ( 
	set /a n=%1-%%i+1
	for /L %%j in (!n!,-1,1) do set string=!string!*
	echo !string!
	set string=
)

echo.
echo ===============
echo.