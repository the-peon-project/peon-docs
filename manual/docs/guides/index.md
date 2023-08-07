# Introduction

Welcome to the guides for the PEON project.

Here you will learn how to get up and running as fast as possible.

## PEON Deployment

### Pre-Requisites

The following packages should be installed for PEON to run.

    - git
    - Docker
    - Docker Compose

### 1. Download base deployment

After navigating to your desired directory, you can pull the latest project release. *The folder `peon` will automatically be created*

```bash
git clone https://github.com/the-peon-project/peon
```

### 2. Download the latest release

> :warning: If you want to deploy a Discord bot, you need to first create a `DISCORD TOKEN`. You can follow the steps at [this link](https://realpython.com/how-to-make-a-discord-bot-python/#how-to-make-a-discord-bot-in-the-developer-portal)

You can now deploy PEON with the following.

```bash
cd peon
./deploy_peon.sh
```

## PEON Usage

```bash
peon
```