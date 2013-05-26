CTPremiumPack
=============

Default Sideswitch toggles: Airplane Mode, Bluetooth, Do Not Disturb, and Wi-Fi.

----

These are the included Sideswitch Toggles included with Sideswitch. The Sourcecode for Sideswitch doesn't contain the soruce because I have decided to submit Sideswitch and the toggles separately.


If you wish to compile Sideswitch on your own and have the default toggles, download both the source code for Sideswitch Toggles and the source code for CTPremiumPack to your computer. Drag the CTPremiumPack as a folder inside Sideswitch-Toggles. Then make CTPremiumPack a subproject of Sideswitch toggles in the Makefile:

Sideswitch_SUBPROJECTS=sideswitchsettings CTPremiumPack
