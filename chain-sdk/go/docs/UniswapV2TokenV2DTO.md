# UniswapV2TokenV2DTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 
**Id** | Pointer to **NullableString** | Token address. | [optional] 
**Symbol** | Pointer to **NullableString** | Token symbol. | [optional] 
**Name** | Pointer to **NullableString** | Token name. | [optional] 
**Decimals** | Pointer to **int32** | Token decimals. | [optional] 
**TotalSupply** | Pointer to [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**TradeVolume** | Pointer to **NullableString** | Amount of token traded all time across all pairs. | [optional] 
**TradeVolumeUsd** | Pointer to **NullableString** | Amount of token in USD traded all time across pairs (only for tokens with liquidity above minimum threshold). | [optional] 
**UntrackedVolumeUsd** | Pointer to **NullableString** | Amount of token in USD traded all time across pairs (no minimum liquidity threshold). | [optional] 
**TxCount** | Pointer to [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**TotalLiquidity** | Pointer to **NullableString** | Total amount of token provided as liquidity across all pairs. | [optional] 
**DerivedEth** | Pointer to **NullableString** | ETH per token. | [optional] 
**TokenSymbol** | Pointer to **NullableString** |  | [optional] [readonly] 

## Methods

### NewUniswapV2TokenV2DTO

`func NewUniswapV2TokenV2DTO() *UniswapV2TokenV2DTO`

NewUniswapV2TokenV2DTO instantiates a new UniswapV2TokenV2DTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUniswapV2TokenV2DTOWithDefaults

`func NewUniswapV2TokenV2DTOWithDefaults() *UniswapV2TokenV2DTO`

NewUniswapV2TokenV2DTOWithDefaults instantiates a new UniswapV2TokenV2DTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *UniswapV2TokenV2DTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *UniswapV2TokenV2DTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *UniswapV2TokenV2DTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *UniswapV2TokenV2DTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *UniswapV2TokenV2DTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *UniswapV2TokenV2DTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *UniswapV2TokenV2DTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *UniswapV2TokenV2DTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *UniswapV2TokenV2DTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *UniswapV2TokenV2DTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *UniswapV2TokenV2DTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *UniswapV2TokenV2DTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetVid

`func (o *UniswapV2TokenV2DTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *UniswapV2TokenV2DTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *UniswapV2TokenV2DTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *UniswapV2TokenV2DTO) HasVid() bool`

HasVid returns a boolean if a field has been set.

### GetId

`func (o *UniswapV2TokenV2DTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *UniswapV2TokenV2DTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *UniswapV2TokenV2DTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *UniswapV2TokenV2DTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *UniswapV2TokenV2DTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *UniswapV2TokenV2DTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetSymbol

`func (o *UniswapV2TokenV2DTO) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *UniswapV2TokenV2DTO) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *UniswapV2TokenV2DTO) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *UniswapV2TokenV2DTO) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### SetSymbolNil

`func (o *UniswapV2TokenV2DTO) SetSymbolNil(b bool)`

 SetSymbolNil sets the value for Symbol to be an explicit nil

### UnsetSymbol
`func (o *UniswapV2TokenV2DTO) UnsetSymbol()`

UnsetSymbol ensures that no value is present for Symbol, not even an explicit nil
### GetName

`func (o *UniswapV2TokenV2DTO) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *UniswapV2TokenV2DTO) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *UniswapV2TokenV2DTO) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *UniswapV2TokenV2DTO) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *UniswapV2TokenV2DTO) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *UniswapV2TokenV2DTO) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetDecimals

`func (o *UniswapV2TokenV2DTO) GetDecimals() int32`

GetDecimals returns the Decimals field if non-nil, zero value otherwise.

### GetDecimalsOk

`func (o *UniswapV2TokenV2DTO) GetDecimalsOk() (*int32, bool)`

GetDecimalsOk returns a tuple with the Decimals field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDecimals

`func (o *UniswapV2TokenV2DTO) SetDecimals(v int32)`

SetDecimals sets Decimals field to given value.

### HasDecimals

`func (o *UniswapV2TokenV2DTO) HasDecimals() bool`

HasDecimals returns a boolean if a field has been set.

### GetTotalSupply

`func (o *UniswapV2TokenV2DTO) GetTotalSupply() NumericsBigInteger`

GetTotalSupply returns the TotalSupply field if non-nil, zero value otherwise.

### GetTotalSupplyOk

`func (o *UniswapV2TokenV2DTO) GetTotalSupplyOk() (*NumericsBigInteger, bool)`

GetTotalSupplyOk returns a tuple with the TotalSupply field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalSupply

`func (o *UniswapV2TokenV2DTO) SetTotalSupply(v NumericsBigInteger)`

SetTotalSupply sets TotalSupply field to given value.

### HasTotalSupply

`func (o *UniswapV2TokenV2DTO) HasTotalSupply() bool`

HasTotalSupply returns a boolean if a field has been set.

### GetTradeVolume

`func (o *UniswapV2TokenV2DTO) GetTradeVolume() string`

GetTradeVolume returns the TradeVolume field if non-nil, zero value otherwise.

### GetTradeVolumeOk

`func (o *UniswapV2TokenV2DTO) GetTradeVolumeOk() (*string, bool)`

GetTradeVolumeOk returns a tuple with the TradeVolume field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTradeVolume

`func (o *UniswapV2TokenV2DTO) SetTradeVolume(v string)`

SetTradeVolume sets TradeVolume field to given value.

### HasTradeVolume

`func (o *UniswapV2TokenV2DTO) HasTradeVolume() bool`

HasTradeVolume returns a boolean if a field has been set.

### SetTradeVolumeNil

`func (o *UniswapV2TokenV2DTO) SetTradeVolumeNil(b bool)`

 SetTradeVolumeNil sets the value for TradeVolume to be an explicit nil

### UnsetTradeVolume
`func (o *UniswapV2TokenV2DTO) UnsetTradeVolume()`

UnsetTradeVolume ensures that no value is present for TradeVolume, not even an explicit nil
### GetTradeVolumeUsd

`func (o *UniswapV2TokenV2DTO) GetTradeVolumeUsd() string`

GetTradeVolumeUsd returns the TradeVolumeUsd field if non-nil, zero value otherwise.

### GetTradeVolumeUsdOk

`func (o *UniswapV2TokenV2DTO) GetTradeVolumeUsdOk() (*string, bool)`

GetTradeVolumeUsdOk returns a tuple with the TradeVolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTradeVolumeUsd

`func (o *UniswapV2TokenV2DTO) SetTradeVolumeUsd(v string)`

SetTradeVolumeUsd sets TradeVolumeUsd field to given value.

### HasTradeVolumeUsd

`func (o *UniswapV2TokenV2DTO) HasTradeVolumeUsd() bool`

HasTradeVolumeUsd returns a boolean if a field has been set.

### SetTradeVolumeUsdNil

`func (o *UniswapV2TokenV2DTO) SetTradeVolumeUsdNil(b bool)`

 SetTradeVolumeUsdNil sets the value for TradeVolumeUsd to be an explicit nil

### UnsetTradeVolumeUsd
`func (o *UniswapV2TokenV2DTO) UnsetTradeVolumeUsd()`

UnsetTradeVolumeUsd ensures that no value is present for TradeVolumeUsd, not even an explicit nil
### GetUntrackedVolumeUsd

`func (o *UniswapV2TokenV2DTO) GetUntrackedVolumeUsd() string`

GetUntrackedVolumeUsd returns the UntrackedVolumeUsd field if non-nil, zero value otherwise.

### GetUntrackedVolumeUsdOk

`func (o *UniswapV2TokenV2DTO) GetUntrackedVolumeUsdOk() (*string, bool)`

GetUntrackedVolumeUsdOk returns a tuple with the UntrackedVolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUntrackedVolumeUsd

`func (o *UniswapV2TokenV2DTO) SetUntrackedVolumeUsd(v string)`

SetUntrackedVolumeUsd sets UntrackedVolumeUsd field to given value.

### HasUntrackedVolumeUsd

`func (o *UniswapV2TokenV2DTO) HasUntrackedVolumeUsd() bool`

HasUntrackedVolumeUsd returns a boolean if a field has been set.

### SetUntrackedVolumeUsdNil

`func (o *UniswapV2TokenV2DTO) SetUntrackedVolumeUsdNil(b bool)`

 SetUntrackedVolumeUsdNil sets the value for UntrackedVolumeUsd to be an explicit nil

### UnsetUntrackedVolumeUsd
`func (o *UniswapV2TokenV2DTO) UnsetUntrackedVolumeUsd()`

UnsetUntrackedVolumeUsd ensures that no value is present for UntrackedVolumeUsd, not even an explicit nil
### GetTxCount

`func (o *UniswapV2TokenV2DTO) GetTxCount() NumericsBigInteger`

GetTxCount returns the TxCount field if non-nil, zero value otherwise.

### GetTxCountOk

`func (o *UniswapV2TokenV2DTO) GetTxCountOk() (*NumericsBigInteger, bool)`

GetTxCountOk returns a tuple with the TxCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTxCount

`func (o *UniswapV2TokenV2DTO) SetTxCount(v NumericsBigInteger)`

SetTxCount sets TxCount field to given value.

### HasTxCount

`func (o *UniswapV2TokenV2DTO) HasTxCount() bool`

HasTxCount returns a boolean if a field has been set.

### GetTotalLiquidity

`func (o *UniswapV2TokenV2DTO) GetTotalLiquidity() string`

GetTotalLiquidity returns the TotalLiquidity field if non-nil, zero value otherwise.

### GetTotalLiquidityOk

`func (o *UniswapV2TokenV2DTO) GetTotalLiquidityOk() (*string, bool)`

GetTotalLiquidityOk returns a tuple with the TotalLiquidity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalLiquidity

`func (o *UniswapV2TokenV2DTO) SetTotalLiquidity(v string)`

SetTotalLiquidity sets TotalLiquidity field to given value.

### HasTotalLiquidity

`func (o *UniswapV2TokenV2DTO) HasTotalLiquidity() bool`

HasTotalLiquidity returns a boolean if a field has been set.

### SetTotalLiquidityNil

`func (o *UniswapV2TokenV2DTO) SetTotalLiquidityNil(b bool)`

 SetTotalLiquidityNil sets the value for TotalLiquidity to be an explicit nil

### UnsetTotalLiquidity
`func (o *UniswapV2TokenV2DTO) UnsetTotalLiquidity()`

UnsetTotalLiquidity ensures that no value is present for TotalLiquidity, not even an explicit nil
### GetDerivedEth

`func (o *UniswapV2TokenV2DTO) GetDerivedEth() string`

GetDerivedEth returns the DerivedEth field if non-nil, zero value otherwise.

### GetDerivedEthOk

`func (o *UniswapV2TokenV2DTO) GetDerivedEthOk() (*string, bool)`

GetDerivedEthOk returns a tuple with the DerivedEth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDerivedEth

`func (o *UniswapV2TokenV2DTO) SetDerivedEth(v string)`

SetDerivedEth sets DerivedEth field to given value.

### HasDerivedEth

`func (o *UniswapV2TokenV2DTO) HasDerivedEth() bool`

HasDerivedEth returns a boolean if a field has been set.

### SetDerivedEthNil

`func (o *UniswapV2TokenV2DTO) SetDerivedEthNil(b bool)`

 SetDerivedEthNil sets the value for DerivedEth to be an explicit nil

### UnsetDerivedEth
`func (o *UniswapV2TokenV2DTO) UnsetDerivedEth()`

UnsetDerivedEth ensures that no value is present for DerivedEth, not even an explicit nil
### GetTokenSymbol

`func (o *UniswapV2TokenV2DTO) GetTokenSymbol() string`

GetTokenSymbol returns the TokenSymbol field if non-nil, zero value otherwise.

### GetTokenSymbolOk

`func (o *UniswapV2TokenV2DTO) GetTokenSymbolOk() (*string, bool)`

GetTokenSymbolOk returns a tuple with the TokenSymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenSymbol

`func (o *UniswapV2TokenV2DTO) SetTokenSymbol(v string)`

SetTokenSymbol sets TokenSymbol field to given value.

### HasTokenSymbol

`func (o *UniswapV2TokenV2DTO) HasTokenSymbol() bool`

HasTokenSymbol returns a boolean if a field has been set.

### SetTokenSymbolNil

`func (o *UniswapV2TokenV2DTO) SetTokenSymbolNil(b bool)`

 SetTokenSymbolNil sets the value for TokenSymbol to be an explicit nil

### UnsetTokenSymbol
`func (o *UniswapV2TokenV2DTO) UnsetTokenSymbol()`

UnsetTokenSymbol ensures that no value is present for TokenSymbol, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


