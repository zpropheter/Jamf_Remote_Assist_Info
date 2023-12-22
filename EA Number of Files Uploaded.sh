#!/bin/bash

#Output a count of files uploaded from MacBook to remote administrator since installation

filesUploadedFromClient=$(grep -ro "virtual void grapplemdm::remo::fileTransfer::fromEndpoint::upload::Session::DoUpload(const SelectedFile::Ref) UploadComplete" /Users/Shared/jamfdata/ | wc -l | xargs echo "")

echo "<result>$filesUploadedFromClient</result>"


