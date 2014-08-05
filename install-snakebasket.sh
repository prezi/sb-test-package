#!/bin/sh
PIP_VERSION=c6fab6ac5424b18f5cbae9a0ca1aeedfe053a36a
SB_VERSION=8e2e91ef2c7d034fa45c8005e5217fec333808ee

not_in_env_error() {
    echo "You are not currently in a python virtualenv."
    echo "Please activate a virtualenv to install snakebasket."
    exit 1
}
[ -z "${VIRTUAL_ENV:-}" ] && not_in_env_error
if [ -f $VIRTUAL_ENV/bin/sb -a -d $VIRTUAL_ENV/src/snakebasket -a "$(cd $VIRTUAL_ENV/src/snakebasket/ 2>/dev/null && git rev-parse HEAD)" == "$SB_VERSION" ]; then
    echo "Snakebasket version $SB_VERSION already installed"
else
    pip install -e git+http://github.com/pypa/pip.git@$PIP_VERSION#egg=pip -e git+git@github.com:prezi/snakebasket.git@$SB_VERSION#egg=snakebasket
fi
