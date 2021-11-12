#!/usr/bin/python3

#This script fetch the DynamicIP(dip) on your local server at home/office and send that dip as alias record in aws r53.
# Dependencies python3, pip3, boto3

import os
import boto3

myip = os.system("myip")
client = boto3.client('route53')

response = client.change_resource_record_sets(
    HostedZoneId='Z1E5QYKGMFGDPA',
    ChangeBatch={
    "Comment": "Update record to reflect new IP address of home router",
    "Changes": [
        {
            "Action": "UPSERT",
            "ResourceRecordSet": {
                "Name": "dummy.anandbr.com.",
                "Type": "A",
                "TTL": 300,
                "ResourceRecords": [
                    {
                        "Value": "123.123.123.111"
                    }
                ]
            }
        }
    ]
}
)
