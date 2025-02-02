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

The Position object.

.PARAMETER SymbolIdExchange
Exchange symbol.
.PARAMETER SymbolIdCoinapi
CoinAPI symbol.
.PARAMETER AvgEntryPrice
Calculated average price of all fills on this position.
.PARAMETER Quantity
The current position quantity.
.PARAMETER Side
No description available.
.PARAMETER UnrealizedPnl
Unrealised profit or loss (PNL) of this position.
.PARAMETER Leverage
Leverage for this position reported by the exchange.
.PARAMETER CrossMargin
Is cross margin mode enable for this position?
.PARAMETER LiquidationPrice
Liquidation price. If mark price will reach this value, the position will be liquidated.
.PARAMETER RawData
No description available.
.OUTPUTS

PositionData<PSCustomObject>
#>

function Initialize-PositionData {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SymbolIdExchange},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SymbolIdCoinapi},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${AvgEntryPrice},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${Quantity},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Side},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${UnrealizedPnl},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${Leverage},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${CrossMargin},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${LiquidationPrice},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RawData}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => PositionData' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "symbol_id_exchange" = ${SymbolIdExchange}
            "symbol_id_coinapi" = ${SymbolIdCoinapi}
            "avg_entry_price" = ${AvgEntryPrice}
            "quantity" = ${Quantity}
            "side" = ${Side}
            "unrealized_pnl" = ${UnrealizedPnl}
            "leverage" = ${Leverage}
            "cross_margin" = ${CrossMargin}
            "liquidation_price" = ${LiquidationPrice}
            "raw_data" = ${RawData}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PositionData<PSCustomObject>

.DESCRIPTION

Convert from JSON to PositionData<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PositionData<PSCustomObject>
#>
function ConvertFrom-JsonToPositionData {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => PositionData' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PositionData
        $AllProperties = ("symbol_id_exchange", "symbol_id_coinapi", "avg_entry_price", "quantity", "side", "unrealized_pnl", "leverage", "cross_margin", "liquidation_price", "raw_data")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "symbol_id_exchange"))) { #optional property not found
            $SymbolIdExchange = $null
        } else {
            $SymbolIdExchange = $JsonParameters.PSobject.Properties["symbol_id_exchange"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "symbol_id_coinapi"))) { #optional property not found
            $SymbolIdCoinapi = $null
        } else {
            $SymbolIdCoinapi = $JsonParameters.PSobject.Properties["symbol_id_coinapi"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "avg_entry_price"))) { #optional property not found
            $AvgEntryPrice = $null
        } else {
            $AvgEntryPrice = $JsonParameters.PSobject.Properties["avg_entry_price"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "quantity"))) { #optional property not found
            $Quantity = $null
        } else {
            $Quantity = $JsonParameters.PSobject.Properties["quantity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "side"))) { #optional property not found
            $Side = $null
        } else {
            $Side = $JsonParameters.PSobject.Properties["side"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "unrealized_pnl"))) { #optional property not found
            $UnrealizedPnl = $null
        } else {
            $UnrealizedPnl = $JsonParameters.PSobject.Properties["unrealized_pnl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "leverage"))) { #optional property not found
            $Leverage = $null
        } else {
            $Leverage = $JsonParameters.PSobject.Properties["leverage"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cross_margin"))) { #optional property not found
            $CrossMargin = $null
        } else {
            $CrossMargin = $JsonParameters.PSobject.Properties["cross_margin"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "liquidation_price"))) { #optional property not found
            $LiquidationPrice = $null
        } else {
            $LiquidationPrice = $JsonParameters.PSobject.Properties["liquidation_price"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "raw_data"))) { #optional property not found
            $RawData = $null
        } else {
            $RawData = $JsonParameters.PSobject.Properties["raw_data"].value
        }

        $PSO = [PSCustomObject]@{
            "symbol_id_exchange" = ${SymbolIdExchange}
            "symbol_id_coinapi" = ${SymbolIdCoinapi}
            "avg_entry_price" = ${AvgEntryPrice}
            "quantity" = ${Quantity}
            "side" = ${Side}
            "unrealized_pnl" = ${UnrealizedPnl}
            "leverage" = ${Leverage}
            "cross_margin" = ${CrossMargin}
            "liquidation_price" = ${LiquidationPrice}
            "raw_data" = ${RawData}
        }

        return $PSO
    }

}

