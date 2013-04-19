#!/bin/sh
PIP_VERSION=854574f65c4ef92da8dd78b9831a9604dcc9957a
SB_VERSION=b52f5819e88597a5d4b38b4671a2c68a3e0460b2

not_in_env_error() {
    echo "You are not currently in a python virtualenv."
    echo "Please activate a virtualenv to install snakebasket."
    exit 1
}
[ -z "${VIRTUAL_ENV:-}" ] && not_in_env_error
pip install -e git+http://github.com/pypa/pip.git@$PIP_VERSION#egg=pip -e git+git@github.com:prezi/snakebasket.git@$SB_VERSION#egg=snakebasket
