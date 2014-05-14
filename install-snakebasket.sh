#!/bin/sh
PIP_VERSION=c6fab6ac5424b18f5cbae9a0ca1aeedfe053a36a
SB_VERSION=22a43c12047345c8724f803e4cc56a46af34846e

not_in_env_error() {
    echo "You are not currently in a python virtualenv."
    echo "Please activate a virtualenv to install snakebasket."
    exit 1
}
[ -z "${VIRTUAL_ENV:-}" ] && not_in_env_error
if [ -f $VIRTUAL_ENV/bin/sb -a $(cd $VIRTUAL_ENV/src/snakebasket/ && git rev-parse HEAD) == $SB_VERSION ]; then
    echo "Snakebasket version $SB_VERSION already installed"
else
    pip install -e git+http://github.com/pypa/pip.git@$PIP_VERSION#egg=pip -e git+git@github.com:prezi/snakebasket.git@$SB_VERSION#egg=snakebasket
fi
