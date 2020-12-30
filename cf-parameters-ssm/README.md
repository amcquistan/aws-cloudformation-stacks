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

### Publically Available AWS SSM Parameters

There are [publically available SSM parameters provided by AWS](https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-public-parameters-ami.html) which are useful for accessing things like standard AMIs that are publically available. 

You can query them with the AWS CLI like so.

```
aws ssm get-parameters-by-path \
    --path /aws/service/ami-amazon-linux-latest \
    --query 'Parameters[].Name'
```

These are useful for default values of parameters that you want your CF templates to reference consistently. See ec2-with-pub-ssm-params.yaml for an example.

