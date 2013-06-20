#!/bin/sh
PIP_VERSION=c6fab6ac5424b18f5cbae9a0ca1aeedfe053a36a
SB_VERSION=9e32c31ea87287621951eb5fcfb05b508397c2ee

not_in_env_error() {
    echo "You are not currently in a python virtualenv."
    echo "Please activate a virtualenv to install snakebasket."
    exit 1
}
[ -z "${VIRTUAL_ENV:-}" ] && not_in_env_error
pip install -e git+http://github.com/pypa/pip.git@$PIP_VERSION#egg=pip -e git+git@github.com:prezi/snakebasket.git@$SB_VERSION#egg=snakebasket
