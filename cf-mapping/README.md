# CloudFormation Mappings

Mappings are fixed (aka hard coded) variables within your CloudFormation Template and are handy to differentiate different environments (dev vs prod), regions, AMI types, ect...

```
RegionMap:
  us-east-1:
    "32": "ami-111111"
    "64": "ami-222222"
  us-west-1:
    "32": "ami-333333"
    "64": "ami-444444"
  eu-west-1:
    "32": "ami-555555"
    "64": "ami-666666"
```

### When to use mappings vs parameters

* mappings are good when you know in advance all values that can be taken and that they can be deduced from variables such as

  - Region
  - Availability Zone
  - AWS Account
  - Environemnt (dev vs prod)

* mapping allow safer control over the template because all values are specified up front (however you can specified the allowed values for parameters ...)

* use parameters when you values are user / context specific and have a dynamic component that cannot be known ahead of time

### Looking Up Values in Mappings

Use the `Fn::FindInMap` function to lookup and return named values form a spcific key or the sorthand version `!FindInMap`

* usage: `!FindInMap [MapName, TopLevelKey, SecondLevelKey]`

Example: the following does a lookup using the above RegionMap and the Pseudo parameter always available `AWS::Region`

```
Resources:
  MyEC2:
    Type: AWS::EC2::Instance
    Properties:
      ImageId: !FindInMap [RegionMap, !Ref "AWS::Region", 32]
```
