# Introduction

Welcome to the **DEVELOPMENT** documentation.

Here you can get an overview of how the PEON project is architected, where to go and how to use all of the various tools and code that has been built thus far.
*Please note that documentation may lag behind the development status, but the general rules/intent should still be valid.*

---

## Architecture

This diagram shows off the basic architecture of the PEON project.

*At its core, everything revolves around the Orcs.*

![diagram_comms](../images/diagrams/architecture_master.png)

- <font color="orange">REST API</font> - The orchestrator can be managed by a REST API, with is represented with orange connection/s.
- <font color="red">DOCKER SOCKET</font> - The orchestrator manages the underlying docker host using docker sockets (at the moment), which is represented with red connection/s.
- \*Optional Feature - These are not *required* to leverage the automation services of the PEON project.

---

## Reference

Below tries to define/explain the use of terms and symbols throughout the project.

### Terms & Acronyms

| Term/Acronym | Definition |
|-|-|
| Orc | The orchestration component of the PEON project. |
| War Table | The PEON component is responsible for shared services around the game servers. |
| War Plan | These are the game server recipes. |
| WebUI | A website client built for the sole purpose of managing instances of *Orc*s |
| War Camp | A name for a container host that is running an *Orc* |
| War Chief | A name for a module that manages multiple *War Camps* |

### Symbols

Below are the symbols that are typically found throughout the various changelogs/release notes and their meanings.

| Key | Symbol | Description |
|-|-|-|
| RELEASE | :zap: `:zap:` | When a release contains changes that impact multiple codebases in the project. :zap: **IMPACT RELEASE** :zap:|
| INITIALISED | :airplane: `:airplane:` | When the project is initialised/added to the repository |
| ADDED | :new: `:new:` | When a feature/new tool/ service has been added to the codebase |
| CHANGED | :tools: `:tools:` | When a modification to the existing codebase/architecture has been carried out |
| OPTIMISED | :alarm_clock: `:alarm_clock:` | When a portion of the codebase has been improved visually or with regards to performance |
| REMOVED | :scissors: `:scissors:` | When something is removed/cut from the codebase |
| BUGFIX | :beetle: `:beetle:` | When a bug has been identified and resolved |
| LOGGING| :speech_balloon: `:speech_balloon:` | When logging is added/enhanced/improved |
| TESTED | :pencil: `:pencil:` | When a test task is planned & executed |
| SECURITY | :unlock: `:unlock:` | When some security modifications have been added |

---

## Tools & Technologies

Below, is a list of the various tools and technologies leveraged in the development process for the PEON project.

### Documentation

#### Material for MkDocs

[Project Link](https://squidfunk.github.io/mkdocs-material/)

We are using `mkdocs-material` as the basis for our documentation framework, as it is markdown compliant and requires minimal maintenance to provide aesthetically pleasing documentation.

##### Logo/Symbol Search

If you need to find a logo/symbol that exists in the `mkdocs-material` platform a useful link is [here](https://squidfunk.github.io/mkdocs-material/reference/icons-emojis/)

---

### Diagram Design

#### Python Diagrams

[Project Link](https://diagrams.mingrammer.com/docs/getting-started/examples)

We are using the *diagrams* module for Python. It offers the ability to dynamically generate diagrams programmatically. *There is a built-in (Material for MkDocs) programmatic diagram software, however, initial investigations did not appear to provide as aesthetic a design as Python Diagrams*
