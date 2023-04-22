# War Table

The **War Table** module works in conjunction with the Orchestrator to provide the relevant tools for the game containers.

This project handles the tools that are shared between game containers.

## Projects

[*Contained Steam*](https://github.com/the-peon-project/peon-wartable/tree/master/containers/steamcmd) (steamcmd) are scripts to automate/update `steamcmd` and the game server files (within a `steamcmd`-based docker container), as part of the PEON automation services.

[*Steamed Wine*](https://github.com/the-peon-project/peon-wartable/tree/master/containers/steamcmd-wine) (steamcmd+winhq) is a custom container to facilitate game servers that are only built for Windows OS, within the PEON tool suite.

### Modes

Modes are just unique names that help the recipe inform the server which mechanism must be followed with the automation of services. *Hopefully, this will stay a short-list*

| Mode | Release Notes | Container Tag |
| - | - | - |
| `steamcmd` | [Contained Steam](http://docs.warcamp.org/development/02_wartable/#contained-steam) | [umlatt/steamcmd](https://hub.docker.com/r/umlatt/steamcmd) |
| `steamwine` | [Steamed Wine](http://docs.warcamp.org/development/02_wartable/#steamed-wine) | [umlatt/steamcmd-winehq](https://hub.docker.com/r/umlatt/steamcmd-winehq) |

---

## Design Objectives

1. Only scripts/code are to be stored here. Large file pulls should be done from other sources.
2. Attempt to keep the code pool as generic as possible to maximize code reuse/supportability.
3. If something already exists and is open source, do not rewrite it needlessly.

---

## Software Stack Diagram

*\*This may change as technologies & skills evolve.*

![Software Stack](../images/diagrams/diagram_wartable.png)

---

## Navigation

Links to various project-related resources.

[![github](../../images/buttons/button_github.svg)](https://github.com/the-peon-project/peon-wartable)
[![github](../../images/buttons/button_bug.svg)](https://github.com/the-peon-project/peon-wartable/issues/new/choose)
[![github](../../images/buttons/button_changelog.svg)](../development/release_notes/02_wartable.md)

---

## Roadmap

Here you can see what the future holds.

---

## Release Notes

### Contained Steam

A PEON implementation of vanilla `SteamCMD`.

#### 1.1.1

- [x] LOGGING :speech_balloon: changed the step header prefix to `[o]`
- [x] BUGFIX :beetle: fixed a permissions issue on boot.

#### 1.1.0

**:zap: IMPACT RELEASE :zap:**

- [x] CHANGED :tools: reworked the entire deployment flow for better permissions and deeper PEON integration
- [x] CHANGED :tools: PEON-specific files now live in `/home/steam/peon` and do not need multiple volume mounts.
- [x] ADDED :new: A container env var that links (if exists) the relevant save data to the `/home/steam/peon/download` directory.

#### 1.0.6

- [x] CHANGED :tools: Set init scripts to run as root. Only the `server_start` script is run as `steam` user.
- [x] ADDED :new: Login banner

#### 1.0.5

- [x] CHANGED :tools: Set default server save path to `/home/steam/data` to match most recipes.

#### 1.0.3

- [x] ADDED :new: Made `server_start` script generic (interpreter directive such as #!/bin/bash = bash script, etc.)
- [x] CHANGED :tools: Reworked the naming to allow for generic container use.

#### 1.0.2

- [x] ADDED :new: Init scripts to ensure the server is updated to the latest build on boot.

#### 1.0.0

- [x] INITIALISED :airplane: Initial commit

---

### Steamed Wine

A PEON implementation of vanilla `SteamCMD` with a `WINEHQ` implementation to support Windows native servers.

#### 1.1.1

- [x] LOGGING :speech_balloon: changed the step header prefix to `[o]`
- [x] BUGFIX :beetle: fixed a permissions issue on boot.

#### 1.1.0

- [ ] ADDED :new: Add init scripts to mirror changes to PEON

#### 1.0.0

- [x] ADDED :new: WINE deployed
- [x] TESTED :pencil: WINE with VRising server.
- [x] INITIALISED :airplane: Initial commit
