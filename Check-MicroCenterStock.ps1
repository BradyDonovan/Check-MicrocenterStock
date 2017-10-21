#setting store list
[int[]]$StoreList=101,181,065,041,151,025,191,121,085,125,055,045,095,075,171,115,145,105,141,051,071,061,155,131,081,029
$StoreList | ForEach-Object {$_.ToString("000")} -OutVariable FormattedList | Out-Null

#grabbing inventory
$FormattedList | ForEach-Object {
$session = New-Object Microsoft.PowerShell.Commands.WebRequestSession 
$LocationCookie = New-Object System.Net.Cookie
$LocationCookie.Domain="microcenter.com"
$LocationCookie.Expires="12/31/9999 12:00:00 AM"
$LocationCookie.Name="storeSelected"
$LocationCookie.Path="/"
$LocationCookie.Value="$_"
$session.Cookies.Add($LocationCookie)
$uri = "http://www.microcenter.com/product/486088/core_i7-8700k_coffee_lake_37_ghz_lga_1151_boxed_processor"
$Request = Invoke-WebRequest -Uri $uri -WebSession $session
$Stock = $Request.ParsedHtml.getElementByID('pnlInventory').innerText
Write-Host $Stock

}