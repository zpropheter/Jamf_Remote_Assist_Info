#!/bin/bash

####################################################################################################
# Array Configurations

####################################################################################################
#API BEARER TOKEN RETRIEVAL
getBearerToken() {
	response=$(curl -s -u "$username":"$password" "$url"/api/v1/auth/token -X POST)
	bearerToken=$(echo "$response" | plutil -extract token raw -)
	tokenExpiration=$(echo "$response" | plutil -extract expires raw - | awk -F . '{print $1}')
	tokenExpirationEpoch=$(date -j -f "%Y-%m-%dT%T" "$tokenExpiration" +"%s")
}

url="https://yourserver.jamfcloud.com"
username="username"
password="pasword"


####################################################################################################

getBearerToken 

#This call returns the most recent 100 sessions for Jamf Remote Assist

curl -X 'GET' \
"$url/api/v1/jamf-remote-assist/session" \
-H 'accept: application/json' \
-H "Authorization: Bearer $bearerToken"
