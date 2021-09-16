#
# OEML - REST API
# This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=""https://postman.coinapi.io/"" target=""_blank"">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
# Version: v1
# Contact: support@coinapi.io
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Time
Execution time.
.PARAMETER Price
Execution price.
.PARAMETER Amount
Executed quantity.
.OUTPUTS

Fills<PSCustomObject>
#>

function Initialize-Fills {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Time},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${Price},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${Amount}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => Fills' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "time" = ${Time}
            "price" = ${Price}
            "amount" = ${Amount}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Fills<PSCustomObject>

.DESCRIPTION

Convert from JSON to Fills<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Fills<PSCustomObject>
#>
function ConvertFrom-JsonToFills {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => Fills' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in Fills
        $AllProperties = ("time", "price", "amount")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "time"))) { #optional property not found
            $Time = $null
        } else {
            $Time = $JsonParameters.PSobject.Properties["time"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "price"))) { #optional property not found
            $Price = $null
        } else {
            $Price = $JsonParameters.PSobject.Properties["price"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "amount"))) { #optional property not found
            $Amount = $null
        } else {
            $Amount = $JsonParameters.PSobject.Properties["amount"].value
        }

        $PSO = [PSCustomObject]@{
            "time" = ${Time}
            "price" = ${Price}
            "amount" = ${Amount}
        }

        return $PSO
    }

}

