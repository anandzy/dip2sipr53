#!/bin/bash
#Call this script in the crontab by logging to root user and execute 'crontab -e -u xinux'
#*/9 * * * * sh $HOME/dip2sipr53/chronetab.sh

sed -r 's/(\b[0-9]{1,3}\.){3}[0-9]{1,3}\b'/"$(myip)"/ $HOME/dip2sipr53/aws_r53_alias_template.py > $HOME/dip2sipr53/aws_r53_alias.py && python3 $HOME/dip2sipr53/aws_r53_alias.py