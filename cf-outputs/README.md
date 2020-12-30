# CloudFormation Outputs

The `Outputs` section declares optional ouput values that we can import into other stacks (if they are exported first) enabling cross stack collaboration 

Outputs are visible from AWS Console or in the AWS CLI

Useful, for example, if you define a network CloudFormation stack and output the varaibles such as VPCID and Subnet IDs

__You cannot delete a CF Stack if has outputs that are being referenced by another CF Stack__

Example

```
Resources:
  SSHSg:
    Type: AWS::EC2::SecurityGroup
    Properties:
      GroupDescription: Enable SSH access via port 22
      SecurityGroupIngress:
        - CidrIp: 0.0.0.0/0
          FromPort: 22
          IpProtocol: tcp
          ToPort: 22
Outputs:
  GeneralSSHSecurityGroup:
    Description: The SSH Security Group for Reuse
    Value: !Ref SSHSg
    Export:
      Name: SSHSecurityGroup
```

then referenced in another stack

```
Resources:
  MyEC2:
    Type: AWS::EC2::Instance
    Properties:
      AvailabilityZone: us-east-2b
      ImageId: ami-111111
      InstanceType: t2.micro
      SecurityGroups:
        - !ImportValue SSHSecurityGroup
```
