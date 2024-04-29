#!/bin/bash
source ./source_test.sh
resolve_options "$@"
if [ "${ECHOLESS_FLAG}" ] ; then
  echo "${DATE}"
else
  echo "ECHO"
  echo "${DATE}"
fi