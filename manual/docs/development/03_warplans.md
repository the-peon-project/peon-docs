# War Plans

The **War Plan** module works in conjunction with the Orchestrator to deploy specific game servers upon request.

This project handles unique game recipes.

## Projects

For the list of supported games please go [here](../games.md)

---

## Design Objectives

1. Try to confine recipe definitions to a simple `docker-compose.yml` file and a `.env` where possible.
2. Use the below *Image build hierarchy* definition to decide on the best course of action.

### Image build hierarchy

*\*Official container images are usually bespoke, so it may take some additional modification to the wider PEON app stack, which is not desirable.*

1. Use pre-existing generic PEON container image/s *if exists*
2. Log a request for enhancement to improve the existing builds (if possible)
3. Use an official game server container image *if exists*, but add the PEON tweaks to the build \*
4. Alternatively, create a PEON-compliant container

---

## Software Stack Diagram

*\*This may change as technologies & skills evolve.*

![Software Stack](../images/diagrams/diagram_warplans.png)

---

## Navigation

Links to various project-related resources.

[![github](../images/buttons/button_github.svg)](https://github.com/the-peon-project/peon-warplans)
[![github](../images/buttons/button_bug.svg)](https://github.com/the-peon-project/peon-warplans/issues/new/choose)
[![github](../images/buttons/button_changelog.svg)](../development/03_warplans.md#release-notes)

---

## Roadmap

Here you can see what the future holds.

### Assetto Corsa Competizione

[Steam Store](https://store.steampowered.com/app/805550/Assetto_Corsa_Competizione/)

[Server docs](https://steamdb.info/app/1430110/)

[How to](https://www.acc-wiki.info/wiki/Server_Configuration) stand up a dedicated server (unofficial)

### Starbound

[Steam Store](https://store.steampowered.com/app/211820/Starbound/)

[How to](https://starbounder.org/Guide:Setting_Up_Multiplayer) stand up a dedicated server guide.

#### BLOCKED 
:no_entry_sign: Requires `steamcmd` user login, and steamcmd does not yet support full app authentication flow

---

## Release Notes

### Counter Strike:  Global Offensive


- [ ] ADDED :new: Advanced server customization enabled (get/put config files in place)

#### 1.0.0

- [x] ADDED :new: Basic server customization enabled (environment variables)
- [x] INITIALISED :airplane: Initial commit

---

### Valheim

#### 1.0.0

- [x] CHANGED :tools: Reworked with `steamcmd` release to confirm better deployment standard.
- [x] INITIALISED :airplane: Initial commit

---

### V Rising

#### 1.0.0

- [x] CHANGED :tools: Reworked with `steamcmd-winehq` release to confirm better deployment standard.
- [x] INITIALISED :airplane: Initial commit

---

### Satisfactory

- [ ] ADDED :new: Epic games integration

#### 1.0.0

- [x] INITIALISED :airplane: Initial commit

---

### Quake 3 Arena

- [ ] CHANGED :tools: Updated source image for PEON.
- [x] INITIALISED :airplane: Initial commit
