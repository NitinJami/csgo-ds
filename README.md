# csgo-ds
configs for my csgo server

## Commands/Aliases

* editconfig -- to modify game mode.
* restartcasual -- modify config to casual and restart server.
* restartcomp -- modify config to comp and restart server.

## Server Lifecycle

* /home/redflower/server/csgoserver [start|stop|restart|update]

*Note: You won't need to do server lifecycle ops unless server crashed. Usually, VM lifecycle will take care of server lifecycle as well.*

## VM Lifecycle

* Managed by Azure Automation account.
* Auto-shutdown daily at 11PM PST.
* Auto-start daily at 6PM PST.
  * csgoserver is launched at boot by cronjob.
  * csgoserver is checked for updates upon boot using lgsm cfg option.

## Configuration files

* $CONFIG -- linuxgsm config for server startup params such as maxplayers, default players etc.
* csgoserver.cfg -- Located in serverfiles/csgo/cfg. Server config such as name, passwords etc.
* gamemode_casual_server.cfg -- Located in serverfiles/csgo/cfg. Round start configurations such as mp_forcecamera, etc.
* gamemode_comp_server.cfg -- Located in serverfiles/csgo/cfg. Round start configurations such as mp_forcecamera, mp_freezetime etc.

https://developer.valvesoftware.com/wiki/Counter-Strike:_Global_Offensive_Dedicated_Servers#gamemodes_server.txt

### TODO

- [ ] Azure deployment script
