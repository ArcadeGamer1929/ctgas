# Crazy Taxi GFX API Switcher (CTGAS)

Mini-launcher for the 2011 and 2014 (Steam) PC ports of Crazy Taxi, to switch between performance (DXVK) and compatibility (DirectX 9) modes, good for Optimus laptops and eGPU setups.

# Installation

Download DXVK ([https://github.com/doitsujin/dxvk/releases](https://github.com/doitsujin/dxvk/releases)), copy `d3d9.dll` from the `x32` folder into the game's folder, then rename it to `d3d9-dxvk.dll`.

Download and copy `ctgas.bat` into the game's folder, done!\
(Additionally, add `ctgas %command%` the game's launch options on Steam)

# Usage

Can be automatically launched with Steam's launch options, or can be opened manually.\
(opens `AppLauncher.exe -bootlauncher` when opened without arguments/Steam launch options, or when opened manually; can be changed on `ctgas.bat:line 3`)

> Usage: ctgas game_executable [arguments]\
> Steam launch arguments: ctgas %command%\
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \>C &nbsp;&nbsp;&nbsp;&nbsp; Launch with current API\
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \>S &nbsp;&nbsp;&nbsp;&nbsp; Switch API and launch (either DirectX 9 or DXVK)\
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \>E &nbsp;&nbsp;&nbsp;&nbsp; Exit without launching

No Linux version since DXVK is required there, enjoy your good performance :P

# Credits

* Thanks [PCGamingWiki](https://www.pcgamingwiki.com/wiki/Crazy_Taxi_(Steam)#DXVK) for the DXVK performance fix!
