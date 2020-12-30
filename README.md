# CloudFormations Stack

This is a collection of AWS CloudFormation templates for experimenting and reference.
CF Stacks are organized by directory and may contain additional stack specific README, helper scripts and other resources.

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
