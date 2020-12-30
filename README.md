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
