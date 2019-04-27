@{
    PSDependOptions   = @{
        AddToPath      = $true
        Target         = 'BuildOutput\Modules'
        DependencyType = 'PSGalleryModule'
        Parameters     = @{
            Repository = 'PSGallery'
            SkipPublisherCheck = $true
        }
    }

    InvokeBuild       = 'latest'
    BuildHelpers      = 'latest'
    Pester            = '4.7.3'
    PSScriptAnalyzer  = 'latest'
    DscBuildHelpers   = 'latest'
    Datum             = 'latest'
    'powershell-yaml' = 'latest'
}
