#!/bin/bash

if [[ -z $1 ]]; then
  echo "Must provide stackname as first argument"
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

if [[ -z $4 ]]; then
  echo 'Must provide pem keyname for fourth parameter'
  exit 1
fi

StackName=$1
Profile=$2
Region=$3
KeyName=$4

aws cloudformation create-stack --stack-name $StackName \
  --profile $Profile \
  --region $Region \
  --parameters ParameterKey=KeyName,ParameterValue="$KeyName" \
  --template-body file://dev-msk.yaml \
  --capabilities CAPABILITY_NAMED_IAM
