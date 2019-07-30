#!/bin/bash

usage(){
  command=$( basename $0 )
  echo "Usage: $command name" 1>&2
  exit 1
}

if [ $# -ne 1 ] ; then
  usage
fi

echo "Hello $1"
exit 0
