#!/bin/bash

emailAddress=$(osascript <<EOT
tell application "Finder"
	activate
	set nameentry to text returned of (display dialog "
    Please enter your Genesys Email Address" default answer "" with icon 2)
end tell
EOT
)

echo $emailAddress

serialnumber=$(system_profiler SPHardwareDataType | grep 'Serial Number (system)' | awk '{print $NF}')
echo $serialnumber

curl -sku api_access:Genesys1 -H "content-type: text/xml" https://genesysit.jamfcloud.com/JSSResource/computers/serialnumber/$serialnumber -d "<computer><location><email_address>$genEmailAddress</email_address></location></computer>" -X PUT
