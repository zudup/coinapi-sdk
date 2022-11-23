#
# On Chain - REST API
#  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
# Version: v1
# Contact: support@coinapi.io
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

#region Import functions

# define the following classes in PowerShell
try {
    Add-Type -AssemblyName System.Web -ErrorAction Ignore | Out-Null
    Add-Type -AssemblyName System.Net -ErrorAction Ignore | Out-Null
} catch {
    Write-Verbose $_
}

# set $ErrorActionPreference to 'Stop' globally
$ErrorActionPreference = 'Stop'

# store the API client's configuration
$Script:Configuration = [System.Collections.HashTable]@{}

$Script:CmdletBindingParameters = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')

'Api', 'Model', 'Client', 'Private' | Get-ChildItem -Path {
    Join-Path $PSScriptRoot $_
} -Filter '*.ps1' | ForEach-Object {
    Write-Debug "Importing file: $($_.BaseName)"
    try {
        . $_.FullName
    } catch {
        Write-Error -Message "Failed to import function $($_.Fullname): $_"
    }
}

#endregion
