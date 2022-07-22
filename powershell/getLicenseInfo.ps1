function GetLicenseInfo {
    param()
	
  $License = Get-VBRInstalledLicense

  # Get license
  $Workload = ""
  foreach($u in $License.SocketLicenseSummary.Workload.Name) {
    $Workload += $u + " "
  }

  $LicenseStr = "Type = License; Status =" + $License.Status + "; LicensedSockets = " + $License.SocketLicenseSummary.LicensedSocketsNumber + "; UsedSockets = " + $License.SocketLicenseSummary.UsedSocketsNumber + "; FreeSockets = " + $License.SocketLicenseSummary.RemainingSocketsNumber + "; WorkloadSockets = '" + $Workload + "';"

  $LicenseStr

  #Uncomment if you want to store in file
  #$LicenseStr | Out-File -FilePath E:\execbeat-3.3.0-windows-x86_64\VBRInstalledLicense.txt -Append
  
}

GetLicenseInfo
