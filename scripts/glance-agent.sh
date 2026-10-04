#!/bin/sh

cd /tmp

wget https://github.com/glanceapp/agent/releases/download/v0.1.0/agent-linux-amd64.tar.gz
tar -xvf agent-linux-amd64.tar.gz

sudo ./agent install
