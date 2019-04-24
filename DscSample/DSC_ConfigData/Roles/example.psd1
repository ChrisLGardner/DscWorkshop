@{
    Configurations = @(
        "JeaConfig"
    )

    JeaConfig = @{
        SessionConfigurations = @(
            @{
                EndpointName = 'Sample'
                TranscriptDirectory = 'C:\ProgramData\JEAConfiguration\Transcripts'
                RunAsVirtualAccountGroups = 'Administrators'
                RoleDefinitions = @{
                    GeneralLev1Group = @{ RoleCapabilities = 'BasicTest' }
                }
            }
        )
        RoleCapabilities = @(
            @{
                Name = 'BasicTest'
                Path = 'C:\Program Files\WindowsPowerShell\Modules\Jea\RoleCapabilities\BasicTest.psrc'
                # ModulesToImport = 'MyCustomModule', @{ ModuleName = 'MyCustomModule'; ModuleVersion = '1.0.0.0'; GUID = '4d30d5f0-cb16-4898-812d-f20a6c596bdf' }
                # VisibleAliases = 'Item1', 'Item2'
                 VisibleCmdlets = 'Invoke-Cmdlet1', @{ Name = 'Invoke-Cmdlet2'; Parameters = @{ Name = 'Parameter1'; ValidateSet = 'Item1', 'Item2' }, @{ Name = 'Parameter2'; ValidatePattern = 'L*' } }
                 VisibleFunctions = 'Invoke-Function1', @{ Name = 'Invoke-Function2'; Parameters = @{ Name = 'Parameter1'; ValidateSet = 'Item1', 'Item2' }, @{ Name = 'Parameter2'; ValidatePattern = 'L*' } }
                # VisibleExternalCommands = 'Item1', 'Item2'
                VisibleProviders = 'Item1'
                # ScriptsToProcess = 'C:\ConfigData\InitScript1.ps1', 'C:\ConfigData\InitScript2.ps1'
                # AliasDefinitions = @{ Name = 'Alias1'; Value = 'Invoke-Alias1'}, @{ Name = 'Alias2'; Value = 'Invoke-Alias2'}
                # FunctionDefinitions = @{ Name = 'MyFunction'; ScriptBlock = { param($MyInput) $MyInput } }
                # VariableDefinitions = @{ Name = 'Variable1'; Value = { 'Dynamic' + 'InitialValue' } }, @{ Name = 'Variable2'; Value = 'StaticInitialValue' }
                # EnvironmentVariables = @{ Variable1 = 'Value1'; Variable2 = 'Value2' }
                # TypesToProcess = 'C:\ConfigData\MyTypes.ps1xml', 'C:\ConfigData\OtherTypes.ps1xml'
                # FormatsToProcess = 'C:\ConfigData\MyFormats.ps1xml', 'C:\ConfigData\OtherFormats.ps1xml'
                # AssembliesToLoad = 'System.Web', 'System.OtherAssembly, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a'
            }
        )
    }
}
