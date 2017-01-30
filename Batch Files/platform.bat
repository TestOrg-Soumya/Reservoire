@echo off
SET HYBRIS_PLATFORM=D:\HY5.1\hybris-commerce-suite-5.5.1.0\hybris\bin\platform

echo OPEN HYBRIS PLATFORM
D:
cd %HYBRIS_PLATFORM%
echo Current Path : %cd%
echo.
echo Set ant environment
echo on
call setantenv.bat
@echo off
echo Ant environment set successfully
pause
cls
call :myFunc
pause

:myFunc
echo Please choose....
echo.
echo. Press 1 for Build the code
echo. Press 2 for Server start up
echo. Press 3 for Exit
echo.
set /p choice="Please enter your choice: "
2>NUL CALL :CASE_%choice%
IF ERRORLEVEL 1 CALL :DEFAULT_CASE
rem switch %choice%
:case_1
	echo.
	cls
	call:buildFunc
	GOTO END_CASE
:case_2
	echo.
	cls
	call:serverFunc
	GOTO END_CASE
:case_3
	echo.
	exit
:DEFAULT_CASE
	echo.
	echo Wrong choice of inputs. Please pay attention.
	GOTO END_CASE
:END_CASE
  VER > NUL # reset ERRORLEVEL
  call:myFunc

:buildFunc
echo Please choose....
echo.
echo. Press 1 for ant ui
echo. Press 2 for ant clean
echo. Press 3 for ant all
echo. Press 4 for ant clean all
echo. Press 5 for Previous Menu
echo. Press 6 for Exit
echo.
set /p choice="Please enter your choice: "
2>NUL CALL :CASE_%choice%
IF ERRORLEVEL 1 CALL :DEFAULT_CASE
:case_1
	echo.
	echo Starting ANT UI
	call ant ui
	pause
	GOTO END_CASE
:case_2
	echo.
	echo Starting ANT CLEAN
	echo.
	call ant clean
	pause
	GOTO END_CASE
:case_3
	echo.
	echo Starting ANT ALL
	call ant all
	pause
	GOTO END_CASE
:case_4
	echo.
	echo Starting ANT CLEAN ALL
	call ant clean all
	pause
	GOTO END_CASE
:case_5
	echo.
	GOTO END_CASE
:case_6
	echo.
	exit
:DEFAULT_CASE
	echo.
	echo Wrong choice of inputs. Please pay attention.
	call:buildFunc
:END_CASE
  VER > NUL # reset ERRORLEVEL
  cls
  call:myFunc


  
:serverFunc
echo Please choose....
echo.
echo. Press 1 for Start Server normally
echo. Press 2 for Start Server in DEBUG mode
echo. Press 3 for Previous Menu
echo. Press 4 for Exit
echo.
set /p choice="Please enter your choice: "
2>NUL CALL :CASE_%choice%
IF ERRORLEVEL 1 CALL :DEFAULT_CASE
:case_1
	echo.
	echo Starting HYBRIS SERVER
	call hybrisserver.bat
	GOTO END_CASE
:case_2
	echo.
	echo Starting HYBRIS SERVER in DEBUG
	call hybrisserver.bat debug
	GOTO END_CASE
:case_3
	echo.
	GOTO END_CASE
:case_4
	echo.
	exit
:DEFAULT_CASE
	echo.
	echo Wrong choice of inputs. Please pay attention.
	call:serverFunc
:END_CASE
  VER > NUL # reset ERRORLEVEL
  cls
  call:myFunc
