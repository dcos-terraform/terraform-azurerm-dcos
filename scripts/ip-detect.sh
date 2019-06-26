#!/bin/sh
# Example ip-detect script using an external authority
# Uses the AWS Metadata Service to get the node's internal
# ipv4 address
set -o nounset -o errexit

curl -H Metadata:true -fsSL "http://169.254.169.254/metadata/instance/network/interface/0/ipv4/ipAddress/0/privateIpAddress?api-version=2018-10-01&format=text"
