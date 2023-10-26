#!/bin/bash
# Get temporary access t aws
# Pick a role
# Credentials last for one hour
#set -x
ACCOUNT=196831553800
aws sts assume-role --role-arn arn:aws:iam::${ACCOUNT}:role/example-role \
   --role-session-name AWSCLI-Session > output
AccessKeyId=$(cat output | jq -r '.Credentials.AccessKeyId')
SecretAccessKey=$(cat output | jq -r '.Credentials.SecretAccessKey')
SessionToken=$(cat output | jq -r '.Credentials.SessionToken')
export AWS_ACCESS_KEY_ID=${AccessKeyId}
export AWS_SECRET_ACCESS_KEY=${SecretAccessKey}
export AWS_SESSION_TOKEN=${SessionToken}
echo "AWS_ACCESS_KEY_ID: ${AccessKeyId}"
echo "AWS_SECRET_ACCESS_KEY: ${SecretAccessKey}"
echo "AWS_SESSION_TOKEN: ${SessionToken}"
aws sts get-caller-identity
aws s3 ls
