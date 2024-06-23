$macs = Get-Content C:\VB\lunwwn.txt
$output = foreach ($mac in $macs){
    $mac.insert(2,":").insert(5,":").insert(8,":").insert(11,":").insert(14,":").insert(17,":").insert(20,":").insert(23,":").insert(26,":").insert(29,":").insert(32,":").insert(35,":").insert(38,":").insert(41,":").insert(44,":")
}
$output | Out-File c:\VB\newlunwwn.txt
