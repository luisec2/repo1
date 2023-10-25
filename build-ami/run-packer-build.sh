#!/bin/bash
#    /home/luis/do-packer/1-build-packer-ami-for-aws
#  scrit to run packer build
#
set -x
packer build -var 'ami_name=ami-luis' \
             -var 'base_ami=ami-04340f530bb99ce82' \
             -var 'vpc_id=vpc-9e5399e3' \
             -var 'subnet_id=subnet-43b63262' \
             packer.json

# vpc-9e5399e3    is a public vpc  ((( change it to your own vpc
# subnet-43b63262 is a oublic subnet ((( change it to your own subnaet
#
