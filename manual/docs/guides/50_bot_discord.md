# Bot.Discord

## Terms

The project uses arbitratry names for certain concepts. Please see below for details

| Term | Description |
| - | - |
| War Party | A host server where you game servers are deployed. |
| War Camp | A containerized game server. |
| War Plan | A recipe used to automatically deploy the containerized game server. |
| Orc | The management container that orchestrates all of the deployment and management of the game servers on a host (required on each host)


## Commands

Below are the commands that can be run against the bot.

|symbol|command|description|
|-|-|-|
:point_up: | ``!poke``  | to check if there is an available peon to do some work.
:tent: |  ``!get`` | to show the status of a warcamp (you can `!get time` if you want just the scheduled stop time).
:european_castle:  | ``!getall`` |  *to list all warcamps in the warparty.
:scroll:  | ``!plan`` |  *get the required/optional settings to deploy a warcamp.
:books:  | ``!plans`` |  *list all possible warcamps.
:wrench: | ``!register`` | *to register a warparty.
:crossed_swords: |``!import`` | *to scan all war parties and import all valid warcamps.
:white_check_mark: |  ``!start`` | to start a warcamp.
:checkered_flag: | ``!stop`` | to stop a warcamp.
:recycle: | ``!restart`` | to restart a warcamp.
:tools: | ``!update`` | to update the game server files of a warcamp (This **WILL** restart the server).
:hammer: | ``!unregister`` | *to remove a registered warparty.
:grey_question: | ``!usage`` | to print this help menu.
:speech_balloon: | ``!about`` | to print information about the project, as well as current software versions of the orchestration tools.

> Commands with an asterisk are for the admin channel only.

### Timers

There are several options regarding scheduling the peon to carry out an `action`.
> Appylying any timer will overwrite the previous timer (no extending sessions)  
Issue a server *get* to check if and what the current stop time is configured for.

#### Duration timers

If you wish to configure an `action` to occur after a specific **duration** of time has elapsed.

| syntax | example | example behaviour |
| - | - | - |
| `#`m or `#` |             `!stop 15m` or `!stop 15`  | executes a server *stop* 15 minutes from now |
| `#`h |                `!start 5h` | *starts* the server **now** and will *stop* the server 5 hours from now |
| `#`d |               `!restart 2d` | *restarts* a server 2 days from now |

#### End date/time timers

If you wish to configure an `action` to occur at a **specific** date/time use the following.

##### Date-time

| syntax | example | example behaviour |
| - | - | - |
| `##`-`##`-`##`.`##`:`##` | `!stop 2023-10-05.21:30` | executes *stop* at the specified datetime 2023-10-05.21:30 |
| `##`/`##`/`##`.`##`h`##` | `!stop 2023/10/05.21h30` | executes **stop** at the specified datetime 2023/10/05.21h30 |

##### Time

| syntax | example | example behaviour |
| - | - | - |
| `##`:`##` |             `!stop 21:30` | executes a server *stop* at the specified time of 09:30*pm* today|
| `##`h`##` |             `!start 21h30` | *starts* the server **now** and executes a server *stop* at the specified time of 09:30*pm* today|
