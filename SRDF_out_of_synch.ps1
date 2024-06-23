#$file = c:\vb\1915osync.txt
$csvfile1915 = "c:\vb\1915srdfoutofsync.csv"
$csvfile1916 = "c:\vb\1916srdfoutofsync.csv"
$csvfile1917 = "c:\vb\1917srdfoutofsync.csv"
$csvfile1940 = "c:\vb\1940srdfoutofsync.csv"

$headers = "R1 Device", "UID", "RA Group", "Sync Mode", "Invalid Tracks"
$psObject = New-Object psobject
foreach($header in $headers)
{
 Add-Member -InputObject $psobject -MemberType noteproperty -Name $header -Value ""
}
$psObject | Export-Csv $csvfile1915 -NoTypeInformation
$psObject | Export-Csv $csvfile1916 -NoTypeInformation
$psObject | Export-Csv $csvfile1917 -NoTypeInformation
$psObject | Export-Csv $csvfile1940 -NoTypeInformation


symrdf -sid 1915 list |Select-String -notmatch "Consistent", "Total", "Track", "MB", "Legend", "of Operation", "Adaptive Copy", "Mirror", "Enabled", "Device" > c:\vb\1915osync.txt
symrdf -sid 1916 list |Select-String -notmatch "Consistent", "Total", "Track", "MB", "Legend", "of Operation", "Adaptive Copy", "Mirror", "Enabled", "Device" > c:\vb\1916osync.txt
symrdf -sid 1917 list |Select-String -notmatch "Consistent", "Total", "Track", "MB", "Legend", "of Operation", "Adaptive Copy", "Mirror", "Enabled", "Device" > c:\vb\1917osync.txt
symrdf -sid 1940 list |Select-String -notmatch "Consistent", "Total", "Track", "MB", "Legend", "of Operation", "Adaptive Copy", "Mirror", "Enabled", "Device" > c:\vb\1940osync.txt


#1915 CSV file creation
$DB = (Get-Content c:\vb\1915osync.txt ) -replace '\s+', ' ' |Select-String -notmatch "Sym", "RDF", "-", "STATUS", "^$"
foreach ($Data in $DB) {
  $First, $Second, $Third, $Fourth, $Fifth, $Sixth, $Seventh, $Eighth, $Ninth, $Tenth, $Eleventh, $Twelfth = $Data -split ' ' -replace '^\s*|\s*$'







  #write-host "R1 is: "$First
  #write-host "R2 is: "$Second
  #write-host "RA group is: "$Third
  #write-host "Fourth is: "$Fourth
  #write-host "Fifth is: "$Fifth
  #write-host "Sixth is: "$Sixth
  #write-host "Synch mode is: "$Seventh
  #write-host "R1 invalid is:  "$Eighth
  #write-host "R2 invalid is:  "$Ninth
  #write-host "Tenth is:  "$Tenth
  #write-host "Eleventh is:  "$Eleventh
  #write-host "Sync Status is:  "$Twelfth
  #Write-Host ""

symdev -sid 1915 list -wwn |findstr $First |Select-String -Pattern 6000097000019780................ -AllMatches | % { $_.Matches } | % { $_.Value }  |Tee-Object -Variable cmdOutput |out-file c:\vb\tempwwn.txt


#$bName = "My Name"
#$bPrimaryType = "My Primary Type"
    $hash = @{
             "R1 Device" =  $First
             "UID" = $cmdOutput
	     "RA Group" = $Third
	     "Sync Mode" = $Seventh
	     "Invalid Tracks" = $Ninth
	     
              }

$newRow = New-Object PsObject -Property $hash
Export-Csv $csvfile1915 -inputobject $newrow -append -Force

}

#1916 CSV file creation
$DB = (Get-Content c:\vb\1916osync.txt ) -replace '\s+', ' ' |Select-String -notmatch "Sym", "RDF", "-", "STATUS", "^$"
foreach ($Data in $DB) {
  $First, $Second, $Third, $Fourth, $Fifth, $Sixth, $Seventh, $Eighth, $Ninth, $Tenth, $Eleventh, $Twelfth = $Data -split ' ' -replace '^\s*|\s*$'







  #write-host "R1 is: "$First
  #write-host "R2 is: "$Second
  #write-host "RA group is: "$Third
  #write-host "Fourth is: "$Fourth
  #write-host "Fifth is: "$Fifth
  #write-host "Sixth is: "$Sixth
  #write-host "Synch mode is: "$Seventh
  #write-host "R1 invalid is:  "$Eighth
  #write-host "R2 invalid is:  "$Ninth
  #write-host "Tenth is:  "$Tenth
  #write-host "Eleventh is:  "$Eleventh
  #write-host "Sync Status is:  "$Twelfth
  #Write-Host ""

symdev -sid 1916 list -wwn |findstr $First |Select-String -Pattern 6000097000019780................ -AllMatches | % { $_.Matches } | % { $_.Value }  |Tee-Object -Variable cmdOutput |out-file c:\vb\tempwwn.txt


#$bName = "My Name"
#$bPrimaryType = "My Primary Type"
    $hash = @{
             "R1 Device" =  $First
             "UID" = $cmdOutput
	     "RA Group" = $Third
	     "Sync Mode" = $Seventh
	     "Invalid Tracks" = $Ninth
	     
              }

$newRow = New-Object PsObject -Property $hash
Export-Csv $csvfile1916 -inputobject $newrow -append -Force

}
#1917 CSV file creation
$DB = (Get-Content c:\vb\1917osync.txt ) -replace '\s+', ' ' |Select-String -notmatch "Sym", "RDF", "-", "STATUS", "^$"
foreach ($Data in $DB) {
  $First, $Second, $Third, $Fourth, $Fifth, $Sixth, $Seventh, $Eighth, $Ninth, $Tenth, $Eleventh, $Twelfth = $Data -split ' ' -replace '^\s*|\s*$'







  #write-host "R1 is: "$First
  #write-host "R2 is: "$Second
  #write-host "RA group is: "$Third
  #write-host "Fourth is: "$Fourth
  #write-host "Fifth is: "$Fifth
  #write-host "Sixth is: "$Sixth
  #write-host "Synch mode is: "$Seventh
  #write-host "R1 invalid is:  "$Eighth
  #write-host "R2 invalid is:  "$Ninth
  #write-host "Tenth is:  "$Tenth
  #write-host "Eleventh is:  "$Eleventh
  #write-host "Sync Status is:  "$Twelfth
  #Write-Host ""

symdev -sid 1917 list -wwn |findstr $First |Select-String -Pattern 6000097000019780................ -AllMatches | % { $_.Matches } | % { $_.Value }  |Tee-Object -Variable cmdOutput |out-file c:\vb\tempwwn.txt


#$bName = "My Name"
#$bPrimaryType = "My Primary Type"
    $hash = @{
             "R1 Device" =  $First
             "UID" = $cmdOutput
	     "RA Group" = $Third
	     "Sync Mode" = $Seventh
	     "Invalid Tracks" = $Ninth
	     
              }

$newRow = New-Object PsObject -Property $hash
Export-Csv $csvfile1917 -inputobject $newrow -append -Force




#write-host $cmdOutput
}


#1940 CSV file creation
$DB = (Get-Content c:\vb\1940osync.txt ) -replace '\s+', ' ' |Select-String -notmatch "Sym", "RDF", "-", "STATUS", "^$"
foreach ($Data in $DB) {
  $First, $Second, $Third, $Fourth, $Fifth, $Sixth, $Seventh, $Eighth, $Ninth, $Tenth, $Eleventh, $Twelfth = $Data -split ' ' -replace '^\s*|\s*$'







  #write-host "R1 is: "$First
  #write-host "R2 is: "$Second
  #write-host "RA group is: "$Third
  #write-host "Fourth is: "$Fourth
  #write-host "Fifth is: "$Fifth
  #write-host "Sixth is: "$Sixth
  #write-host "Synch mode is: "$Seventh
  #write-host "R1 invalid is:  "$Eighth
  #write-host "R2 invalid is:  "$Ninth
  #write-host "Tenth is:  "$Tenth
  #write-host "Eleventh is:  "$Eleventh
  #write-host "Sync Status is:  "$Twelfth
  #Write-Host ""

symdev -sid 1940 list -wwn |findstr $First |Select-String -Pattern 6000097000019780................ -AllMatches | % { $_.Matches } | % { $_.Value }  |Tee-Object -Variable cmdOutput |out-file c:\vb\tempwwn.txt


#$bName = "My Name"
#$bPrimaryType = "My Primary Type"
    $hash = @{
             "R1 Device" =  $First
             "UID" = $cmdOutput
	     "RA Group" = $Third
	     "Sync Mode" = $Seventh
	     "Invalid Tracks" = $Ninth
	     
              }

$newRow = New-Object PsObject -Property $hash
Export-Csv $csvfile1940 -inputobject $newrow -append -Force

}




#1915 MBs behind
symrdf -sid 1915 list |Select-String MB |Out-File c:\VB\1915mbs.txt

$DB = (Get-Content c:\vb\1915mbs.txt ) -replace '\s+', ' ' |Select-String -notmatch "Sym", "RDF", "-", "STATUS", "^$"

foreach ($Data in $DB) {
  $First, $Second, $Third, $1915  = $Data -split ' ' -replace '^\s*|\s*$'

	#write-host "useless is: "$First
 	#write-host "useless is: "$Second
	#write-host "useless is: "$Third
	#write-host "good is: "$1915
}

#1916 MBs behind
symrdf -sid 1916 list |Select-String MB |Out-File c:\VB\1916mbs.txt

$DB = (Get-Content c:\vb\1916mbs.txt ) -replace '\s+', ' ' |Select-String -notmatch "Sym", "RDF", "-", "STATUS", "^$"

foreach ($Data in $DB) {
  $First, $Second, $Third, $1916  = $Data -split ' ' -replace '^\s*|\s*$'

	#write-host "useless is: "$First
 	#write-host "useless is: "$Second
	#write-host "useless is: "$Third
	#write-host "good is: "$1916
}

#1917 MBs behind
symrdf -sid 1917 list |Select-String MB |Out-File c:\VB\1917mbs.txt

$DB = (Get-Content c:\vb\1917mbs.txt ) -replace '\s+', ' ' |Select-String -notmatch "Sym", "RDF", "-", "STATUS", "^$"

foreach ($Data in $DB) {
  $First, $Second, $Third, $1917  = $Data -split ' ' -replace '^\s*|\s*$'

	#write-host "useless is: "$First
 	#write-host "useless is: "$Second
	#write-host "useless is: "$Third
	#write-host "good is: "$1917
}

#1940 MBs behind
symrdf -sid 1940 list |Select-String MB |Out-File c:\VB\1940mbs.txt

$DB = (Get-Content c:\vb\1940mbs.txt ) -replace '\s+', ' ' |Select-String -notmatch "Sym", "RDF", "-", "STATUS", "^$"

foreach ($Data in $DB) {
  $First, $Second, $Third, $1940  = $Data -split ' ' -replace '^\s*|\s*$'

	#write-host "useless is: "$First
 	#write-host "useless is: "$Second
	#write-host "useless is: "$Third
	#write-host "good is: "$1940
}

$totalmbs = [int]$1915 + [int]$1916 + [int]$1917 + [int]$1940
#write-host $totalmbs

$totalgbs = [int]$totalmbs / 1024
#write-host $totalgbs
$totalgbsround = [math]::Round($totalgbs)
#write-host $totalgbsround








#Create HTML files
Import-csv c:\VB\1915srdfoutofsync.csv |ConvertTo-Html | Out-File c:\VB\1915srdfoutofsync.html
Import-csv c:\VB\1916srdfoutofsync.csv |ConvertTo-Html | Out-File c:\VB\1916srdfoutofsync.html
Import-csv c:\VB\1917srdfoutofsync.csv |ConvertTo-Html | Out-File c:\VB\1917srdfoutofsync.html
Import-csv c:\VB\1940srdfoutofsync.csv |ConvertTo-Html | Out-File c:\VB\1940srdfoutofsync.html

#Send email
$smtp = "172.30.4.18" 
 
$to = "keith.gagnon@test.net""
 
$from = "noreply@test.com" 
 
$subject = "Allscripts SRDF LAG and devices not consistent"  

$body =  "<b><font color=blue><font-size:14pt>Data behind in GBs: $totalgbsround</b></font></font-size> <br><br>"
$body += "<b><font color=blue>Below are the devices not currently consistent</b></font> <br><br>"
$body += "<b><font color=red>1915</b></font> <br>"

	#$body = "Dear <b><font color=red>$to</b></font> <br>" 

$body += Get-Content C:\VB\1915srdfoutofsync.html |Out-String
	#$body += "We are testing <b>HTML</b> email <br>" 
$body += "<b><font color=red>1916</b></font> <br>"
$body += Get-Content C:\VB\1916srdfoutofsync.html |Out-String 
$body += "<b><font color=red>1917</b></font> <br>"
$body += Get-Content C:\VB\1917srdfoutofsync.html |Out-String 
$body += "<b><font color=red>1940</b></font> <br>"
$body += Get-Content C:\VB\1940srdfoutofsync.html |Out-String 
	#$body += "Click <a href=http://www.google.com>here</a> to open google <br>" 
 
#### Now send the email using \> Send-MailMessage  
 
send-MailMessage -SmtpServer $smtp -To $to -From $from -Subject $subject -Body $body -BodyAsHtml -Priority high 

