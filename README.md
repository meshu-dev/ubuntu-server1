# Scripts

## Install software

Install software on new build of Ubuntu server.

Script will restart the server to apply Docker permissions.

```
sudo sh install.sh
```

# Services

## Setup

Go to specfic service folder.

```
cd ~/ubuntu-server1/services/[SERVICE]
```

Create the .env file using the example.env.

```
cp example.env .env
```

Open the .env file and edit the values.

```
vim .env
```

Start up the docker service.

```
docker compose up -d
```
