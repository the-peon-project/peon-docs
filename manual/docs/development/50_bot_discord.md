# Bot.Discord

The Web UI module is a supplemental service to the PEON project.

This is a Discord bot to manage orchestrators.

> **RELEASED**

---

## Design Objectives

- Non-programmer friendly

---

## Software Stack Diagram

![Software Stack](../images/diagrams/diagram_bot_discord.png)

---

## Dev Notes

- [How to: guide](https://realpython.com/how-to-make-a-discord-bot-python/)
- [Discord Application](https://discord.com/developers/applications)
- [Discord.py](https://discordpy.readthedocs.io/en/stable/ext/commands/api.html#bots)

### Improved bots

[interactions.py](https://discord-interactions.readthedocs.io/en/latest/quickstart.html)

---

## Navigation

Links to various project-related resources.

[![github](../../images/buttons/button_github.svg)](https://github.com/the-peon-project/peon-bot-discord)
[![github](../../images/buttons/button_bug.svg)](https://github.com/the-peon-project/peon-bot-discord/issues/new/choose)
[![github](../../images/buttons/button_changelog.svg)](../development/release_notes/50_bot_discord.md)
[![github](../../images/buttons/button_docker.svg)](https://hub.docker.com/repository/docker/umlatt/peon.bot.discord/general)

---

## Roadmap

### *0.2.x*

- [ ] peon.bot.discord bot is re-written for ``slash`` commands (see ``interactions.py``)

### *0.1.x*

- [x] peon.orc servers can be managed by the bot

---

## Release Notes

### 0.2.8

- Messaging - Reworked error messages
- Bot - BugFix: Scheduling past event times.

### 0.2.7

- Bot - Added shutdown scheduler

### 0.2.6

- Bot - Better natural language support

### 0.2.5

- Bot - Added aliases for commands

### 0.2.2

- Text - Reformatted info in the message feed
- Server_Config - Allowed for json formatted content

### 0.2.1

- Discord - Added message cleaner ``clear [int]``

### 0.2.0

- Orc - control start/stop/restart

### 0.1.1

- Logging - Added devMode switch

### 0.1.0

- First version of the bot
- Basic get-all/get the functionality
- Hardcoded bot key

### 0.0.0

- Initial commit
