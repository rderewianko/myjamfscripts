#!/bin/bash

#curl -sku api_access:Genesys1 -H "accept: text/xml" https://genesysit.jamfcloud.com/JSSResource/computers/id/13 | xmllint --format --xpath "/computer/location/email_address" -

curl -sku api_access:Genesys1 -H "content-type: text/xml" https://genesysit.jamfcloud.com/JSSResource/computers/id/13 -d "<computer><location><email_address>david.ngueyen@genesys.com</email_address></location></computer>" -X PUT