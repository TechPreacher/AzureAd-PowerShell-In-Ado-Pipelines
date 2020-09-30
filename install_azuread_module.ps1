# Install AzureAD PS Modules for PowerShell or AzureAD.Standard.Preview for PowerShell Core
if ($PSVersionTable.PSEdition -eq "Core")
{
    $moduleName = "AzureAD.Standard.Preview"
    $packageSource = Get-PackageSource -Name 'Posh Test Gallery' -ErrorAction SilentlyContinue

    if (!$packageSource)
    {
        $packageSource = Register-PackageSource -Trusted -ProviderName 'PowerShellGet' -Name 'Posh Test Gallery' -Location 'https://www.poshtestgallery.com/api/v2/'
    }
}
else
{
    $moduleName = "AzureAD"
}

# Check if module is installed
$module = Get-Module $moduleName -ListAvailable -ErrorAction SilentlyContinue

if (!$module) 
{
    Write-Host "Installing module $($moduleName) ..."
    $module = Install-Module -Name $moduleName -Force -Scope CurrentUser -SkipPublisherCheck -AllowClobber 
    Write-Host "$($moduleName) Module installed"
}

# Module doesn't automatically load after install - need to import explictly for Pwsh Core
Import-Module $moduleName -ErrorAction SilentlyContinue
