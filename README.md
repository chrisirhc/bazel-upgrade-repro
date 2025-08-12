Note this reproduction assumes you have Bazelisk installed.

After running `./reproduce.sh`, we expect no errors, but instead I see:
```sh
INFO: Analyzed target //:my_script (0 packages loaded, 0 targets configured).
INFO: Found 1 target...
Target //:my_script up-to-date:
  bazel-bin/my_script
INFO: Elapsed time: 0.503s, Critical Path: 0.00s
INFO: 1 process: 1 internal.
INFO: Build completed successfully, 1 total action
INFO: Running command line: bazel-bin/my_script
Traceback (most recent call last):
  File "/…/8acc641aa2035fbc3b74f30f369f3a78/execroot/_main/bazel-out/k8-fastbuild/bin/my_script", line 610, in <module>
    Main()
  File "/…/8acc641aa2035fbc3b74f30f369f3a78/execroot/_main/bazel-out/k8-fastbuild/bin/my_script", line 595, in Main
    ExecuteFile(
  File "/…/8acc641aa2035fbc3b74f30f369f3a78/execroot/_main/bazel-out/k8-fastbuild/bin/my_script", line 377, in ExecuteFile
    _RunExecv(python_program, main_filename, args, env)
  File "/…/8acc641aa2035fbc3b74f30f369f3a78/execroot/_main/bazel-out/k8-fastbuild/bin/my_script", line 403, in _RunExecv
    os.execv(python_program, argv)
FileNotFoundError: [Errno 2] No such file or directory: '/…/8acc641aa2035fbc3b74f30f369f3a78/execroot/_main/bazel-out/k8-fastbuild/bin/my_script.runfiles/rules_python~~python~python_3_11_x86_64-unknown-linux-gnu/bin/python3'
```
