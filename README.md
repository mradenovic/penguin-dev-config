# Dev config scripts for Crostini default container

These scripts will set up development environment on Chrome OS. It is assumed that default `penguin` container exists within default `termina` virtual machine. Scripts can be downloaded and ran manually or with `curl`.

## Rename default user

You can use Crosh and LXC to directly get a root shell in your container. From there, you can rename the default user ([source](https://www.reddit.com/r/Crostini/wiki/howto/change-default-username)).

Open `crosh` terminal with `Ctrl+Alt+T` keyboard shorcut.

```bash
# within chrosh terminal start default vm
crosh> vmc start termina

# within default vm start default container and login as root
(termina) chronos@localhost ~ $ lxc start penguin
(termina) chronos@localhost ~ $ lxc exec penguin -- bash

# within default container run rename-user.sh script
root@penguin:~$ curl -sSL https://raw.githubusercontent.com/mradenovic/penguin-dev-config/master/rename-user.sh | bash

```

## Setup dev environment

To set up dev environment open linux terminal as default user and run `config-penguin.sh` script. 

```bash
curl -sSL https://raw.githubusercontent.com/mradenovic/penguin-dev-config/master/config-penguin.sh | bash
```

The `config-penguin.sh` script  will do the following:
* update all debian packages
* install `VS Code`
* install `nvm` and `expo-cli`
* install `yarn`
* install and config `simple-scan`
* install `nano` and config `git`
