# Static IP to Dynamic IP 

### Introduction
- This is a simple collection of script to convert a dynamic IP to update itself with changes automatically to the AWS r53 A records. This script is applicable for all Linux distributions with Public IP assigned by ISP. This script is tested on Ubuntu 22.04 LTS.
</br>

</br>

### I used this script to update my dynamic IP, where I want to access my home server from the internet.
</br>

</br>

### Pre-requisites
1. You need to have a public IP address for your server.
2. You need to have a domain name.
3. AWS API access key and secret key.
4. AWS Route53 hosted zone ID.
5. Python 3.6 or above on your server.
6. awscli installed on your server.
7. sudo access on your server.

</br>

### How it works
- fetches the public IP and update same is recorded in the aws r53 template,  with aws creadentials which have role allowed to update the A records in the specified domain will be updated by aws cli command.
