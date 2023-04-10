#Opening MATLAB is unnecessary, but here is how to do it if you need it, just delete the <# #> block
<#$isMATLABOpen = Get-Process -Name matlab
if ($null -eq $isMATLABOpen) {
    $yourMATLABPath = "C:\Program Files\MATLAB\R2018a\bin\matlab.exe" #Change this to your MATLAB path
    Start-Process -FilePath $yourMATLABPath -ArgumentList "-desktop"
    Start-Sleep -Seconds 5
}#>
Write-Output "Running MATLAB script..."
$text = matlab -batch "run('$PSScriptRoot\numbers.m')"  #Recieves everything from the MATLAB script
Write-Output $text
$sentence = $text[0]
$numbers = -split $text[1] -replace "\s*" | ForEach-Object { [int]$_ } #Converts the numbers to integers
$even = $numbers | Where-Object { $_ % 2 -eq 0 }
$odd = $numbers | Where-Object { $_ % 2 -eq 1 } 
Write-Output "Sentence: $sentence"
Write-Output "Even numbers: $even"
Write-Output "Odd numbers: $odd"