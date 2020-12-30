# CloudFormation Resources

Resources are the core of your CloudFormation template and are mandatory

Resources represent the different AWS Components (ie, services like EC2 Instances, S3 Buckets, IAM Policies, over 200 more) that will be created and configure

Resources are declared and can reference each other

AWS determines creation, updates, and deletion of the resources for us

Resources have a Type field that identify it in the form of:

```
AWS::aws-product-name::data-type-name
```

### [AWS Resource Type Reference](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html)






