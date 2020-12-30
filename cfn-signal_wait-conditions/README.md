# CloudFormation Signal

Useful to signalling back to CloudFormation to tell it if operations such as cfn-init have succeeded or not.

cfn-signal is usually done in conjunction with a WaitCondition 

Example workflow:

1. CloudFormation service launches EC2 Instance
2. CF Service enters wait condition halting progress of the rest of the stack until signalled
3. EC2 Instance fetches init data from CF service
4. EC2 Instance sends back a cfn-signal when cfn-init finished
5. CF Service proceeds


