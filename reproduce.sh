#!/bin/bash
set -e

bazel run //:my_script
echo "8.3.1" > .bazelversion
bazel run //:my_script
echo "7.4.1" > .bazelversion
bazel run //:my_script
