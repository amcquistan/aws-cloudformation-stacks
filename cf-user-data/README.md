# User Data in EC2 for CloudFormation

The contents of the EC2 User Data script must be base64 encoded via `Fn::Base64`

The user data script log is in /var/log/cloud-init-output.log which is useful for debugging the user data commands and logic


