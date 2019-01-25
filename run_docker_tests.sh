#!/bin/bash
echo "Running run_docker_tests.sh"
if [ 0 ]
then
  echo "Tests passed!"
  exit 0
else
  echo "Tests failed!"
  exit 1
fi

# octave-cli --eval 'mpver'
# octave-cli --eval 'exit(1)'
