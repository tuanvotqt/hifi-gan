#!/bin/bash

QUEUE_DIR="$HOME/train_queue"
LOCKFILE="$QUEUE_DIR/lock"

mkdir -p "$QUEUE_DIR"

(
  flock -x 200

  echo "[$(date)] Starting job: $*"
  "$@"
  echo "[$(date)] Finished job: $*"

) 200>"$LOCKFILE"