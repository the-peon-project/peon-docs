# Introduction

Welcome to the guides for the PEON project.

Here you will learn how to get up and running as fast as possible.

## PEON Deployment

> :warning: This guide is outdated and incorrect... We're getting there.

### 1. Working directory

Create a working directory for the project

```bash
mkdir /root/peon
```

### 2. Download the latest release

Pull the latest release from the peon repo

```bash
wget https://github.com/the-peon-project/peon/archive/refs/tags/warcamp.tar.gz
```

### 3. Extract the project

Extract the project files into the ``peon`` directory.

```bash
tar -xvf warcamp.tar.gz --strip-components=1 --directory peon -C /root/peon/.
```

### 4. Deploy Peon to the server

Run download/deploy containers and configure services.

```bash
./install_peon.sh
```

### 5. Run ``peon-cli`` to confirm health (optional)

Management tui which runs on the docker host and is used to streamline peon support.

```bash
peon
```
