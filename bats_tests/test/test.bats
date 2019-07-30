#!/usr/bin/env bats
#
# https://github.com/bats-core/bats-core
#
# man 1 bats
# man 7 bats

load test_helper

#
# This function called before each tests.
#
setup(){
  echo "start" >> /tmp/hoge.txt
  touch /tmp/hoge.txt
}

#
# This function called before each tests.
#
teardown(){
  echo "done" >> /tmp/hoge.txt
}

@test "test" {
  run myscript.sh
  [ $status -eq 1 ];
  [[ $output =~ "Usage:" ]]
}

@test "test2" {
  run myscript.sh
  hoge
}

@test "SKIP" {
  skip "hoge"
  run myscript.sh
}
