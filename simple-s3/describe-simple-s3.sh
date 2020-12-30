#!/bin/bash

STACK=$1

if [[ -z $1 ]]; then
  STACK=simple-s3
fi

set -x

aws cloudformation describe-stacks --stack-name $STACK
