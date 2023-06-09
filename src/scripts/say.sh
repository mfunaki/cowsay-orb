#!/bin/bash
# This example uses cowsay command.
apt-get install cowsay
# This example uses envsubst to support variable substitution in the string parameter type.
# https://circleci.com/docs/orbs-best-practices/#accepting-parameters-as-strings-or-environment-variables
TO=$(circleci env subst "${PARAM_MESSAGE}")
# If for any reason the MESSAGE variable is not set, default message is "Hello, CircleCI"
echo "${MESSAGE}" | cowsay
