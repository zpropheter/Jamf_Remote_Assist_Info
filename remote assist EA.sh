#!/bin/bash

cd /Users/Shared/jamfdata/log/Connect/Service/
mostRecentLogFile=$(ls -Art | tail -n 1)

#echo "$mostRecentLogFile"

connectorID=$(grep -ai "Connector ID : "  $mostRecentLogFile | head -n1)

result=$(echo $connectorID | awk '{print $6}')

echo "<result>$result</result>"

