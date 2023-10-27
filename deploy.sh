#!/usr/bin/env bash

set -eu

echo "Deploying with Travis SSH"
echo $PRIVATE_KEY >> mayank.pem
chmod 400 mayank.pem
ssh -o "StrictHostKeyChecking=no" -i "mayank.pem" $USERNAME@$SERVER_IP_ADDRESS sh docker-fe.sh

