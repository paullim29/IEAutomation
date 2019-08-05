$ie = New-Object -ComObject InternetExplorer.Application
$ie.Navigate("http://www.bing.com")
$ie.Visible = $true

while($ie.Busy) { Start-Sleep -Milliseconds 100 }

$element = $ie.Document.getElementById("sb_form_q")
$element.value = "singapore"

Start-Sleep -Milliseconds 100

$submitBtn = $ie.Document.getElementById("sb_form_go")
$submitBtn.click()