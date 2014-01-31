
#The below line is required to execute the SharePoint Admin Operations First Time
#Add-PSSnapin "Microsoft.SharePoint.PowerShell"
#Add-SPSolution "C:\U2U.SharePoint.CQB2010.wsp"
#Get-Help Add-SPSolution

$siteUrl = "http://sp2010:8888"
#$spSite = new-object Microsoft.SharePoint.SPSite($siteurl) 
$site = Get-SPSite($siteurl)

$spWeb = $spSite.OpenWeb()

$spList = $spWeb.Lists["Students"]

if($spList -eq $null)
{
write-host "List not exists"
}
else
{
write-host "List already exists"
Write-Host "$spWeb"
Write-Host $spList
#$spList.Fields.Add("About","Note",0)
}



