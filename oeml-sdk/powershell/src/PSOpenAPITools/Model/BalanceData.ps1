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

.PARAMETER AssetIdExchange
Exchange currency code.
.PARAMETER AssetIdCoinapi
CoinAPI currency code.
.PARAMETER Balance
Value of the current total currency balance on the exchange.
.PARAMETER Available
Value of the current available currency balance on the exchange that can be used as collateral.
.PARAMETER Locked
Value of the current locked currency balance by the exchange.
.PARAMETER LastUpdatedBy
Source of the last modification. 
.PARAMETER RateUsd
Current exchange rate to the USD for the single unit of the currency. 
.PARAMETER Traded
Value of the current total traded.
.OUTPUTS

BalanceData<PSCustomObject>
#>

function Initialize-BalanceData {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AssetIdExchange},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AssetIdCoinapi},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${Balance},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${Available},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${Locked},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("INITIALIZATION", "BALANCE_MANAGER", "EXCHANGE")]
        [String]
        ${LastUpdatedBy},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${RateUsd},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${Traded}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => BalanceData' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "asset_id_exchange" = ${AssetIdExchange}
            "asset_id_coinapi" = ${AssetIdCoinapi}
            "balance" = ${Balance}
            "available" = ${Available}
            "locked" = ${Locked}
            "last_updated_by" = ${LastUpdatedBy}
            "rate_usd" = ${RateUsd}
            "traded" = ${Traded}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to BalanceData<PSCustomObject>

.DESCRIPTION

Convert from JSON to BalanceData<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

BalanceData<PSCustomObject>
#>
function ConvertFrom-JsonToBalanceData {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => BalanceData' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BalanceData
        $AllProperties = ("asset_id_exchange", "asset_id_coinapi", "balance", "available", "locked", "last_updated_by", "rate_usd", "traded")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "asset_id_exchange"))) { #optional property not found
            $AssetIdExchange = $null
        } else {
            $AssetIdExchange = $JsonParameters.PSobject.Properties["asset_id_exchange"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "asset_id_coinapi"))) { #optional property not found
            $AssetIdCoinapi = $null
        } else {
            $AssetIdCoinapi = $JsonParameters.PSobject.Properties["asset_id_coinapi"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "balance"))) { #optional property not found
            $Balance = $null
        } else {
            $Balance = $JsonParameters.PSobject.Properties["balance"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "available"))) { #optional property not found
            $Available = $null
        } else {
            $Available = $JsonParameters.PSobject.Properties["available"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "locked"))) { #optional property not found
            $Locked = $null
        } else {
            $Locked = $JsonParameters.PSobject.Properties["locked"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "last_updated_by"))) { #optional property not found
            $LastUpdatedBy = $null
        } else {
            $LastUpdatedBy = $JsonParameters.PSobject.Properties["last_updated_by"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "rate_usd"))) { #optional property not found
            $RateUsd = $null
        } else {
            $RateUsd = $JsonParameters.PSobject.Properties["rate_usd"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "traded"))) { #optional property not found
            $Traded = $null
        } else {
            $Traded = $JsonParameters.PSobject.Properties["traded"].value
        }

        $PSO = [PSCustomObject]@{
            "asset_id_exchange" = ${AssetIdExchange}
            "asset_id_coinapi" = ${AssetIdCoinapi}
            "balance" = ${Balance}
            "available" = ${Available}
            "locked" = ${Locked}
            "last_updated_by" = ${LastUpdatedBy}
            "rate_usd" = ${RateUsd}
            "traded" = ${Traded}
        }

        return $PSO
    }

}

