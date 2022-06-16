#!/usr/bin/python3

#This script fetch the DynamicIP(dip) on your local server at home/office and send that dip as alias record in aws r53.
# Dependencies python3, pip3, boto3

import os
import boto3

myip = os.system("myip")
client = boto3.client('route53')

response = client.change_resource_record_sets(
    HostedZoneId='klmlkmlkmlm',
    ChangeBatch={
    "Comment": "Update record to reflect new IP address of home router",
    "Changes": [
        {
            "Action": "UPSERT",
            "ResourceRecordSet": {
                "Name": "mk.truetech.solutions",
                "Type": "A",
                "TTL": 60,
                "ResourceRecords": [
                    {
                        "Value": "95.216.245.188"
                    }
                ]
            }
        }
    ]
}
)