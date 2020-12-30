# CloudFormations Stack

This is a collection of AWS CloudFormation templates for experimenting with and reference.
CF Stacks are organized by directory and may contain additional stack specific info like README.sh, helper scripts, CF YAML templates, and other resources.

### AWS CLI Common Commands Cheat Sheet

Validate a CF Template

```
aws cloudformation validate-template \
  --template-body file://template-name.yaml
```

Create a CF stack

```
aws cloudformation create-stack \
  --stack-name stack-name \
  --template-body file://template-name.yaml
```

Describe a CF Stack

```
aws cloudformation describe-stacks --stack-name stack-name
```

Delete a CF Stack (and all the resources with it)

```
aws cloudformation delete-stack --stack-name
```

## General Layout of a CF YAML Template

```
AWSTemplateFormatVersion: 2010-09-09
Description: ---
Metadata: 

Parameters: 

Mappings: 

Conditions: 

Resources: 

Outputs:

```

* there is also a empty-template.yaml for reference in the root of this project
* the only required parts are the version and Resources section

## Learning From Scratch

Recommend by starting with a short video 

https://www.youtube.com/watch?v=_jqwVpO1w6A

Then cruise through the directories of CF stacks in the following order. Note this does not include all the directories of CF stacks in this repo and, is more designed to get you an understanding of the basics then allow you to look up and steal from the folder specific topics as needed.

* [cf-parameters](https://github.com/amcquistan/aws-cloudformation-stacks/tree/main/cf-parameters)
* [cf-resources](https://github.com/amcquistan/aws-cloudformation-stacks/tree/main/cf-resources)
* [cf-user-data](https://github.com/amcquistan/aws-cloudformation-stacks/tree/main/cf-user-data)
* [https://github.com/amcquistan/aws-cloudformation-stacks/tree/main/cf-outputs](cf-outputs)
* [cf-mapping](https://github.com/amcquistan/aws-cloudformation-stacks/tree/main/cf-mapping)
* [cf-conditions](https://github.com/amcquistan/aws-cloudformation-stacks/tree/main/cf-conditions)
* [cf-intrinsic-funcs](https://github.com/amcquistan/aws-cloudformation-stacks/tree/main/cf-intrinsic-funcs)
* [cf-user-data](https://github.com/amcquistan/aws-cloudformation-stacks/tree/main/cf-user-data)
* [cf-parameters-ssm](https://github.com/amcquistan/aws-cloudformation-stacks/tree/main/cf-parameters-ssm)

