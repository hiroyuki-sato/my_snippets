#!/usr/bin/bash

SCRIPT_ROOT=$( cd $( pwd )/..; pwd )

export PATH="$SCRIPT_ROOT:$PATH"

hoge(){
  [ $status -eq 1 ]
  [[ $output =~ "Usage:" ]]
}

