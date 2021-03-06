#The below line is required to execute the SharePoint Admin Operations First Time

if ((Get-PSSnapin "Microsoft.SharePoint.PowerShell" -ErrorAction SilentlyContinue) -eq $null) 
{
    Add-PSSnapin "Microsoft.SharePoint.PowerShell"
}


$webTemplates = Get-SPWebTemplate  

$SiteOwner = "SPDOM\Administrator"
$WebSiteUrl = "http://sp2010:8888"

if($webTemplates)
{
    foreach ($webTemplate in $webTemplates) 
    {    
         Write-Host "--> " $webTemplate.Name 
         
        if($webTemplate.Name -like "*STS#0")
        {
        Write-Host "YES"
        
            Write-Host "Creating Root Site Collection " $webTemplate.Name
            New-SPSite -Url $WebSiteUrl -OwnerAlias $SiteOwner -Name "Store" -Template $webTemplate            
            Write-Host "Root Site Collection created ..."
        }
        else
        {
       # Write-Host "NO"
        }
    }       
}