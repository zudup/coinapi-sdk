#
# OnChain API
#  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
# Version: v1
# Contact: support@coinapi.io
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER EntryTime
No description available.
.PARAMETER RecvTime
No description available.
.PARAMETER BlockNumber
No description available.
.PARAMETER Vid
No description available.
.PARAMETER Id
No description available.
.PARAMETER Date
No description available.
.PARAMETER VolumeEth
No description available.
.PARAMETER VolumeUsd
No description available.
.PARAMETER VolumeUsdUntracked
No description available.
.PARAMETER FeesUsd
No description available.
.PARAMETER TxCount
No description available.
.PARAMETER TvlUsd
No description available.
.OUTPUTS

UniswapDayDataV3DTO<PSCustomObject>
#>

function Initialize-UniswapDayDataV3DTO {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${EntryTime},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${RecvTime},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${BlockNumber},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Vid},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Date},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VolumeEth},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VolumeUsd},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VolumeUsdUntracked},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FeesUsd},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${TxCount},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TvlUsd}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => UniswapDayDataV3DTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "entry_time" = ${EntryTime}
            "recv_time" = ${RecvTime}
            "block_number" = ${BlockNumber}
            "vid" = ${Vid}
            "id" = ${Id}
            "date" = ${Date}
            "volume_eth" = ${VolumeEth}
            "volume_usd" = ${VolumeUsd}
            "volume_usd_untracked" = ${VolumeUsdUntracked}
            "fees_usd" = ${FeesUsd}
            "tx_count" = ${TxCount}
            "tvl_usd" = ${TvlUsd}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UniswapDayDataV3DTO<PSCustomObject>

.DESCRIPTION

Convert from JSON to UniswapDayDataV3DTO<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UniswapDayDataV3DTO<PSCustomObject>
#>
function ConvertFrom-JsonToUniswapDayDataV3DTO {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => UniswapDayDataV3DTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in UniswapDayDataV3DTO
        $AllProperties = ("entry_time", "recv_time", "block_number", "vid", "id", "date", "volume_eth", "volume_usd", "volume_usd_untracked", "fees_usd", "tx_count", "tvl_usd")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entry_time"))) { #optional property not found
            $EntryTime = $null
        } else {
            $EntryTime = $JsonParameters.PSobject.Properties["entry_time"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recv_time"))) { #optional property not found
            $RecvTime = $null
        } else {
            $RecvTime = $JsonParameters.PSobject.Properties["recv_time"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "block_number"))) { #optional property not found
            $BlockNumber = $null
        } else {
            $BlockNumber = $JsonParameters.PSobject.Properties["block_number"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "vid"))) { #optional property not found
            $Vid = $null
        } else {
            $Vid = $JsonParameters.PSobject.Properties["vid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "date"))) { #optional property not found
            $Date = $null
        } else {
            $Date = $JsonParameters.PSobject.Properties["date"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "volume_eth"))) { #optional property not found
            $VolumeEth = $null
        } else {
            $VolumeEth = $JsonParameters.PSobject.Properties["volume_eth"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "volume_usd"))) { #optional property not found
            $VolumeUsd = $null
        } else {
            $VolumeUsd = $JsonParameters.PSobject.Properties["volume_usd"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "volume_usd_untracked"))) { #optional property not found
            $VolumeUsdUntracked = $null
        } else {
            $VolumeUsdUntracked = $JsonParameters.PSobject.Properties["volume_usd_untracked"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fees_usd"))) { #optional property not found
            $FeesUsd = $null
        } else {
            $FeesUsd = $JsonParameters.PSobject.Properties["fees_usd"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tx_count"))) { #optional property not found
            $TxCount = $null
        } else {
            $TxCount = $JsonParameters.PSobject.Properties["tx_count"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tvl_usd"))) { #optional property not found
            $TvlUsd = $null
        } else {
            $TvlUsd = $JsonParameters.PSobject.Properties["tvl_usd"].value
        }

        $PSO = [PSCustomObject]@{
            "entry_time" = ${EntryTime}
            "recv_time" = ${RecvTime}
            "block_number" = ${BlockNumber}
            "vid" = ${Vid}
            "id" = ${Id}
            "date" = ${Date}
            "volume_eth" = ${VolumeEth}
            "volume_usd" = ${VolumeUsd}
            "volume_usd_untracked" = ${VolumeUsdUntracked}
            "fees_usd" = ${FeesUsd}
            "tx_count" = ${TxCount}
            "tvl_usd" = ${TvlUsd}
        }

        return $PSO
    }

}

