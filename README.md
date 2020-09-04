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
* Auto-shutdown daily at 9:30PM PST.
* Auto-start daily at 5PM PST.
** csgoserver is launched at boot by systemd.
** csgoserver is checked for updates upon boot using cronjob.

## Configuration files

* $CONFIG -- linuxgsm config for server startup params such as maxplayers, default players etc.
* csgoserver.cfg -- Located in serverfiles/csgo/cfg. Server config such as name, passwords etc.
* gamemode_casual_server.cfg -- Located in serverfiles/csgo/cfg. Round start configurations such as mp_forcecamera, etc.
* gamemode_comp_server.cfg -- Located in serverfiles/csgo/cfg. Round start configurations such as mp_forcecamera, mp_freezetime etc.

### TODO

- [ ] Azure deployment script
