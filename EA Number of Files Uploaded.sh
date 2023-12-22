#!/bin/bash

#Output a count of files uploaded from MacBook to remote administrator since installation

filesUploadedFromClient=$(grep -R "virtual void grapplemdm::remo::fileTransfer::fromEndpoint::upload::Session::DoUpload(const SelectedFile::Ref) UploadComplete" /Users/Shared/jamfdata/ | awk '/UploadComplete/' | wc -l)

echo "<result>$filesUploadedFromClient</result>"


