#!/bin/bash
#Call this script in the crontab by logging to user and execute 'crontab -e -u $USER'
#*/9 * * * * sh $HOME/dip2sipr53/chronetab.sh

sed -r 's/(\b[0-9]{1,3}\.){3}[0-9]{1,3}\b'/"$(myip.sh)"/ $HOME/dip2sipr53/aws_r53_alias_template.py > $HOME/dip2sipr53/aws_r53_alias.py && python3 $HOME/dip2sipr53/aws_r53_alias.py