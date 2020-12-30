#!/bin/bash

if [[ $1 == '-h' || $1 == '--help' ]]; then
  echo "List availability zones for regions"
  echo "To see all: ./list-azs.sh"
  echo "To see for one region: ./list-azs.sh Name=region-name,Values=us-east-2"
  exit 1
fi

if [[ -z $1 ]]; then
  set -x
  aws ec2 describe-availability-zones --all-availability-zones
else
  set -x
  aws ec2 describe-availability-zones --all-availability-zones --filters $1
fi
