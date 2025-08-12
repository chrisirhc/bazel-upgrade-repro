#!/bin/bash
set -e

# Start with Bazel 7.4.1
bazel run //:my_script # Successful
echo "8.3.1" > .bazelversion
bazel run //:my_script # Successful
echo "7.4.1" > .bazelversion
bazel run //:my_script # Fails
