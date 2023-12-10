Read-Host "The timer will begin when you hit Enter [Return]. `r`nType as long as you want. `r`nPress Enter [Return] again whenever you're done" | Out-Null
$t1 = Get-Date
$userText = Read-Host
$t2 = Get-Date
$dt = $t2-$t1
$time = $dt.TotalMinutes
$words = $userText.split(" ") | where { $_.length }
$c = ($words | measure | foreach Count)
Write-Host "Word count: $c"
Write-Host "Average word length:" ($words | foreach {$_.Length} | Measure-Object -Average | foreach Average | foreach {[Math]::Round($_, 1)})
$wpm = $c/$time
Write-Host "Typing speed (WPM): " ([Math]::Round($wpm,1))


