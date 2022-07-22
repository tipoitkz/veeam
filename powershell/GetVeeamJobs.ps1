function GetVeeamJobs {
    param()
	
  $Jobs = Get-VBRJob
	
  # Get jobs
  foreach($u in $Jobs) {
	
    $diff = $u.FindLastSession().EndTime - $u.LatestRunLocal		
		
    $JobsStr = "Type = Jobs; Name ='" + $u.Name + "'; LatestRunLocal = '" + $u.LatestRunLocal+ "'; ExecutionTime = " + ([Math]::Round($diff.TotalMinutes , 0)) + "; LatestEndTime = '" + $u.FindLastSession().EndTime +"'; TargetFile = " + $u.TargetFile + "; TargetDir = " + $u.TargetDir + "; NameWithDescription = '" + $u.NameWithDescription + "'; BackupPlatform = " + $u.BackupPlatform + "; Description = '" + $u.Description + "'; OracleEnabled = " + $u.OracleEnabled + "; IsContinuous = '" + $u.IsContinuous + "'; SqlEnabled = " + $u.SqlEnabled +"; LastResult = '" + $u.GetLastResult() + "'; LastState = " + $u.GetLastState() + ";"
    $JobsStr

    #Uncomment if you want to store in file
    #$JobsStr | Out-File -FilePath E:\execbeat-3.3.0-windows-x86_64\VBRJob.txt -Append
  }
	
}

GetVeeamJobs
