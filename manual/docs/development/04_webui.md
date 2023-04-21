# Web UI

The Web UI module is a supplimental service to the PEON project.

This is a user frontend (website) for managing PEON War Camps.

> **EARLY DEVELOPMENT**
*- Completely useless at this point*

---

## Design Objectives

- Extremely lightweight.
- Aesthetic design principles
- Controls remote systems through REST

---

## Software Stack Diagram

*\*This may change as technologies & skills evolve.*

![Software Stack](../images/diagrams/diagram_webui.png)

---

## Dev Notes

> THIS IS PROBABLY GOING TO BE DEPRECATED FOR A PROPER WEB STACK

WebUI (PeonUI) built into docker image using flask as a base.

- Flask provided by [tiangolo/uvicorn-gunicorn-fastapi-docker](https://github.com/tiangolo/uvicorn-gunicorn-fastapi-docker)
- Bootstrap provided by [bootswatch/darkly](https://bootswatch.com/darkly/)
- Postgres provided by [postgres:14-alpine](https://hub.docker.com/_/postgres)

[Flask app example](https://ianlondon.github.io/blog/deploy-flask-docker-nginx/)

---

## Roadmap

### *0.2.x*

- [ ] Recipes - Autodetect newly added recipies.
- [ ] Persistent server data - Keep server data for updates & future releases.

### *0.1.x*

- [ ] WebUI - Access controlled webpage for management
- [ ] Deploy and delete games from a recipe catalogue (hosted here)
- [ ] Start/stop servers with timeouts (e.g. specify a game session to run for 6 hours (with the option to extend))

---

## Navigation

Links to various project-related resources.

[![github](../../images/buttons/button_github.svg)](https://github.com/the-peon-project/peon-webui)
[![github](../../images/buttons/button_bug.svg)](https://github.com/the-peon-project/peon-webui/issues/new/choose)
[![github](../../images/buttons/button_changelog.svg)](../development/release_notes/04_webui.md)
[![github](../../images/buttons/button_docker.svg)](https://hub.docker.com/repository/docker/umlatt/peon.webui/general)
