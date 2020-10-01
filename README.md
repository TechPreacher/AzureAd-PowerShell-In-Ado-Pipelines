# AzureAd-PowerShell-In-Ado-Pipelines
Using the AzureAd PowerShell module in Azure DevOps Pipelines as part of an Azure PowerShell task

If you want to the [Azure Active Directory PowerShell for Graph module (AzureAD)](https://docs.microsoft.com/en-us/powershell/azure/active-directory/install-adv2?view=azureadps-2.0) functionality in an Azure DevOps Pipeline as part of an [Azure PowerShell task](https://docs.microsoft.com/en-us/azure/devops/pipelines/tasks/deploy/azure-powershell?view=azure-devops), you will notice that the AzureAD module is not available. Furthermore, depending if you are using Windows or Linux based pipeline agents, you will be using PowerShell or PowerShell Core.

At the time of writing this, AzureAD only works with PowerShell as it is dependent on the full .NET framework. Whilst there's no PowerShell Core supported version of AzureAD in the PowerShell Gallery, there is a private preview version available in the [Posh Test Gallery](https://www.poshtestgallery.com/packages/AzureAD.Standard.Preview/0.1.599.7). Whilst this is a gallery for testing purposes, this preview version of the module is already in use in the [Azure Cloud Shell](https://www.michev.info/Blog/Post/2339/azure-ad-powershell-module-with-support-for-powershell-core)

The [script](install_azuread_module.ps1) in this repository can be used as part of the Azure PowerShell Task to determine the running version of PowerShell and install the compatible version of the Azure Active Directory PowerShell for Graph module.

A lot of the insights shared here came from the post [How to use the AzureAD module in PowerShell Core](https://endjin.com/blog/2019/05/how-to-use-the-azuread-module-in-powershell-core) by James Broome.
