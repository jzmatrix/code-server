#!/bin/bash

# Can't install using pipeline
apt-get -y install golang

/usr/bin/entrypoint.sh --bind-addr 0.0.0.0:8080  .