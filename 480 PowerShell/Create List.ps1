
#The below line is required to execute the SharePoint Admin Operations First Time

if ((Get-PSSnapin "Microsoft.SharePoint.PowerShell" -ErrorAction SilentlyContinue) -eq $null) 
{
    Add-PSSnapin "Microsoft.SharePoint.PowerShell"
}

$siteUrl = "http://sp2010:8888"
#$spSite = new-object Microsoft.SharePoint.SPSite($siteurl) 
$site = Get-SPSite($siteurl)

$spWeb = $spSite.OpenWeb()

$listTemplate = [Microsoft.SharePoint.SPListTemplateType]::GenericList
$spWeb.Lists.Add("Hyderabad","Created using PowerShell",$listTemplate)

<#
$listTemplates = $site.GetCustomListTemplates($web)
$web.Lists.Add("Your new list", "", $listTemplates["ListTemplateName"])
#>

write-host "Created Successfully."
