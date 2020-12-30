# CloudFormation Conditions

Conditions are used to control the creation of resources or outputs based on a condition

Common uses of conditions:

- Environment dependent resource creation (dev / test / prod)
- AWS region
- driven by values of parameters

Each condition can reference another condition, parameter value or mapping

__Condition Syntax__

```
Conditions:
  CreateProdResources: !Equals [ !Ref EnvType prod ]

Resources:
  MountPoint:
    Type: AWS::EC2::VolumeAttachment
    Condition: CreateProdResources
```

is true if the parameter EnvType is equal to prod ... and when true the MountPoint resource is created

other logical function:

- Fn::And
- Fn::Equals
- Fn::If
- Fn::Not
- Fn::Or

