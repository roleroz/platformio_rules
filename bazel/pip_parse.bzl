load("@python3_10_8//:defs.bzl", "interpreter")
load("@rules_python//python:pip.bzl", "pip_parse")

def pip_parse_dependencies():
    pip_parse(
        name = "py_deps",
        python_interpreter_target = interpreter,
        requirements_lock = "//:requirements_lock.txt",
    )