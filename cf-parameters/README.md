# CloudFormation Parameters

Parameters are a way to provide inputs to your AWS CloudFormation template

* they enable template reuse across different applications or environments (ie, dev, test, staging, prod)
* if you cannot know ahead of time what a value may be
* parameters can be typed (ie, String, Number)

Settings for Parameters
- Type:
  - String
  - Number
  - CommaDelimitedList
  - List<Type>
  - AWS Parameter (for matching against existing values in AWS Account)
- Description
- Constraints
- ConstraintDescription
- MinLength/MaxLength
- MinValue/MaxValue
- Defaults
- AllowedValues (array)
- AllowedPattern (regexp)
- NoEcho (bool)

Referencing parameters in you CF Template
- Fn::Ref is used to reference parameters (or shorthand !Ref)
- Can be used anywhere in template (Ref also is used to reference other elements in the Template)

```
DbSubnet1:
  Type: AWS::EC2::Subnet
  Properties:
    VpcId: !Ref MyVPC
```

Pseudo Parameters

* "pre-canned" parameters available to all templates
  - `AWS::AcountId`
  - `AWS::NotificationARNs`
  - `AWS::NoValue`
  - `AWS::Region`
  - `AWS::StackId`
  - `AWS::StackName`

