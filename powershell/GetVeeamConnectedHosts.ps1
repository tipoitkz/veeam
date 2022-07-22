function GetVeeamConnectedHosts {
    param()
	
  $ConnectedHosts = Get-VBRServer
	
  # Get connected hosts
  foreach($u in $ConnectedHosts) {
    $ConnectedHostsStr = "Type = ConnectedHosts; Info ='" + $u.Info + "'; uName = " + $u.Name + "; Description = '" + $u.Description + "'; IsUnavailable = " + $u.IsUnavailable + "; Type = " + $u.Type + "; Reference = " + $u.Reference + ";"
	   
    $ConnectedHostsStr

    #Uncomment if you want to store in file
    #$ConnectedHostsStr | Out-File -FilePath E:\execbeat-3.3.0-windows-x86_64\VBRServer.txt -Append
  }
	
}

GetVeeamConnectedHosts
