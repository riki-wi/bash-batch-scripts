@echo off
setlocal enabledelayedexpansion

set lineOne="{"
set lineTwo="}"
set countOne=-1
set countTwo=-1

for /f "tokens=* skip=2" %%i in ('find "{" %1') do set lineOne=!lineOne!%%i
for /f "tokens=* skip=2" %%i in ('find "}" %1') do set lineTwo=!lineTwo!%%i

set lineOne=!lineOne:{=lol;lol!
set lineTwo=!lineTwo:}=lol;lol!
set lineOne=!lineOne: =!
set lineTwo=!lineTwo: =!
echo !lineTwo!
for %%i in (!lineOne!) do set /a countOne+=1
for %%j in (!lineTwo!) do set /a countTwo+=1

echo { : %countOne%
echo } : %countTwo%

if %countOne% == %countTwo% echo TRUE
if not %countOne% == %countTwo% echo FALSE