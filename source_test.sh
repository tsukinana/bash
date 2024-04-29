#!/bin/bash

resolve_options() {
  while getopts "d:e" opt; do
    case $opt in
      d)
        MASTER_DATE=$OPTARG
        ;;
      e)
        ECHOLESS_FLAG=1
        ;;
    esac
  done

  if [ "$MASTER_DATE" ]; then
    DATE="$MASTER_DATE"
  else
    DATE=$(date)
  fi
}
