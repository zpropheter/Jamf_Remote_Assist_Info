# Jamf_Remote_Assist_Info
## A workflow to enable better understanding of Jamf Remote Assist Sessions 

Here's how to use the Jamf Remote Assist Workflow to see who initiated a session on which devices in your organization. 

## Setup
Start by adding the [Jamf_Remote_Device_ID_EA](https://github.com/zpropheter/Jamf_Remote_Assist_Info/blob/main/Jamf_Remote_Device_ID_EA) to your environment \
<img src="https://i.imgur.com/EdXgLui.png" width="800" height="400" />

Enable searching for the value in Jamf_Remote_Device_ID_EA by going to Settings> Computer Management> Inventory Display and checking the box for the EA 

<img src="https://i.imgur.com/yaC50Lv.png" width="800" height="400" />

## Log Review
Run the script [Remote_Assist_Sessions.sh](https://github.com/zpropheter/Jamf_Remote_Assist_Info/blob/main/Remote_Assist_Sessions.sh) and find the sessions you want to review.

Note the output for:
-deviceID
-sessionAdminId

To find the -deviceID associated with the session: \
-Run a blank search in Computers> Search Inventory \
-Copy and paste the deviceID from the script in the "Filter Results" section \
<img src="https://i.imgur.com/ztNcmY2.png" width="800" height="400" />

To find the user associated with -sessionAdminID \
-Go to https://yourserver.jamfcloud.com/accounts.html?id=##&o=r \
-Replace ## with the -sessionAdminID to find the name of the account that initiated the Jamf Remote Session \

## Client Logs
Logs for Jamf Remote Assist are stored in /Users/Shared/jamfdata/ \
You can manually collect the logs or use Jamf-Log-Grabber, which is designed for getting all installed Jamf Application Logs.
Download the latest copy of Jamf Log Grabber [here](https://github.com/zpropheter/Jamf-Log-Grabber/tree/main)
