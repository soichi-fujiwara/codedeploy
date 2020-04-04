#!/bin/bash
prefix='/home/ec2-user/'

cd ${prefix}encrypt_3
source bin/activate
pip install boto3
pip install pandas

deactivate
