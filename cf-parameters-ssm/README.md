# CloudFormation Parameters with AWS Systems Manager

First a SSM Parameter must be available. You can add on via AWS CLI like so.

```
aws ssm put-parameter \
    --name "/service/sam-cc1/github/repo" \
    --description "Github Repository name for Cloudformation Stack sam-cc1-pipeline" \
    --type "String" \
    --value "GITHUB_REPO_NAME"
```

Then you reference the parameter in your CF template by creating Parameters of type 'AWS::SSM::Parameter::Value<Type>'



