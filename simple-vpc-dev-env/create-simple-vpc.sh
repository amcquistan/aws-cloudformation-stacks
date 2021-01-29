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
  echo "Must provide availability zone for fourth parameter"
  exit 1
fi

StackName=$1
Profile=$2
Region=$3
AZ=$4

VpcCidr="10.192.0.0/16"
PubSubnetCidr="10.192.10.0/24"
PrivSubnetCidr="10.192.20.0/24"

read -p "Use default VPC Cidr $VpcCidr (Y/N): " use_vpcdefault
if [[ $use_vpcdefault == "N" ]]; then 
  read -p "Enter VPC Cidr: " VpcCidr
  read -p "Enter Public Subnet Cidr: " PubSubnetCidr
  read -p "Enter Private Subnet Cidr: " PrivSubnetCidr
else
  read -p "Use default Public Subnet Cidr $PubSubnetCidr (Y/N): " use_pubsubnetdefault
  if [[ $use_pubsubnetdefault == "N" ]]; then 
    read -p "Enter Public Subnet Cidr: " PubSubnetCidr
  fi

  read -p "Use default Private Subnet Cidr $PrivSubnetCidr (Y/N): " use_privsubnetdefault
  if [[ $use_privsubnetdefault == "N" ]]; then 
    read -p "Enter Private Subnet Cidr: " PrivSubnetCidr
  fi
fi

set -x

aws cloudformation create-stack --stack-name $StackName \
  --profile $Profile \
  --region $Region \
  --parameters ParameterKey=EnvironmentName,ParameterValue="$StackName" \
    ParameterKey=VpcCIDR,ParameterValue="$VpcCidr" \
    ParameterKey=PublicSubnetCIDR,ParameterValue="$PubSubnetCidr" \
    ParameterKey=PrivateSubnetCIDR,ParameterValue="$PrivSubnetCidr" \
    ParameterKey=AZ,ParameterValue="$AZ" \
  --template-body file://simple-vpc.yaml

