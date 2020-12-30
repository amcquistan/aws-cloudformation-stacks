#!/bin/bash


if [[ -z $1 ]]; then
  echo "Must provide stackname as first argument"
  exit 1
fi

if [[ -z $2 ]]; then
  echo 'Must provide profile name as third parameter'
  exit 1
fi

StackName=$1
Profile=$2

set -x

aws cloudformation delete-stack --stack-name $StackName \
  --profile $Profile
