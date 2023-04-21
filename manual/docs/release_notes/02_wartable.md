# War Table

---

## Contained Steam

**SteamCMD**

### 1.1.0

#### :zap: RELEASE :zap:

- [x] CHANGED :tools: reworked the entire deployment flow for better permissions and deeper PEON integration
- [x] CHANGED :tools: PEON specific files now live in `/home/steam/peon` and do not need multiple volume mounts.
- [x] ADDED :new: A container env var that links (if exists) the relevant save data to the `/home/steam/peon/download` directory.

### 1.0.6

- [x] CHANGED :tools: Set init scripts to run as root. Only the `server_start` script is run as `steam` user.
- [x] ADDED :new: Login banner

### 1.0.5

- [x] CHANGED :tools: Set default server save path to `/home/steam/data` to match most recipies.

### 1.0.3

- [x] ADDED :new: Made `server_start` script generic (interpreter directive such as #!/bin/bash = bash script, etc.)
- [x] CHANGED :tools: Reworked the naming to allow for generic container use.

### 1.0.2

- [x] ADDED :new: Init scripts to ensure the server is updated to latest build on boot.

### 1.0.0

- [x] INITIALISED :airplane: Initial commit

---

## Steamed Wine

**SteamCMD+WINEHQ**

### 1.0.1

- [ ] ADDED :new: Add init scripts to mirror changes to PEON

### 1.0.0

- [x] ADDED :new: WINE deployed
- [x] TESTED :pencil: WINE with VRising server.
- [x] INITIALISED :airplane: Initial commit
