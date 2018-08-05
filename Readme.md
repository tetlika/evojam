# Description

Designed for aws: creates VPC, aws microsoft ad infra, windows host and registeres it into created microsoft ad.

# Requirements

Python's boto, botocore, boto3 modules should be installed.

The setup was tested under ansible version 2.5.1 and python 2.7.15rc1 on ubuntu 18.04.

# Configuring

Adjust proper variables in vars.yml, the required params to change are aws access and secret keys. 

Recommended to change passwords and keyname if the specified keyname already exists. 

# Usage

To build whole stack simply run:
```
make full-stack
```
To build aws microsoft infra on top of created vpc, simply run:
```
make create-ms-ad
```
