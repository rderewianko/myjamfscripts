#!/bin/bash


#Hardcode value
domainAdminName=""
domainAdminPwd=""
domainControllerFQDN=""

# Check to see if value is passed in parameter 4
# Parameter 4 =  domain controller FQDN
if [ "$4" != "" ] && [ "$domainControllerFQDN" == ""]; then 
	domainControllerFQDN=$4
fi

# Check domain controller access by ping
ping -c 3 -o $domainControllerFQDN 1> /dev/null 2> /dev/null 

# If successful ping proceed

if [[ $? == 0 ]]; then
	echo "Beginning domain bind process..."
	dsconfigad -add crushedbyalcee.com -computer MBPro15 -username aragon -p An@c0nda -localuser admin -localpassword An@c0nda -force -mobile disable -alldomains enable -localhome enable -mobileconfirm disable -useuncpath disable
else
	echo "Can't reach domain controller"
fi
