# V Rising

![V Rising](../../images/game-logos/vrising.png)

## Before you start

### World Saves

Your world saves will be stored in the path `./user` if you use the provided `docker-compose.yml`.
This will allow you to download/backup/move files around at your leisure.

## Manually Configuring Settings

You can go to the official docs to see what you can change. Just replace the config files with what you want and restart the server.

[Offical Guide](https://github.com/StunlockStudios/vrising-dedicated-server-instructions)

All of these files can be found and edited in the server's local storage path.

`./peon/servers/[game_uid]/[server_name]/`

## Stand-alone mode

How to deploy a server without the PEON project.

*This is built around container tech, so you will need something like Docker installed.*

1. Go to the [gihub project](https://github.com/the-peon-project/peon-warplans/tree/main/vrising)
2. Download the files `docker-compose.yml`, `.env.example` & `server_start` from the project repo.
3. Put the files into a folder together.
4. Make the folders `data`,`peon` and `user` and set all file permissions to that of your container user id (1000)
```bash
mkdir data peon user
chown -R 1000:1000 .
```
5. Make sure that the `server_start` file has execute permissions
```bash
chmod u+x server_start
```
6. Copy `.env.example` to `.env` and edit the contents where necessary (e.g. updating the GSLT)
7. Start the server and play.
```bash
# newer systems
docker compose up -d
# older systems
docker-compose up -d 
```

> Or... just use PEON. it should do all the heavy lifting for you.

## Links

If you want to dig a bit deeper, here are the links

- [Development Docs](../../development/games/vrising.md)
- [Github Project](https://github.com/the-peon-project/peon-warplans/tree/main/vrising)
