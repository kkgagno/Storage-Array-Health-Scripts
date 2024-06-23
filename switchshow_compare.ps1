get-childitem C:\Users\11500162\Desktop\R1.log | select-string -pattern .[0-9][0-9][0-9]............... | foreach {$_.line} > c:\r1.txt
select-string -path c:\r1.txt -Pattern ..":"..":"..":"..":"..":"..":"..":".. -AllMatches | % { $_.Matches } | % { $_.Value } > c:\wwns.txt
compare-object (gc "c:\wwns.txt") (gc "c:\wwns2.txt") | format-list | Out-File c:\wwnsout.txt
c:\wwnsout.txt
