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

.PARAMETER ChainId
No description available.

.PARAMETER StartBlock
No description available.

.PARAMETER EndBlock
No description available.

.PARAMETER StartDate
No description available.

.PARAMETER EndDate
No description available.

.PARAMETER PoolId
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-ChainsChainIdDappsCurvePoolsHistoricalGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ChainId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int64]]
        ${StartBlock},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int64]]
        ${EndBlock},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${StartDate},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${EndDate},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${PoolId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-ChainsChainIdDappsCurvePoolsHistoricalGet' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        $LocalVarUri = '/chains/{chain_id}/dapps/curve/pools/historical'
        if (!$ChainId) {
            throw "Error! The required parameter `ChainId` missing when calling chainsChainIdDappsCurvePoolsHistoricalGet."
        }
        $LocalVarUri = $LocalVarUri.replace('{chain_id}', [System.Web.HTTPUtility]::UrlEncode($ChainId))

        if ($StartBlock) {
            $LocalVarQueryParameters['startBlock'] = $StartBlock
        }

        if ($EndBlock) {
            $LocalVarQueryParameters['endBlock'] = $EndBlock
        }

        if ($StartDate) {
            $LocalVarQueryParameters['startDate'] = $StartDate
        }

        if ($EndDate) {
            $LocalVarQueryParameters['endDate'] = $EndDate
        }

        if ($PoolId) {
            $LocalVarQueryParameters['poolId'] = $PoolId
        }

        $LocalVarResult = Invoke-ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER ChainId
No description available.

.PARAMETER StartBlock
No description available.

.PARAMETER EndBlock
No description available.

.PARAMETER StartDate
No description available.

.PARAMETER EndDate
No description available.

.PARAMETER PoolId
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-ChainsChainIdDappsSushiswapPoolsHistoricalGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ChainId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int64]]
        ${StartBlock},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int64]]
        ${EndBlock},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${StartDate},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${EndDate},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${PoolId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-ChainsChainIdDappsSushiswapPoolsHistoricalGet' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        $LocalVarUri = '/chains/{chain_id}/dapps/sushiswap/pools/historical'
        if (!$ChainId) {
            throw "Error! The required parameter `ChainId` missing when calling chainsChainIdDappsSushiswapPoolsHistoricalGet."
        }
        $LocalVarUri = $LocalVarUri.replace('{chain_id}', [System.Web.HTTPUtility]::UrlEncode($ChainId))

        if ($StartBlock) {
            $LocalVarQueryParameters['startBlock'] = $StartBlock
        }

        if ($EndBlock) {
            $LocalVarQueryParameters['endBlock'] = $EndBlock
        }

        if ($StartDate) {
            $LocalVarQueryParameters['startDate'] = $StartDate
        }

        if ($EndDate) {
            $LocalVarQueryParameters['endDate'] = $EndDate
        }

        if ($PoolId) {
            $LocalVarQueryParameters['poolId'] = $PoolId
        }

        $LocalVarResult = Invoke-ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER ChainId
No description available.

.PARAMETER StartBlock
No description available.

.PARAMETER EndBlock
No description available.

.PARAMETER StartDate
No description available.

.PARAMETER EndDate
No description available.

.PARAMETER PoolId
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-ChainsChainIdDappsUniswapv2PoolsHistoricalGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ChainId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int64]]
        ${StartBlock},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int64]]
        ${EndBlock},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${StartDate},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${EndDate},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${PoolId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-ChainsChainIdDappsUniswapv2PoolsHistoricalGet' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        $LocalVarUri = '/chains/{chain_id}/dapps/uniswapv2/pools/historical'
        if (!$ChainId) {
            throw "Error! The required parameter `ChainId` missing when calling chainsChainIdDappsUniswapv2PoolsHistoricalGet."
        }
        $LocalVarUri = $LocalVarUri.replace('{chain_id}', [System.Web.HTTPUtility]::UrlEncode($ChainId))

        if ($StartBlock) {
            $LocalVarQueryParameters['startBlock'] = $StartBlock
        }

        if ($EndBlock) {
            $LocalVarQueryParameters['endBlock'] = $EndBlock
        }

        if ($StartDate) {
            $LocalVarQueryParameters['startDate'] = $StartDate
        }

        if ($EndDate) {
            $LocalVarQueryParameters['endDate'] = $EndDate
        }

        if ($PoolId) {
            $LocalVarQueryParameters['poolId'] = $PoolId
        }

        $LocalVarResult = Invoke-ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER ChainId
No description available.

.PARAMETER StartBlock
No description available.

.PARAMETER EndBlock
No description available.

.PARAMETER StartDate
No description available.

.PARAMETER EndDate
No description available.

.PARAMETER PoolId
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-ChainsChainIdDappsUniswapv3PoolsHistoricalGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ChainId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int64]]
        ${StartBlock},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int64]]
        ${EndBlock},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${StartDate},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${EndDate},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${PoolId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-ChainsChainIdDappsUniswapv3PoolsHistoricalGet' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        $LocalVarUri = '/chains/{chain_id}/dapps/uniswapv3/pools/historical'
        if (!$ChainId) {
            throw "Error! The required parameter `ChainId` missing when calling chainsChainIdDappsUniswapv3PoolsHistoricalGet."
        }
        $LocalVarUri = $LocalVarUri.replace('{chain_id}', [System.Web.HTTPUtility]::UrlEncode($ChainId))

        if ($StartBlock) {
            $LocalVarQueryParameters['startBlock'] = $StartBlock
        }

        if ($EndBlock) {
            $LocalVarQueryParameters['endBlock'] = $EndBlock
        }

        if ($StartDate) {
            $LocalVarQueryParameters['startDate'] = $StartDate
        }

        if ($EndDate) {
            $LocalVarQueryParameters['endDate'] = $EndDate
        }

        if ($PoolId) {
            $LocalVarQueryParameters['poolId'] = $PoolId
        }

        $LocalVarResult = Invoke-ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

