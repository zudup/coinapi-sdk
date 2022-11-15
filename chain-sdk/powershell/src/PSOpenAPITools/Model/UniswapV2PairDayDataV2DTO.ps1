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

Tracks pair data across each day.

.PARAMETER EntryTime
No description available.
.PARAMETER RecvTime
No description available.
.PARAMETER BlockNumber
Number of block in which entity was recorded.
.PARAMETER Id

.PARAMETER Date
Unix timestamp for start of day.
.PARAMETER PairAddress
Address for pair contract.
.PARAMETER Token0
Reference to token0.
.PARAMETER Token1
Reference to token1.
.PARAMETER Reserve0
Reserve of token0 (updated during each transaction on pair).
.PARAMETER Reserve1
Reserve of token1 (updated during each transaction on pair).
.PARAMETER TotalSupply
Total supply of liquidity token distributed to LPs.
.PARAMETER ReserveUsd
Reserve of token0 plus token1 stored as a derived USD amount.
.PARAMETER DailyVolumeToken0
Total amount of token0 swapped throughout day.
.PARAMETER DailyVolumeToken1
Total amount of token1 swapped throughout day.
.PARAMETER DailyVolumeUsd
Total volume within pair throughout day.
.PARAMETER DailyTxns
Amount of transactions on pair throughout day.
.PARAMETER Vid

.OUTPUTS

UniswapV2PairDayDataV2DTO<PSCustomObject>
#>

function Initialize-UniswapV2PairDayDataV2DTO {
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
        [String]
        ${Id},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Date},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PairAddress},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Token0},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Token1},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Reserve0},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Reserve1},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TotalSupply},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ReserveUsd},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DailyVolumeToken0},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DailyVolumeToken1},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DailyVolumeUsd},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DailyTxns},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Vid}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => UniswapV2PairDayDataV2DTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "entry_time" = ${EntryTime}
            "recv_time" = ${RecvTime}
            "block_number" = ${BlockNumber}
            "id" = ${Id}
            "date" = ${Date}
            "pair_address" = ${PairAddress}
            "token_0" = ${Token0}
            "token_1" = ${Token1}
            "reserve_0" = ${Reserve0}
            "reserve_1" = ${Reserve1}
            "total_supply" = ${TotalSupply}
            "reserve_usd" = ${ReserveUsd}
            "daily_volume_token_0" = ${DailyVolumeToken0}
            "daily_volume_token_1" = ${DailyVolumeToken1}
            "daily_volume_usd" = ${DailyVolumeUsd}
            "daily_txns" = ${DailyTxns}
            "vid" = ${Vid}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UniswapV2PairDayDataV2DTO<PSCustomObject>

.DESCRIPTION

Convert from JSON to UniswapV2PairDayDataV2DTO<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UniswapV2PairDayDataV2DTO<PSCustomObject>
#>
function ConvertFrom-JsonToUniswapV2PairDayDataV2DTO {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => UniswapV2PairDayDataV2DTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in UniswapV2PairDayDataV2DTO
        $AllProperties = ("entry_time", "recv_time", "block_number", "id", "date", "pair_address", "token_0", "token_1", "reserve_0", "reserve_1", "total_supply", "reserve_usd", "daily_volume_token_0", "daily_volume_token_1", "daily_volume_usd", "daily_txns", "vid")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pair_address"))) { #optional property not found
            $PairAddress = $null
        } else {
            $PairAddress = $JsonParameters.PSobject.Properties["pair_address"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "token_0"))) { #optional property not found
            $Token0 = $null
        } else {
            $Token0 = $JsonParameters.PSobject.Properties["token_0"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "token_1"))) { #optional property not found
            $Token1 = $null
        } else {
            $Token1 = $JsonParameters.PSobject.Properties["token_1"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reserve_0"))) { #optional property not found
            $Reserve0 = $null
        } else {
            $Reserve0 = $JsonParameters.PSobject.Properties["reserve_0"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reserve_1"))) { #optional property not found
            $Reserve1 = $null
        } else {
            $Reserve1 = $JsonParameters.PSobject.Properties["reserve_1"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "total_supply"))) { #optional property not found
            $TotalSupply = $null
        } else {
            $TotalSupply = $JsonParameters.PSobject.Properties["total_supply"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reserve_usd"))) { #optional property not found
            $ReserveUsd = $null
        } else {
            $ReserveUsd = $JsonParameters.PSobject.Properties["reserve_usd"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "daily_volume_token_0"))) { #optional property not found
            $DailyVolumeToken0 = $null
        } else {
            $DailyVolumeToken0 = $JsonParameters.PSobject.Properties["daily_volume_token_0"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "daily_volume_token_1"))) { #optional property not found
            $DailyVolumeToken1 = $null
        } else {
            $DailyVolumeToken1 = $JsonParameters.PSobject.Properties["daily_volume_token_1"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "daily_volume_usd"))) { #optional property not found
            $DailyVolumeUsd = $null
        } else {
            $DailyVolumeUsd = $JsonParameters.PSobject.Properties["daily_volume_usd"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "daily_txns"))) { #optional property not found
            $DailyTxns = $null
        } else {
            $DailyTxns = $JsonParameters.PSobject.Properties["daily_txns"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "vid"))) { #optional property not found
            $Vid = $null
        } else {
            $Vid = $JsonParameters.PSobject.Properties["vid"].value
        }

        $PSO = [PSCustomObject]@{
            "entry_time" = ${EntryTime}
            "recv_time" = ${RecvTime}
            "block_number" = ${BlockNumber}
            "id" = ${Id}
            "date" = ${Date}
            "pair_address" = ${PairAddress}
            "token_0" = ${Token0}
            "token_1" = ${Token1}
            "reserve_0" = ${Reserve0}
            "reserve_1" = ${Reserve1}
            "total_supply" = ${TotalSupply}
            "reserve_usd" = ${ReserveUsd}
            "daily_volume_token_0" = ${DailyVolumeToken0}
            "daily_volume_token_1" = ${DailyVolumeToken1}
            "daily_volume_usd" = ${DailyVolumeUsd}
            "daily_txns" = ${DailyTxns}
            "vid" = ${Vid}
        }

        return $PSO
    }

}
