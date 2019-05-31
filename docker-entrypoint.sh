#!/bin/bash
set -e

mkdir -p "$DECRED_DATA"

chown -R $USER "$DECRED_DATA"
ln -sfn "$DECRED_DATA" "$DOTDCRD"

chown -h $USER:$USER "$DOTDCRD"

exec su "$USER" -c "$*"