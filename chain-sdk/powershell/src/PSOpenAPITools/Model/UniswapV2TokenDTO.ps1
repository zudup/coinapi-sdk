#
# On Chain - REST API
#  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
# Version: v1
# Contact: support@coinapi.io
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Stores aggregated information for a specific token across all pairs that token is included in.

.PARAMETER EntryTime
No description available.
.PARAMETER RecvTime
No description available.
.PARAMETER BlockNumber
Number of block in which entity was recorded.
.PARAMETER Vid

.PARAMETER Id
Token address.
.PARAMETER Symbol
Token symbol.
.PARAMETER Name
Token name.
.PARAMETER Decimals
Token decimals.
.PARAMETER TotalSupply
No description available.
.PARAMETER TradeVolume
Amount of token traded all time across all pairs.
.PARAMETER TradeVolumeUsd
Amount of token in USD traded all time across pairs (only for tokens with liquidity above minimum threshold).
.PARAMETER UntrackedVolumeUsd
Amount of token in USD traded all time across pairs (no minimum liquidity threshold).
.PARAMETER TxCount
No description available.
.PARAMETER TotalLiquidity
Total amount of token provided as liquidity across all pairs.
.PARAMETER DerivedEth
ETH per token.
.PARAMETER TokenSymbol
No description available.
.OUTPUTS

UniswapV2TokenDTO<PSCustomObject>
#>

function Initialize-UniswapV2TokenDTO {
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
        [String]
        ${Symbol},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Decimals},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${TotalSupply},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TradeVolume},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TradeVolumeUsd},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UntrackedVolumeUsd},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${TxCount},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TotalLiquidity},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DerivedEth},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TokenSymbol}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => UniswapV2TokenDTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "entry_time" = ${EntryTime}
            "recv_time" = ${RecvTime}
            "block_number" = ${BlockNumber}
            "vid" = ${Vid}
            "id" = ${Id}
            "symbol" = ${Symbol}
            "name" = ${Name}
            "decimals" = ${Decimals}
            "total_supply" = ${TotalSupply}
            "trade_volume" = ${TradeVolume}
            "trade_volume_usd" = ${TradeVolumeUsd}
            "untracked_volume_usd" = ${UntrackedVolumeUsd}
            "tx_count" = ${TxCount}
            "total_liquidity" = ${TotalLiquidity}
            "derived_eth" = ${DerivedEth}
            "token_symbol" = ${TokenSymbol}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UniswapV2TokenDTO<PSCustomObject>

.DESCRIPTION

Convert from JSON to UniswapV2TokenDTO<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UniswapV2TokenDTO<PSCustomObject>
#>
function ConvertFrom-JsonToUniswapV2TokenDTO {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => UniswapV2TokenDTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in UniswapV2TokenDTO
        $AllProperties = ("entry_time", "recv_time", "block_number", "vid", "id", "symbol", "name", "decimals", "total_supply", "trade_volume", "trade_volume_usd", "untracked_volume_usd", "tx_count", "total_liquidity", "derived_eth", "token_symbol")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "symbol"))) { #optional property not found
            $Symbol = $null
        } else {
            $Symbol = $JsonParameters.PSobject.Properties["symbol"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "decimals"))) { #optional property not found
            $Decimals = $null
        } else {
            $Decimals = $JsonParameters.PSobject.Properties["decimals"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "total_supply"))) { #optional property not found
            $TotalSupply = $null
        } else {
            $TotalSupply = $JsonParameters.PSobject.Properties["total_supply"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "trade_volume"))) { #optional property not found
            $TradeVolume = $null
        } else {
            $TradeVolume = $JsonParameters.PSobject.Properties["trade_volume"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "trade_volume_usd"))) { #optional property not found
            $TradeVolumeUsd = $null
        } else {
            $TradeVolumeUsd = $JsonParameters.PSobject.Properties["trade_volume_usd"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "untracked_volume_usd"))) { #optional property not found
            $UntrackedVolumeUsd = $null
        } else {
            $UntrackedVolumeUsd = $JsonParameters.PSobject.Properties["untracked_volume_usd"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tx_count"))) { #optional property not found
            $TxCount = $null
        } else {
            $TxCount = $JsonParameters.PSobject.Properties["tx_count"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "total_liquidity"))) { #optional property not found
            $TotalLiquidity = $null
        } else {
            $TotalLiquidity = $JsonParameters.PSobject.Properties["total_liquidity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "derived_eth"))) { #optional property not found
            $DerivedEth = $null
        } else {
            $DerivedEth = $JsonParameters.PSobject.Properties["derived_eth"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "token_symbol"))) { #optional property not found
            $TokenSymbol = $null
        } else {
            $TokenSymbol = $JsonParameters.PSobject.Properties["token_symbol"].value
        }

        $PSO = [PSCustomObject]@{
            "entry_time" = ${EntryTime}
            "recv_time" = ${RecvTime}
            "block_number" = ${BlockNumber}
            "vid" = ${Vid}
            "id" = ${Id}
            "symbol" = ${Symbol}
            "name" = ${Name}
            "decimals" = ${Decimals}
            "total_supply" = ${TotalSupply}
            "trade_volume" = ${TradeVolume}
            "trade_volume_usd" = ${TradeVolumeUsd}
            "untracked_volume_usd" = ${UntrackedVolumeUsd}
            "tx_count" = ${TxCount}
            "total_liquidity" = ${TotalLiquidity}
            "derived_eth" = ${DerivedEth}
            "token_symbol" = ${TokenSymbol}
        }

        return $PSO
    }

}

