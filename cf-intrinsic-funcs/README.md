# CloudFormation Intrinsic Functions

The Functions

- `Ref`
- `Fn::GetAtt`
- `Fn::FindInMap`
- `Fn::ImportValue`
- `Fn::Join`
- `Fn::Sub`
- Condition Functions
  - `Fn::And`
  - `Fn::Equals`
  - `Fn::If`
  - `Fn::Not`
  - `Fn::Or`


### `Fn::Ref` or `!Ref`

References things like:
 - Parameter to get the values of a parameter
 - Resources to get the physical ID of the underlying resource
 
### `Fn::GetAtt` or `!GetAtt`

Accesses exposable attributes of resources (reach resources expose a predefined list of available attributes so check the docs)

### `Fn::FindInMap` or `!FindInMap`

Used to lookup a named value in a previously defined Mapping in the same template

### `Fn::ImportValue` or `!ImportValue`

Used to import values that are exported as outputs in other CF Stacks

### `Fn::Join` or `!Join`

Joins values with a delimiter

Syntax

```
!Join [ delimiter, [ comma-delimited list of values ] ]
```

Example: create "a:b:c"

```
!Join [ ":", [a, b, c] ]
```

### `Fn::Sub` or `!Sub`

Used to substitute variables from a text commonly used in conjunction with References or Pseudo parameters

- String must contain ${VariableName} specifying what to substitute









