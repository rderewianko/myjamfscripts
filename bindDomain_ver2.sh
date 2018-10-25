#!/bin/bash

compName="$(/usr/sbin/scutil --get ComputerName)"
echo $compName

domain="CRUSHEDBYALCEE.COM"

# Advance AD Pligins
alldomains="enable"
localhome="enable"
protocol="smb"
mobile="disable"
mobileconfirm="disable"
user_shell="/bin/bash"
preferred="-nopreferred"
admingroups="domain admins,enterprise admins"
packetsign="allow"
packetencrypt="allow"
passinterval="0"
namespace="domain"

