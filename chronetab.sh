#!/bin/bash
#Call this script in the crontab by logging to root user and execute 'crontab -e -u xinux'
#*/9 * * * * sh /home/xinux/dip2sip4r53/chronetab.sh

sed -r 's/(\b[0-9]{1,3}\.){3}[0-9]{1,3}\b'/"$(myip)"/ /home/xinux/dip2sip4r53/aws_r53_alias_template.py > /home/xinux/dip2sip4r53/aws_r53_alias.py && python3 /home/xinux/dip2sip4r53/aws_r53_alias.py
