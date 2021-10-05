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

set string=

for /L %%i in (1,1,%1) do (
	set /a n=%1-%%i-1
	for /L %%j in (!n!,-1,0) do set string=!string! 
	for /L %%j in (1,1,%%i) do set string=!string!*
	echo !string!
	set string=
)
		

echo.
echo ===============
echo.

set string=

for /L %%i in (1,1,%1) do (
	set /a n=%1-%%i
	for /L %%j in (!n!,-1,1) do set string=!string! 
	set /a n=2*%%i-2
	for /L %%j in (0,1,!n!) do set string=!string!*
	echo !string!
	set string=
)

set /a x=%1-1
for /L %%i in (!x!,-1,1) do (
	set /a n=%1-%%i
	for /L %%j in (!n!,-1,1) do set string=!string! 
	set /a n=2*%%i-2
	for /L %%j in (0,1,!n!) do set string=!string!*
	echo !string!
	set string=
)

echo.
echo ===============
echo.


