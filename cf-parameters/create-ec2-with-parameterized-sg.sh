#!/bin/bash

if [[ -z $1 ]]; then
  echo "Must provide stackname as first argument"
  exit 1
fi

if [[ -z $2 ]]; then
  echo "Must provide ServerSgDescription as second argument"
  exit 1
fi

if [[ -z $3 ]]; then
  echo 'Must provide profile name as third parameter'
  exit 1
fi

if [[ -z $4 ]]; then
  echo 'Must provide region name for fourth parameter'
  exit 1
fi

StackName=$1
ServerSgDescription=$2
Profile=$3
Region=$4

set -x

aws cloudformation create-stack --stack-name $StackName \
  --profile $Profile \
  --region $Region \
  --template-body file://ec2-with-parameterized-sg.yaml \
  --parameters ParameterKey=ServerSgDescription,ParameterValue="$ServerSgDescription"
