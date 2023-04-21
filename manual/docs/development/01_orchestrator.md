# Orchestrator

The Orc (orchestrator) module is the heart of the project.

It is what manages the process of game server deployment for users.

---

## Design Objectives

- Extremely lightweight.
- [REST API managed](../guides/02_rest_api.md)
- Deploys/controls the game containers.
- Abstracted from the game server/container platform to allow stack evolution.

---

## Software Stack Diagram

*\*This may change as technologies & skills evolve.*

![Software Stack](../images/diagrams/diagram_orc.png)

---

## Navigation

Links to various project-related resources.

[![github](../../images/buttons/button_github.svg)](https://github.com/the-peon-project/peon-orc)
[![github](../../images/buttons/button_bug.svg)](https://github.com/the-peon-project/peon-orc/issues/new/choose)
[![github](../../images/buttons/button_changelog.svg)](../release_notes/01_orchestrator.md)
[![github](../../images/buttons/button_docker.svg)](https://hub.docker.com/repository/docker/umlatt/peon.orc/general)

---

### API

RESTful API

Authorization - ``Api-Key``

API-KEY ``my-super-secret-api-key``
> Hard coded as user control is not yet implemented

This API expects a JSON payload in most cases.

[API Docs](http://api.peon.noxnoctua.com/)

```yaml
url: {{peon_orchestrator_url}}:{{api_port}}/api/1.0/
    servers:
        - [GET] List all servers registered to Orchestrator
        - [POST] Create a new game server on orchestrator
        
    server/get/GAME_UID.SERVERNAME:
        - [GET] Get details of a game server
    server/stats/GAME_UID.SERVERNAME:
        - [GET] Get details of a game server, with performance statistics
    server/start/GAME_UID.SERVERNAME:
        - [PUT] Start a specific game server from the Orchestrator
    server/stop/GAME_UID.SERVERNAME:
        - [PUT] Stop a specific game server from the Orchestrator
    server/restart/GAME_UID.SERVERNAME:
        - [PUT] Restart a specific game server from the Orchestrator
    server/description/GAME_UID.SERVERNAME:
        - [PUT] Update the description of a specific game server from the Orchestrator
    server/destroy/GAME_UID.SERVERNAME:
        - [DEL] Removes a game container leaving server and config files intact (optional flag to delete all files as well)
        body: { "eradicate" : "True" } *Optional (destructive data removal)
    server/eradicate/GAME_UID.SERVERNAME:
        - [DEL] Deletes all game data & config files
        body: { "eradicate" : "True" } *Required

    plans:
        - [GET] List all plans on orchestrator
        - [PUT] Get latest plans list from PEON project
```

#### API Examples

##### Create server

###### Example [Valhiem Server]

URL [REST] - ``POST``

```url
http://orchestrator.domain:5000/api/1.0/servers [POST]
```

HEADERS

```json
{ "X-Api-Key" : "my-super-secret-api-key" }
```

Payload [BODY] - ``JSON``

```json
{
    "game_uid": "valhiem",
    "servername": "server01",
    "description": "A valhiem PEON server",
    "settings": [{
            "type": "env",
            "name": "container environment",
            "content": {
                "SERVERNAME": "My-Valhiem-Server",
                "WORLDNAME": "awesomeworld",
                "PASSWORD": "password123"
            }
        }
    ]
}
```


## Dev Notes

[HTML Response Codes](https://www.restapitutorial.com/httpstatuscodes.html)

---

## Roadmap

Here are some planned features

### *1.1.x*

- [ ] RESTapi (v1) - Console
- [ ] Security - Users & Audit Loggin
- [ ] Backups

### 1.0.x

- [ ] :zap: RELEASE :zap:
- [ ] Update to new deployment architecture.

### *0.3.x*

- [x] RESTapi (v1) - Plan/recipies
- [x] Security - api-key integration
- [x] Start/Stop scheduler
  
### *0.2.x*

- [x] RESTapi (v1) - custom configurations
- [x] Server deployment (v2) - custom configurations
- [x] Persistent server data - Keep server data for updates & future releases.

### *0.1.x*

- [x] RESTapi (v1)
- [x] Server deployment (v1)
