# REST API

All orchestrators are managed/controlled directly with the REST API.

Please look at the [**live docs**](http://docs.warcamp.org:8080) for detailed development information.

---

## RESTful API

We are using a RESTful API as it is quite easy and there are plenty of guides on how to use REST as a technology.

---

### Authorization

We plan on supporting more and more authorization methods. Currently, the below list is what is supported.

#### API-KEY

The defaults are as below. Please change these in the `.env` file for the orchestrator. *The implementation to change the setting via API is on the roadmap.*

| header key | value |
| - | - |
| `X-Api-Key` | `my-super-secret-api-key` |

---

### Basic Overview

This API expects a JSON payload in *most* cases.

#### Base URI/URL

The base follows the standard below.

```bash
# structure
{{peon_orchestrator_url}}:{{api_port}}/api/1.0/

# some valid examples include
https://gameserver.cloud:5000/api/1.0/
http://192.168.20.2:5000/api/1.0/
http://localhost:5000/api/1.0/
```

#### Endpoints

##### Base Endpoint

We are currently on version `1.0` of the API. We will try to keep from having to change endpoints, however, if that has to happen we'll opt to create a new version.

`BASE_URL/api/1.0/`

---

#### Supported Endpoints

Below is a list of currently supported API calls. *Please go to the [**live docs**](http://docs.warcamp.org:8080) for more in-depth information.

---

##### Servers

Used when the `SERVERNAME` is unknown.

```yaml
    servers:
        - [GET] List all servers registered to Orchestrator
        - [POST] Create a new game server on Orchestrator
```

###### Payload

The structure of the payload for the `server` endpoint is as follows:

```json
{
    "game_uid": "<peon-game-uid>",
    "servername": "<user-defined-servername>",
    "description": "<user defined description for later reference>",
    "settings": [{
            "type": "env",
            "name": "container environment",
            "content": {
                "<KEY01>": "<VALUE 01>",
                "<KEY02>": "<VALUE 02>"
            }
        }
    ]
}
```

The payload contents can be broadly explained below.

Settings

| key | value example | purpose |
| - | - | - |
| type | `env` | Defines a random list of container environement variables |
| name | `container environment` | *I can't remeber why I put that there (TODO)* |
| content | *list of key-value pairs* | An undefined quantity of settings (defined by the each game recipe), to configure the server instance. |

###### Example

Creating a `Valhiem` server

URL

```url
http://orc.domain.com:5000/api/1.0/servers [POST]
```

HEADERS

```json
{ "X-Api-Key" : "my-super-secret-api-key" }
```

PAYLOAD [BODY]

Only `JSON` payloads are currently supported.

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

---

##### Server

Used for managing a specific server instance with a known `SERVERNAME`.

```yaml
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
        - [DEL] Removes a game container leaving the server and config files intact (optional flag to delete all files as well)
        body: { "eradicate" : "True" } *Optional (destructive data removal)
    server/eradicate/GAME_UID.SERVERNAME:
        - [DEL] Deletes all game data & config files
        body: { "eradicate" : "True" } *Required
```
