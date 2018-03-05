# aws-cf-spring-boot-deploy


# Prerequisites

* Setup Ansible environment :
```
source ./activate.sh
```

The Ansible scripts requires AWS access keys in ~/.aws/credentials, it looks for the default profile :
```
[default]
aws_access_key_id=<Your access key>
aws_secret_access_key=<Your secret access key>
```


# Manage the stack in AWS

To Deploy the Stack:

```
$ provision-stack.sh  <key pair name>
```

To Delete the Stack:

```
$ delete-stack.sh
```