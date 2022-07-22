function GetVeeamBackups {
    param()
	
	$Backups = Get-VBRBackup
	
	# Get backups
	foreach($u in $Backups) {
	   $BackupsStr = "Type = Backups; Name ='" + $u.Name + "'; CreationTime = '" + $u.CreationTime + "'; LastPointCreationTime = " + $u.LastPointCreationTime + "; VmCount = " + $u.VmCount + "; JobType = " + $u.JobType + "; BackupPlatform = " + $u.BackupPlatform + "; TypeToString = " + $u.TypeToString + "; DirPath = '" + $u.DirPath + "'; PartialPath = '" + $u.PartialPath + "'; EncryptionState = " + $u.EncryptionState +"; MetaFileName = '" + $u.MetaFileName + "'; IsBackup = " + $u.IsBackup + ";"
	   
       $BackupsStr
       
       #Uncomment if you want to store in file
	     #$BackupsStr | Out-File -FilePath E:\execbeat-3.3.0-windows-x86_64\VBRBackup.txt -Append
	}
	
}

GetVeeamBackups
