#!/bin/bash

if [[ -z $1 ]]; then
  echo "Must provide stackname as first argument"
  exit 1
fi

if [[ -z $2 ]]; then
  echo 'Must provide profile name as second parameter'
  exit 1
fi

StackName=$1
Profile=$2

set -x

aws cloudformation describe-stacks --stack-name $StackName --profile $Profile
