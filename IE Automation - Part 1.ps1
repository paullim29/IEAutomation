$ie = New-Object -ComObject InternetExplorer.Application
$ie.Navigate("http://www.bing.com")
$ie.Visible = $true

while($ie.Busy) { Start-Sleep -Milliseconds 100 }