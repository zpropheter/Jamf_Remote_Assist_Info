#!/bin/bash

#List name of all files downloaded to MacBook from Remote Session

successfulFileDownloads=$(grep -R "File:" /Users/Shared/jamfdata/log/Connect/DragSimulator/ | awk '/Transfer Successful!/' | sed 's/^.*File://' | sed 's/Transfer Successful!//g')

echo "<result>$successfulFileDownloads</result>"