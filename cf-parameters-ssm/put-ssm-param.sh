#!/bin/bash

if [[ -z $1 ]]; then
  echo 'Must provide profile name as third parameter'
  exit 1
fi

Profile=$1

set -ex

aws ssm put-parameter \
    --name "/cf-demos/ssm-params/default-us-east-2-amzlinux2-ami" \
    --description "The Amazon Linux 2 AMI for US-East-2 Ohio region" \
    --type "String" \
    --value "ami-0a0ad6b70e61be944" \
    --region us-east-2 \
    --profile $Profile

aws ssm put-parameter \
    --name "/cf-demos/ssm-params/default-instance-type" \
    --description "The default EC2 Instance type of t2.micor" \
    --type "String" \
    --value "t2.micro" \
    --region us-east-2 \
    --profile $Profile
