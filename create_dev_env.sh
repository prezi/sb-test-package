#!/usr/bin/env bash
appname=${1:?App name mandatory}
# Create virtualenv
virtualenv --distribute $appname
# Activate the virtualenv
. $appname/bin/activate 
# Install snakebasket and then checkout the project
curl -ss -L http://href.prezi.com/snakebasket | bash -s 
# Install the project in the virtualenv
projecturl=git@github.com:prezi/$appname.git
sb install --env local -e git+$projecturl#egg=$appname

