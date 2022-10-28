# TokenV2DTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** |  | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 
**Id** | Pointer to **NullableString** | Token address. | [optional] 
**Symbol** | Pointer to **NullableString** | Token symbol. | [optional] 
**Name** | Pointer to **NullableString** | Token name. | [optional] 
**Decimals** | Pointer to **int32** | Token decimals. | [optional] 
**TotalSupply** | Pointer to [**BigInteger**](BigInteger.md) |  | [optional] 
**TradeVolume** | Pointer to **NullableString** | Amount of token traded all time across all pairs. | [optional] 
**TradeVolumeUsd** | Pointer to **NullableString** | Amount of token in USD traded all time across pairs (only for tokens with liquidity above minimum threshold). | [optional] 
**UntrackedVolumeUsd** | Pointer to **NullableString** | Amount of token in USD traded all time across pairs (no minimum liquidity threshold). | [optional] 
**TxCount** | Pointer to [**BigInteger**](BigInteger.md) |  | [optional] 
**TotalLiquidity** | Pointer to **NullableString** | Total amount of token provided as liquidity across all pairs. | [optional] 
**DerivedEth** | Pointer to **NullableString** | ETH per token. | [optional] 
**TokenSymbol** | Pointer to **NullableString** |  | [optional] [readonly] 

## Methods

### NewTokenV2DTO

`func NewTokenV2DTO() *TokenV2DTO`

NewTokenV2DTO instantiates a new TokenV2DTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTokenV2DTOWithDefaults

`func NewTokenV2DTOWithDefaults() *TokenV2DTO`

NewTokenV2DTOWithDefaults instantiates a new TokenV2DTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *TokenV2DTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *TokenV2DTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *TokenV2DTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *TokenV2DTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *TokenV2DTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *TokenV2DTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *TokenV2DTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *TokenV2DTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *TokenV2DTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *TokenV2DTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *TokenV2DTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *TokenV2DTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetVid

`func (o *TokenV2DTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *TokenV2DTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *TokenV2DTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *TokenV2DTO) HasVid() bool`

HasVid returns a boolean if a field has been set.

### GetId

`func (o *TokenV2DTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *TokenV2DTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *TokenV2DTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *TokenV2DTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *TokenV2DTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *TokenV2DTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetSymbol

`func (o *TokenV2DTO) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *TokenV2DTO) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *TokenV2DTO) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *TokenV2DTO) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### SetSymbolNil

`func (o *TokenV2DTO) SetSymbolNil(b bool)`

 SetSymbolNil sets the value for Symbol to be an explicit nil

### UnsetSymbol
`func (o *TokenV2DTO) UnsetSymbol()`

UnsetSymbol ensures that no value is present for Symbol, not even an explicit nil
### GetName

`func (o *TokenV2DTO) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *TokenV2DTO) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *TokenV2DTO) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *TokenV2DTO) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *TokenV2DTO) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *TokenV2DTO) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetDecimals

`func (o *TokenV2DTO) GetDecimals() int32`

GetDecimals returns the Decimals field if non-nil, zero value otherwise.

### GetDecimalsOk

`func (o *TokenV2DTO) GetDecimalsOk() (*int32, bool)`

GetDecimalsOk returns a tuple with the Decimals field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDecimals

`func (o *TokenV2DTO) SetDecimals(v int32)`

SetDecimals sets Decimals field to given value.

### HasDecimals

`func (o *TokenV2DTO) HasDecimals() bool`

HasDecimals returns a boolean if a field has been set.

### GetTotalSupply

`func (o *TokenV2DTO) GetTotalSupply() BigInteger`

GetTotalSupply returns the TotalSupply field if non-nil, zero value otherwise.

### GetTotalSupplyOk

`func (o *TokenV2DTO) GetTotalSupplyOk() (*BigInteger, bool)`

GetTotalSupplyOk returns a tuple with the TotalSupply field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalSupply

`func (o *TokenV2DTO) SetTotalSupply(v BigInteger)`

SetTotalSupply sets TotalSupply field to given value.

### HasTotalSupply

`func (o *TokenV2DTO) HasTotalSupply() bool`

HasTotalSupply returns a boolean if a field has been set.

### GetTradeVolume

`func (o *TokenV2DTO) GetTradeVolume() string`

GetTradeVolume returns the TradeVolume field if non-nil, zero value otherwise.

### GetTradeVolumeOk

`func (o *TokenV2DTO) GetTradeVolumeOk() (*string, bool)`

GetTradeVolumeOk returns a tuple with the TradeVolume field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTradeVolume

`func (o *TokenV2DTO) SetTradeVolume(v string)`

SetTradeVolume sets TradeVolume field to given value.

### HasTradeVolume

`func (o *TokenV2DTO) HasTradeVolume() bool`

HasTradeVolume returns a boolean if a field has been set.

### SetTradeVolumeNil

`func (o *TokenV2DTO) SetTradeVolumeNil(b bool)`

 SetTradeVolumeNil sets the value for TradeVolume to be an explicit nil

### UnsetTradeVolume
`func (o *TokenV2DTO) UnsetTradeVolume()`

UnsetTradeVolume ensures that no value is present for TradeVolume, not even an explicit nil
### GetTradeVolumeUsd

`func (o *TokenV2DTO) GetTradeVolumeUsd() string`

GetTradeVolumeUsd returns the TradeVolumeUsd field if non-nil, zero value otherwise.

### GetTradeVolumeUsdOk

`func (o *TokenV2DTO) GetTradeVolumeUsdOk() (*string, bool)`

GetTradeVolumeUsdOk returns a tuple with the TradeVolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTradeVolumeUsd

`func (o *TokenV2DTO) SetTradeVolumeUsd(v string)`

SetTradeVolumeUsd sets TradeVolumeUsd field to given value.

### HasTradeVolumeUsd

`func (o *TokenV2DTO) HasTradeVolumeUsd() bool`

HasTradeVolumeUsd returns a boolean if a field has been set.

### SetTradeVolumeUsdNil

`func (o *TokenV2DTO) SetTradeVolumeUsdNil(b bool)`

 SetTradeVolumeUsdNil sets the value for TradeVolumeUsd to be an explicit nil

### UnsetTradeVolumeUsd
`func (o *TokenV2DTO) UnsetTradeVolumeUsd()`

UnsetTradeVolumeUsd ensures that no value is present for TradeVolumeUsd, not even an explicit nil
### GetUntrackedVolumeUsd

`func (o *TokenV2DTO) GetUntrackedVolumeUsd() string`

GetUntrackedVolumeUsd returns the UntrackedVolumeUsd field if non-nil, zero value otherwise.

### GetUntrackedVolumeUsdOk

`func (o *TokenV2DTO) GetUntrackedVolumeUsdOk() (*string, bool)`

GetUntrackedVolumeUsdOk returns a tuple with the UntrackedVolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUntrackedVolumeUsd

`func (o *TokenV2DTO) SetUntrackedVolumeUsd(v string)`

SetUntrackedVolumeUsd sets UntrackedVolumeUsd field to given value.

### HasUntrackedVolumeUsd

`func (o *TokenV2DTO) HasUntrackedVolumeUsd() bool`

HasUntrackedVolumeUsd returns a boolean if a field has been set.

### SetUntrackedVolumeUsdNil

`func (o *TokenV2DTO) SetUntrackedVolumeUsdNil(b bool)`

 SetUntrackedVolumeUsdNil sets the value for UntrackedVolumeUsd to be an explicit nil

### UnsetUntrackedVolumeUsd
`func (o *TokenV2DTO) UnsetUntrackedVolumeUsd()`

UnsetUntrackedVolumeUsd ensures that no value is present for UntrackedVolumeUsd, not even an explicit nil
### GetTxCount

`func (o *TokenV2DTO) GetTxCount() BigInteger`

GetTxCount returns the TxCount field if non-nil, zero value otherwise.

### GetTxCountOk

`func (o *TokenV2DTO) GetTxCountOk() (*BigInteger, bool)`

GetTxCountOk returns a tuple with the TxCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTxCount

`func (o *TokenV2DTO) SetTxCount(v BigInteger)`

SetTxCount sets TxCount field to given value.

### HasTxCount

`func (o *TokenV2DTO) HasTxCount() bool`

HasTxCount returns a boolean if a field has been set.

### GetTotalLiquidity

`func (o *TokenV2DTO) GetTotalLiquidity() string`

GetTotalLiquidity returns the TotalLiquidity field if non-nil, zero value otherwise.

### GetTotalLiquidityOk

`func (o *TokenV2DTO) GetTotalLiquidityOk() (*string, bool)`

GetTotalLiquidityOk returns a tuple with the TotalLiquidity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalLiquidity

`func (o *TokenV2DTO) SetTotalLiquidity(v string)`

SetTotalLiquidity sets TotalLiquidity field to given value.

### HasTotalLiquidity

`func (o *TokenV2DTO) HasTotalLiquidity() bool`

HasTotalLiquidity returns a boolean if a field has been set.

### SetTotalLiquidityNil

`func (o *TokenV2DTO) SetTotalLiquidityNil(b bool)`

 SetTotalLiquidityNil sets the value for TotalLiquidity to be an explicit nil

### UnsetTotalLiquidity
`func (o *TokenV2DTO) UnsetTotalLiquidity()`

UnsetTotalLiquidity ensures that no value is present for TotalLiquidity, not even an explicit nil
### GetDerivedEth

`func (o *TokenV2DTO) GetDerivedEth() string`

GetDerivedEth returns the DerivedEth field if non-nil, zero value otherwise.

### GetDerivedEthOk

`func (o *TokenV2DTO) GetDerivedEthOk() (*string, bool)`

GetDerivedEthOk returns a tuple with the DerivedEth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDerivedEth

`func (o *TokenV2DTO) SetDerivedEth(v string)`

SetDerivedEth sets DerivedEth field to given value.

### HasDerivedEth

`func (o *TokenV2DTO) HasDerivedEth() bool`

HasDerivedEth returns a boolean if a field has been set.

### SetDerivedEthNil

`func (o *TokenV2DTO) SetDerivedEthNil(b bool)`

 SetDerivedEthNil sets the value for DerivedEth to be an explicit nil

### UnsetDerivedEth
`func (o *TokenV2DTO) UnsetDerivedEth()`

UnsetDerivedEth ensures that no value is present for DerivedEth, not even an explicit nil
### GetTokenSymbol

`func (o *TokenV2DTO) GetTokenSymbol() string`

GetTokenSymbol returns the TokenSymbol field if non-nil, zero value otherwise.

### GetTokenSymbolOk

`func (o *TokenV2DTO) GetTokenSymbolOk() (*string, bool)`

GetTokenSymbolOk returns a tuple with the TokenSymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenSymbol

`func (o *TokenV2DTO) SetTokenSymbol(v string)`

SetTokenSymbol sets TokenSymbol field to given value.

### HasTokenSymbol

`func (o *TokenV2DTO) HasTokenSymbol() bool`

HasTokenSymbol returns a boolean if a field has been set.

### SetTokenSymbolNil

`func (o *TokenV2DTO) SetTokenSymbolNil(b bool)`

 SetTokenSymbolNil sets the value for TokenSymbol to be an explicit nil

### UnsetTokenSymbol
`func (o *TokenV2DTO) UnsetTokenSymbol()`

UnsetTokenSymbol ensures that no value is present for TokenSymbol, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


