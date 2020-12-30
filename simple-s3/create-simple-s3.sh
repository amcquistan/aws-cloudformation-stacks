#!/bin/bash

if [[ -z $1 ]]; then
  echo 'Must provide stack name as first parameter'
  exit 1
fi

if [[ -z $2 ]]; then
  echo 'Must provide profile name as second parameter'
  exit 1
fi

if [[ -z $3 ]]; then
  echo 'Must provide region name for third parameter'
  exit 1
fi

set -x

aws cloudformation create-stack \
  --stack-name $1 \
  --profile $2 \
  --region $3 \
  --template-body file://simple-s3.yaml
