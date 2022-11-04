# TokenDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Id** | Pointer to **NullableString** | Token address. | [optional] 
**Factory** | Pointer to **NullableString** | Factory address. | [optional] 
**Symbol** | Pointer to **NullableString** | Token symbol. | [optional] 
**Name** | Pointer to **NullableString** | Token name. | [optional] 
**Decimals** | Pointer to **NullableString** | Token decimals. | [optional] 
**TotalSupply** | Pointer to **NullableString** | Total supply of liquidity token. | [optional] 
**Volume** | Pointer to **NullableString** | Amount of token traded all time across all pairs. | [optional] 
**VolumeUsd** | Pointer to **NullableString** | Amount of token in USD traded all time across pairs (only for tokens with liquidity above minimum threshold). | [optional] 
**UntrackedVolumeUsd** | Pointer to **NullableString** | Amount of token in USD traded all time across pairs (no minimum liquidity threshold). | [optional] 
**TxCount** | Pointer to **NullableString** | Amount of transactions all time in pairs including token. | [optional] 
**Liquidity** | Pointer to **NullableString** | Total amount of token provided as liquidity across all pairs. | [optional] 
**DerivedEth** | Pointer to **NullableString** | ETH per token. | [optional] 
**WhitelistPairs** | Pointer to **[]string** | Array of whitelisted pairs. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 
**TokenSymbol** | Pointer to **NullableString** |  | [optional] [readonly] 

## Methods

### NewTokenDTO

`func NewTokenDTO() *TokenDTO`

NewTokenDTO instantiates a new TokenDTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTokenDTOWithDefaults

`func NewTokenDTOWithDefaults() *TokenDTO`

NewTokenDTOWithDefaults instantiates a new TokenDTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *TokenDTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *TokenDTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *TokenDTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *TokenDTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *TokenDTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *TokenDTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *TokenDTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *TokenDTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *TokenDTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *TokenDTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *TokenDTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *TokenDTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *TokenDTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *TokenDTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *TokenDTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *TokenDTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *TokenDTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *TokenDTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetFactory

`func (o *TokenDTO) GetFactory() string`

GetFactory returns the Factory field if non-nil, zero value otherwise.

### GetFactoryOk

`func (o *TokenDTO) GetFactoryOk() (*string, bool)`

GetFactoryOk returns a tuple with the Factory field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFactory

`func (o *TokenDTO) SetFactory(v string)`

SetFactory sets Factory field to given value.

### HasFactory

`func (o *TokenDTO) HasFactory() bool`

HasFactory returns a boolean if a field has been set.

### SetFactoryNil

`func (o *TokenDTO) SetFactoryNil(b bool)`

 SetFactoryNil sets the value for Factory to be an explicit nil

### UnsetFactory
`func (o *TokenDTO) UnsetFactory()`

UnsetFactory ensures that no value is present for Factory, not even an explicit nil
### GetSymbol

`func (o *TokenDTO) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *TokenDTO) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *TokenDTO) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *TokenDTO) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### SetSymbolNil

`func (o *TokenDTO) SetSymbolNil(b bool)`

 SetSymbolNil sets the value for Symbol to be an explicit nil

### UnsetSymbol
`func (o *TokenDTO) UnsetSymbol()`

UnsetSymbol ensures that no value is present for Symbol, not even an explicit nil
### GetName

`func (o *TokenDTO) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *TokenDTO) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *TokenDTO) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *TokenDTO) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *TokenDTO) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *TokenDTO) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetDecimals

`func (o *TokenDTO) GetDecimals() string`

GetDecimals returns the Decimals field if non-nil, zero value otherwise.

### GetDecimalsOk

`func (o *TokenDTO) GetDecimalsOk() (*string, bool)`

GetDecimalsOk returns a tuple with the Decimals field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDecimals

`func (o *TokenDTO) SetDecimals(v string)`

SetDecimals sets Decimals field to given value.

### HasDecimals

`func (o *TokenDTO) HasDecimals() bool`

HasDecimals returns a boolean if a field has been set.

### SetDecimalsNil

`func (o *TokenDTO) SetDecimalsNil(b bool)`

 SetDecimalsNil sets the value for Decimals to be an explicit nil

### UnsetDecimals
`func (o *TokenDTO) UnsetDecimals()`

UnsetDecimals ensures that no value is present for Decimals, not even an explicit nil
### GetTotalSupply

`func (o *TokenDTO) GetTotalSupply() string`

GetTotalSupply returns the TotalSupply field if non-nil, zero value otherwise.

### GetTotalSupplyOk

`func (o *TokenDTO) GetTotalSupplyOk() (*string, bool)`

GetTotalSupplyOk returns a tuple with the TotalSupply field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalSupply

`func (o *TokenDTO) SetTotalSupply(v string)`

SetTotalSupply sets TotalSupply field to given value.

### HasTotalSupply

`func (o *TokenDTO) HasTotalSupply() bool`

HasTotalSupply returns a boolean if a field has been set.

### SetTotalSupplyNil

`func (o *TokenDTO) SetTotalSupplyNil(b bool)`

 SetTotalSupplyNil sets the value for TotalSupply to be an explicit nil

### UnsetTotalSupply
`func (o *TokenDTO) UnsetTotalSupply()`

UnsetTotalSupply ensures that no value is present for TotalSupply, not even an explicit nil
### GetVolume

`func (o *TokenDTO) GetVolume() string`

GetVolume returns the Volume field if non-nil, zero value otherwise.

### GetVolumeOk

`func (o *TokenDTO) GetVolumeOk() (*string, bool)`

GetVolumeOk returns a tuple with the Volume field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolume

`func (o *TokenDTO) SetVolume(v string)`

SetVolume sets Volume field to given value.

### HasVolume

`func (o *TokenDTO) HasVolume() bool`

HasVolume returns a boolean if a field has been set.

### SetVolumeNil

`func (o *TokenDTO) SetVolumeNil(b bool)`

 SetVolumeNil sets the value for Volume to be an explicit nil

### UnsetVolume
`func (o *TokenDTO) UnsetVolume()`

UnsetVolume ensures that no value is present for Volume, not even an explicit nil
### GetVolumeUsd

`func (o *TokenDTO) GetVolumeUsd() string`

GetVolumeUsd returns the VolumeUsd field if non-nil, zero value otherwise.

### GetVolumeUsdOk

`func (o *TokenDTO) GetVolumeUsdOk() (*string, bool)`

GetVolumeUsdOk returns a tuple with the VolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeUsd

`func (o *TokenDTO) SetVolumeUsd(v string)`

SetVolumeUsd sets VolumeUsd field to given value.

### HasVolumeUsd

`func (o *TokenDTO) HasVolumeUsd() bool`

HasVolumeUsd returns a boolean if a field has been set.

### SetVolumeUsdNil

`func (o *TokenDTO) SetVolumeUsdNil(b bool)`

 SetVolumeUsdNil sets the value for VolumeUsd to be an explicit nil

### UnsetVolumeUsd
`func (o *TokenDTO) UnsetVolumeUsd()`

UnsetVolumeUsd ensures that no value is present for VolumeUsd, not even an explicit nil
### GetUntrackedVolumeUsd

`func (o *TokenDTO) GetUntrackedVolumeUsd() string`

GetUntrackedVolumeUsd returns the UntrackedVolumeUsd field if non-nil, zero value otherwise.

### GetUntrackedVolumeUsdOk

`func (o *TokenDTO) GetUntrackedVolumeUsdOk() (*string, bool)`

GetUntrackedVolumeUsdOk returns a tuple with the UntrackedVolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUntrackedVolumeUsd

`func (o *TokenDTO) SetUntrackedVolumeUsd(v string)`

SetUntrackedVolumeUsd sets UntrackedVolumeUsd field to given value.

### HasUntrackedVolumeUsd

`func (o *TokenDTO) HasUntrackedVolumeUsd() bool`

HasUntrackedVolumeUsd returns a boolean if a field has been set.

### SetUntrackedVolumeUsdNil

`func (o *TokenDTO) SetUntrackedVolumeUsdNil(b bool)`

 SetUntrackedVolumeUsdNil sets the value for UntrackedVolumeUsd to be an explicit nil

### UnsetUntrackedVolumeUsd
`func (o *TokenDTO) UnsetUntrackedVolumeUsd()`

UnsetUntrackedVolumeUsd ensures that no value is present for UntrackedVolumeUsd, not even an explicit nil
### GetTxCount

`func (o *TokenDTO) GetTxCount() string`

GetTxCount returns the TxCount field if non-nil, zero value otherwise.

### GetTxCountOk

`func (o *TokenDTO) GetTxCountOk() (*string, bool)`

GetTxCountOk returns a tuple with the TxCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTxCount

`func (o *TokenDTO) SetTxCount(v string)`

SetTxCount sets TxCount field to given value.

### HasTxCount

`func (o *TokenDTO) HasTxCount() bool`

HasTxCount returns a boolean if a field has been set.

### SetTxCountNil

`func (o *TokenDTO) SetTxCountNil(b bool)`

 SetTxCountNil sets the value for TxCount to be an explicit nil

### UnsetTxCount
`func (o *TokenDTO) UnsetTxCount()`

UnsetTxCount ensures that no value is present for TxCount, not even an explicit nil
### GetLiquidity

`func (o *TokenDTO) GetLiquidity() string`

GetLiquidity returns the Liquidity field if non-nil, zero value otherwise.

### GetLiquidityOk

`func (o *TokenDTO) GetLiquidityOk() (*string, bool)`

GetLiquidityOk returns a tuple with the Liquidity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLiquidity

`func (o *TokenDTO) SetLiquidity(v string)`

SetLiquidity sets Liquidity field to given value.

### HasLiquidity

`func (o *TokenDTO) HasLiquidity() bool`

HasLiquidity returns a boolean if a field has been set.

### SetLiquidityNil

`func (o *TokenDTO) SetLiquidityNil(b bool)`

 SetLiquidityNil sets the value for Liquidity to be an explicit nil

### UnsetLiquidity
`func (o *TokenDTO) UnsetLiquidity()`

UnsetLiquidity ensures that no value is present for Liquidity, not even an explicit nil
### GetDerivedEth

`func (o *TokenDTO) GetDerivedEth() string`

GetDerivedEth returns the DerivedEth field if non-nil, zero value otherwise.

### GetDerivedEthOk

`func (o *TokenDTO) GetDerivedEthOk() (*string, bool)`

GetDerivedEthOk returns a tuple with the DerivedEth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDerivedEth

`func (o *TokenDTO) SetDerivedEth(v string)`

SetDerivedEth sets DerivedEth field to given value.

### HasDerivedEth

`func (o *TokenDTO) HasDerivedEth() bool`

HasDerivedEth returns a boolean if a field has been set.

### SetDerivedEthNil

`func (o *TokenDTO) SetDerivedEthNil(b bool)`

 SetDerivedEthNil sets the value for DerivedEth to be an explicit nil

### UnsetDerivedEth
`func (o *TokenDTO) UnsetDerivedEth()`

UnsetDerivedEth ensures that no value is present for DerivedEth, not even an explicit nil
### GetWhitelistPairs

`func (o *TokenDTO) GetWhitelistPairs() []string`

GetWhitelistPairs returns the WhitelistPairs field if non-nil, zero value otherwise.

### GetWhitelistPairsOk

`func (o *TokenDTO) GetWhitelistPairsOk() (*[]string, bool)`

GetWhitelistPairsOk returns a tuple with the WhitelistPairs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWhitelistPairs

`func (o *TokenDTO) SetWhitelistPairs(v []string)`

SetWhitelistPairs sets WhitelistPairs field to given value.

### HasWhitelistPairs

`func (o *TokenDTO) HasWhitelistPairs() bool`

HasWhitelistPairs returns a boolean if a field has been set.

### SetWhitelistPairsNil

`func (o *TokenDTO) SetWhitelistPairsNil(b bool)`

 SetWhitelistPairsNil sets the value for WhitelistPairs to be an explicit nil

### UnsetWhitelistPairs
`func (o *TokenDTO) UnsetWhitelistPairs()`

UnsetWhitelistPairs ensures that no value is present for WhitelistPairs, not even an explicit nil
### GetVid

`func (o *TokenDTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *TokenDTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *TokenDTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *TokenDTO) HasVid() bool`

HasVid returns a boolean if a field has been set.

### GetTokenSymbol

`func (o *TokenDTO) GetTokenSymbol() string`

GetTokenSymbol returns the TokenSymbol field if non-nil, zero value otherwise.

### GetTokenSymbolOk

`func (o *TokenDTO) GetTokenSymbolOk() (*string, bool)`

GetTokenSymbolOk returns a tuple with the TokenSymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenSymbol

`func (o *TokenDTO) SetTokenSymbol(v string)`

SetTokenSymbol sets TokenSymbol field to given value.

### HasTokenSymbol

`func (o *TokenDTO) HasTokenSymbol() bool`

HasTokenSymbol returns a boolean if a field has been set.

### SetTokenSymbolNil

`func (o *TokenDTO) SetTokenSymbolNil(b bool)`

 SetTokenSymbolNil sets the value for TokenSymbol to be an explicit nil

### UnsetTokenSymbol
`func (o *TokenDTO) UnsetTokenSymbol()`

UnsetTokenSymbol ensures that no value is present for TokenSymbol, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


