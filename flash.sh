#!/bin/zsh

set -euo pipefail

FIRMWARE_PATH="combined/glove80.uf2"
LH_VOLUME="/Volumes/GLV80LHBOOT"
RH_VOLUME="/Volumes/GLV80RHBOOT"

if ! [ -f "$FIRMWARE_PATH" ] ; then
  echo "firmware does not exist at $FIRMWARE_PATH"
  exit 1
fi

did_flash=

if [ -d "$LH_VOLUME" ] ; then
  echo 'left half mounted; flashing...'
  cp "$FIRMWARE_PATH" "$LH_VOLUME"
  did_flash=1
fi

if [ -d "$RH_VOLUME" ] ; then
  echo 'right half mounted; flashing...'
  cp "$FIRMWARE_PATH" "$RH_VOLUME"
  did_flash=1
fi

if [ -z "$did_flash" ] ; then
  echo 'could not identify either half; are they in plugged in and in bootloader mode?'
  exit 1
fi

echo 'done'
