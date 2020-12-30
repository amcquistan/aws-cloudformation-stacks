#!/bin/bash

if [[ -z $1 ]]; then
  echo Missing required argument! First argument should be the name of the Region to query parameters for.
  exit 1
fi

REGION=$1

set -x

aws ssm get-parameters-by-path \
  --path /aws/service/ami-amazon-linux-latest \
  --region $REGION \
  --query 'Parameters[].Name'
