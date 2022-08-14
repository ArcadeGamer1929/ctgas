@echo off
rem Made by ArcadeGamer1929
set default=AppLauncher.exe -bootlauncher


echo Crazy Taxi GFX API Switcher (CTGAS)
echo Mini-launcher for switching between performance and compatibility, good for Optimus laptops and eGPU setups
echo.
echo.

echo Usage: ctgas game_executable [arguments]
echo Steam launch arguments: ctgas %%command%%
echo     ^>C  Launch with current API
echo     ^>S  Switch API and launch (either DirectX 9 or DXVK)
echo     ^>E  Exit without launching

echo.
echo.
if exist d3d9.dll (
	echo d3d9.dll found, DXVK is in use
) else (
	echo d3d9.dll not found, DirectX 9 is in use
)
echo.

:prompt
set /p choice=^>
if "%choice%" == "c" (
:choice_c
	if not [%1] == [] (
		start "" %*
	) else (
		start "" %default%
	)
	exit /b
)
if "%choice%" == "s" (
:choice_s
	if exist d3d9.dll (
		del /q d3d9.dll
		if not [%1] == [] (
			start "" %*
		) else (
			start "" %default%
		)
		exit /b
	) else (
		if not exist d3d9-dxvk.dll (
			echo "d3d9-dxvk.dll not found, download DXVK (https://github.com/doitsujin/dxvk/releases), extract d3d9.dll (32-bit) to Crazy Taxi's folder, and rename to d3d9-dxvk.dll"
			goto :prompt
		)

		copy d3d9-dxvk.dll d3d9.dll
		if not [%1] == [] (
			start "" %*
		) else (
			start "" %default%
		)
		exit /b
	)
)
if "%choice%" == "C" goto :choice_c
if "%choice%" == "S" goto :choice_s

if "%choice%" == "e" exit /b
if "%choice%" == "E" exit /b
goto :prompt

:: hehe
start "" %default%
echo %*
pause
