#!/bin/bash
#    /home/luis/do-packer/1-build-packer-ami-for-aws
#  scrit to run packer build
#
set -x
packer build -var 'ami_name=ami-gend-luisworker' \
             -var 'base_ami=ami-0c833a5f2f808b646' \
             -var 'vpc_id=vpc-0baed686286086d72' \
             -var 'subnet_id=subnet-0a582c59f124758b8' \
             packer.json

# vpc-9e5399e3    is a public vpc  ((( change it to your own vpc
# subnet-43b63262 is a public subnet ((( change it to your own subnaet
#
