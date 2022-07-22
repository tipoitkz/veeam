function GetVeeamServerInfo {
    param()
	
    $Server = Get-VBRLocalhost
    $ServerStr = "Type = VeeamServer; Info ='" + $Server.Info + "'; ServerName = " + $Server.Name + "; Description = " + $Server.Description + "; IsUnavailable = " + $Server.IsUnavailable + ";"

    $ServerStr

    #Uncomment if you want to store in file
    #$ServerStr | Out-File -FilePath E:\execbeat-3.3.0-windows-x86_64\VBRLocalhost.txt -Append

}

GetVeeamServerInfo
