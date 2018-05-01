# Stupid Services [![CircleCI](https://circleci.com/gh/wsmidt/stupidservices.svg?style=svg)](https://circleci.com/gh/wsmidt/stupidservices)
A collection of stupid services...
Current services:
 - ping

Requirements
------------
- java8
- sbt
- docker
- ecs-cli

Setup
-----
Ubuntu 1804 LTS:

Install java8
```
$sudo add-apt-repository ppa:webupd8team/java
$sudo apt update
$sudo apt install oracle-java8-installer
```

Install sbt
```
$echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
$sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
$sudo apt-get update
$sudo apt-get install sbt
```

Install docker
```
$sudo apt-get install docker.io
```

Configure user permissions
```
$sudo addgroup --system docker
$sudo adduser $USER docker
$newgrp docker
```

Install ecs-cli
```
$scripts/install-ecs-cli.sh
```
