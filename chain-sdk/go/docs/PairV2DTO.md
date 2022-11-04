# PairV2DTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 
**Id** | Pointer to **NullableString** | Pair contract address. | [optional] 
**Token0** | Pointer to **NullableString** | Reference to token0 as stored in pair contract. | [optional] 
**Token1** | Pointer to **NullableString** | Reference to token1 as stored in pair contract. | [optional] 
**Reserve0** | Pointer to **NullableString** | Reserve of token0. | [optional] 
**Reserve1** | Pointer to **NullableString** | Reserve of token1. | [optional] 
**TotalSupply** | Pointer to **NullableString** | Total supply of liquidity token distributed to LPs. | [optional] 
**ReserveEth** | Pointer to **NullableString** | Total liquidity in pair stored as an amount of ETH. | [optional] 
**ReserveUsd** | Pointer to **NullableString** | Total liquidity amount in pair stored as an amount of USD. | [optional] 
**TrackedReserveEth** | Pointer to **NullableString** | Total liquidity with only tracked amount. | [optional] 
**Token0Price** | Pointer to **NullableString** | Token0 per token1. | [optional] 
**Token1Price** | Pointer to **NullableString** | Token1 per token0. | [optional] 
**VolumeToken0** | Pointer to **NullableString** | Amount of token0 swapped on this pair. | [optional] 
**VolumeToken1** | Pointer to **NullableString** | Amount of token1 swapped on this pair. | [optional] 
**VolumeUsd** | Pointer to **NullableString** | Total amount swapped all time in this pair stored in USD (only tracked if USD liquidity is above minimum threshold). | [optional] 
**UntrackedVolumeUsd** | Pointer to **NullableString** | Total amount swapped all time in this pair stored in USD, no minimum liquidity threshold. | [optional] 
**TxCount** | Pointer to [**BigInteger**](BigInteger.md) |  | [optional] 
**CreatedAtTimestamp** | Pointer to **time.Time** | Timestamp contract was created. | [optional] 
**LiquidityProviderCount** | Pointer to **NullableString** | Total number of LPs. | [optional] 
**EvaluatedAsk** | Pointer to **float64** |  | [optional] [readonly] 

## Methods

### NewPairV2DTO

`func NewPairV2DTO() *PairV2DTO`

NewPairV2DTO instantiates a new PairV2DTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPairV2DTOWithDefaults

`func NewPairV2DTOWithDefaults() *PairV2DTO`

NewPairV2DTOWithDefaults instantiates a new PairV2DTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *PairV2DTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *PairV2DTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *PairV2DTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *PairV2DTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *PairV2DTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *PairV2DTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *PairV2DTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *PairV2DTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *PairV2DTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *PairV2DTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *PairV2DTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *PairV2DTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetVid

`func (o *PairV2DTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *PairV2DTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *PairV2DTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *PairV2DTO) HasVid() bool`

HasVid returns a boolean if a field has been set.

### GetId

`func (o *PairV2DTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *PairV2DTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *PairV2DTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *PairV2DTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *PairV2DTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *PairV2DTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetToken0

`func (o *PairV2DTO) GetToken0() string`

GetToken0 returns the Token0 field if non-nil, zero value otherwise.

### GetToken0Ok

`func (o *PairV2DTO) GetToken0Ok() (*string, bool)`

GetToken0Ok returns a tuple with the Token0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken0

`func (o *PairV2DTO) SetToken0(v string)`

SetToken0 sets Token0 field to given value.

### HasToken0

`func (o *PairV2DTO) HasToken0() bool`

HasToken0 returns a boolean if a field has been set.

### SetToken0Nil

`func (o *PairV2DTO) SetToken0Nil(b bool)`

 SetToken0Nil sets the value for Token0 to be an explicit nil

### UnsetToken0
`func (o *PairV2DTO) UnsetToken0()`

UnsetToken0 ensures that no value is present for Token0, not even an explicit nil
### GetToken1

`func (o *PairV2DTO) GetToken1() string`

GetToken1 returns the Token1 field if non-nil, zero value otherwise.

### GetToken1Ok

`func (o *PairV2DTO) GetToken1Ok() (*string, bool)`

GetToken1Ok returns a tuple with the Token1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken1

`func (o *PairV2DTO) SetToken1(v string)`

SetToken1 sets Token1 field to given value.

### HasToken1

`func (o *PairV2DTO) HasToken1() bool`

HasToken1 returns a boolean if a field has been set.

### SetToken1Nil

`func (o *PairV2DTO) SetToken1Nil(b bool)`

 SetToken1Nil sets the value for Token1 to be an explicit nil

### UnsetToken1
`func (o *PairV2DTO) UnsetToken1()`

UnsetToken1 ensures that no value is present for Token1, not even an explicit nil
### GetReserve0

`func (o *PairV2DTO) GetReserve0() string`

GetReserve0 returns the Reserve0 field if non-nil, zero value otherwise.

### GetReserve0Ok

`func (o *PairV2DTO) GetReserve0Ok() (*string, bool)`

GetReserve0Ok returns a tuple with the Reserve0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReserve0

`func (o *PairV2DTO) SetReserve0(v string)`

SetReserve0 sets Reserve0 field to given value.

### HasReserve0

`func (o *PairV2DTO) HasReserve0() bool`

HasReserve0 returns a boolean if a field has been set.

### SetReserve0Nil

`func (o *PairV2DTO) SetReserve0Nil(b bool)`

 SetReserve0Nil sets the value for Reserve0 to be an explicit nil

### UnsetReserve0
`func (o *PairV2DTO) UnsetReserve0()`

UnsetReserve0 ensures that no value is present for Reserve0, not even an explicit nil
### GetReserve1

`func (o *PairV2DTO) GetReserve1() string`

GetReserve1 returns the Reserve1 field if non-nil, zero value otherwise.

### GetReserve1Ok

`func (o *PairV2DTO) GetReserve1Ok() (*string, bool)`

GetReserve1Ok returns a tuple with the Reserve1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReserve1

`func (o *PairV2DTO) SetReserve1(v string)`

SetReserve1 sets Reserve1 field to given value.

### HasReserve1

`func (o *PairV2DTO) HasReserve1() bool`

HasReserve1 returns a boolean if a field has been set.

### SetReserve1Nil

`func (o *PairV2DTO) SetReserve1Nil(b bool)`

 SetReserve1Nil sets the value for Reserve1 to be an explicit nil

### UnsetReserve1
`func (o *PairV2DTO) UnsetReserve1()`

UnsetReserve1 ensures that no value is present for Reserve1, not even an explicit nil
### GetTotalSupply

`func (o *PairV2DTO) GetTotalSupply() string`

GetTotalSupply returns the TotalSupply field if non-nil, zero value otherwise.

### GetTotalSupplyOk

`func (o *PairV2DTO) GetTotalSupplyOk() (*string, bool)`

GetTotalSupplyOk returns a tuple with the TotalSupply field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalSupply

`func (o *PairV2DTO) SetTotalSupply(v string)`

SetTotalSupply sets TotalSupply field to given value.

### HasTotalSupply

`func (o *PairV2DTO) HasTotalSupply() bool`

HasTotalSupply returns a boolean if a field has been set.

### SetTotalSupplyNil

`func (o *PairV2DTO) SetTotalSupplyNil(b bool)`

 SetTotalSupplyNil sets the value for TotalSupply to be an explicit nil

### UnsetTotalSupply
`func (o *PairV2DTO) UnsetTotalSupply()`

UnsetTotalSupply ensures that no value is present for TotalSupply, not even an explicit nil
### GetReserveEth

`func (o *PairV2DTO) GetReserveEth() string`

GetReserveEth returns the ReserveEth field if non-nil, zero value otherwise.

### GetReserveEthOk

`func (o *PairV2DTO) GetReserveEthOk() (*string, bool)`

GetReserveEthOk returns a tuple with the ReserveEth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReserveEth

`func (o *PairV2DTO) SetReserveEth(v string)`

SetReserveEth sets ReserveEth field to given value.

### HasReserveEth

`func (o *PairV2DTO) HasReserveEth() bool`

HasReserveEth returns a boolean if a field has been set.

### SetReserveEthNil

`func (o *PairV2DTO) SetReserveEthNil(b bool)`

 SetReserveEthNil sets the value for ReserveEth to be an explicit nil

### UnsetReserveEth
`func (o *PairV2DTO) UnsetReserveEth()`

UnsetReserveEth ensures that no value is present for ReserveEth, not even an explicit nil
### GetReserveUsd

`func (o *PairV2DTO) GetReserveUsd() string`

GetReserveUsd returns the ReserveUsd field if non-nil, zero value otherwise.

### GetReserveUsdOk

`func (o *PairV2DTO) GetReserveUsdOk() (*string, bool)`

GetReserveUsdOk returns a tuple with the ReserveUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReserveUsd

`func (o *PairV2DTO) SetReserveUsd(v string)`

SetReserveUsd sets ReserveUsd field to given value.

### HasReserveUsd

`func (o *PairV2DTO) HasReserveUsd() bool`

HasReserveUsd returns a boolean if a field has been set.

### SetReserveUsdNil

`func (o *PairV2DTO) SetReserveUsdNil(b bool)`

 SetReserveUsdNil sets the value for ReserveUsd to be an explicit nil

### UnsetReserveUsd
`func (o *PairV2DTO) UnsetReserveUsd()`

UnsetReserveUsd ensures that no value is present for ReserveUsd, not even an explicit nil
### GetTrackedReserveEth

`func (o *PairV2DTO) GetTrackedReserveEth() string`

GetTrackedReserveEth returns the TrackedReserveEth field if non-nil, zero value otherwise.

### GetTrackedReserveEthOk

`func (o *PairV2DTO) GetTrackedReserveEthOk() (*string, bool)`

GetTrackedReserveEthOk returns a tuple with the TrackedReserveEth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTrackedReserveEth

`func (o *PairV2DTO) SetTrackedReserveEth(v string)`

SetTrackedReserveEth sets TrackedReserveEth field to given value.

### HasTrackedReserveEth

`func (o *PairV2DTO) HasTrackedReserveEth() bool`

HasTrackedReserveEth returns a boolean if a field has been set.

### SetTrackedReserveEthNil

`func (o *PairV2DTO) SetTrackedReserveEthNil(b bool)`

 SetTrackedReserveEthNil sets the value for TrackedReserveEth to be an explicit nil

### UnsetTrackedReserveEth
`func (o *PairV2DTO) UnsetTrackedReserveEth()`

UnsetTrackedReserveEth ensures that no value is present for TrackedReserveEth, not even an explicit nil
### GetToken0Price

`func (o *PairV2DTO) GetToken0Price() string`

GetToken0Price returns the Token0Price field if non-nil, zero value otherwise.

### GetToken0PriceOk

`func (o *PairV2DTO) GetToken0PriceOk() (*string, bool)`

GetToken0PriceOk returns a tuple with the Token0Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken0Price

`func (o *PairV2DTO) SetToken0Price(v string)`

SetToken0Price sets Token0Price field to given value.

### HasToken0Price

`func (o *PairV2DTO) HasToken0Price() bool`

HasToken0Price returns a boolean if a field has been set.

### SetToken0PriceNil

`func (o *PairV2DTO) SetToken0PriceNil(b bool)`

 SetToken0PriceNil sets the value for Token0Price to be an explicit nil

### UnsetToken0Price
`func (o *PairV2DTO) UnsetToken0Price()`

UnsetToken0Price ensures that no value is present for Token0Price, not even an explicit nil
### GetToken1Price

`func (o *PairV2DTO) GetToken1Price() string`

GetToken1Price returns the Token1Price field if non-nil, zero value otherwise.

### GetToken1PriceOk

`func (o *PairV2DTO) GetToken1PriceOk() (*string, bool)`

GetToken1PriceOk returns a tuple with the Token1Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken1Price

`func (o *PairV2DTO) SetToken1Price(v string)`

SetToken1Price sets Token1Price field to given value.

### HasToken1Price

`func (o *PairV2DTO) HasToken1Price() bool`

HasToken1Price returns a boolean if a field has been set.

### SetToken1PriceNil

`func (o *PairV2DTO) SetToken1PriceNil(b bool)`

 SetToken1PriceNil sets the value for Token1Price to be an explicit nil

### UnsetToken1Price
`func (o *PairV2DTO) UnsetToken1Price()`

UnsetToken1Price ensures that no value is present for Token1Price, not even an explicit nil
### GetVolumeToken0

`func (o *PairV2DTO) GetVolumeToken0() string`

GetVolumeToken0 returns the VolumeToken0 field if non-nil, zero value otherwise.

### GetVolumeToken0Ok

`func (o *PairV2DTO) GetVolumeToken0Ok() (*string, bool)`

GetVolumeToken0Ok returns a tuple with the VolumeToken0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeToken0

`func (o *PairV2DTO) SetVolumeToken0(v string)`

SetVolumeToken0 sets VolumeToken0 field to given value.

### HasVolumeToken0

`func (o *PairV2DTO) HasVolumeToken0() bool`

HasVolumeToken0 returns a boolean if a field has been set.

### SetVolumeToken0Nil

`func (o *PairV2DTO) SetVolumeToken0Nil(b bool)`

 SetVolumeToken0Nil sets the value for VolumeToken0 to be an explicit nil

### UnsetVolumeToken0
`func (o *PairV2DTO) UnsetVolumeToken0()`

UnsetVolumeToken0 ensures that no value is present for VolumeToken0, not even an explicit nil
### GetVolumeToken1

`func (o *PairV2DTO) GetVolumeToken1() string`

GetVolumeToken1 returns the VolumeToken1 field if non-nil, zero value otherwise.

### GetVolumeToken1Ok

`func (o *PairV2DTO) GetVolumeToken1Ok() (*string, bool)`

GetVolumeToken1Ok returns a tuple with the VolumeToken1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeToken1

`func (o *PairV2DTO) SetVolumeToken1(v string)`

SetVolumeToken1 sets VolumeToken1 field to given value.

### HasVolumeToken1

`func (o *PairV2DTO) HasVolumeToken1() bool`

HasVolumeToken1 returns a boolean if a field has been set.

### SetVolumeToken1Nil

`func (o *PairV2DTO) SetVolumeToken1Nil(b bool)`

 SetVolumeToken1Nil sets the value for VolumeToken1 to be an explicit nil

### UnsetVolumeToken1
`func (o *PairV2DTO) UnsetVolumeToken1()`

UnsetVolumeToken1 ensures that no value is present for VolumeToken1, not even an explicit nil
### GetVolumeUsd

`func (o *PairV2DTO) GetVolumeUsd() string`

GetVolumeUsd returns the VolumeUsd field if non-nil, zero value otherwise.

### GetVolumeUsdOk

`func (o *PairV2DTO) GetVolumeUsdOk() (*string, bool)`

GetVolumeUsdOk returns a tuple with the VolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeUsd

`func (o *PairV2DTO) SetVolumeUsd(v string)`

SetVolumeUsd sets VolumeUsd field to given value.

### HasVolumeUsd

`func (o *PairV2DTO) HasVolumeUsd() bool`

HasVolumeUsd returns a boolean if a field has been set.

### SetVolumeUsdNil

`func (o *PairV2DTO) SetVolumeUsdNil(b bool)`

 SetVolumeUsdNil sets the value for VolumeUsd to be an explicit nil

### UnsetVolumeUsd
`func (o *PairV2DTO) UnsetVolumeUsd()`

UnsetVolumeUsd ensures that no value is present for VolumeUsd, not even an explicit nil
### GetUntrackedVolumeUsd

`func (o *PairV2DTO) GetUntrackedVolumeUsd() string`

GetUntrackedVolumeUsd returns the UntrackedVolumeUsd field if non-nil, zero value otherwise.

### GetUntrackedVolumeUsdOk

`func (o *PairV2DTO) GetUntrackedVolumeUsdOk() (*string, bool)`

GetUntrackedVolumeUsdOk returns a tuple with the UntrackedVolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUntrackedVolumeUsd

`func (o *PairV2DTO) SetUntrackedVolumeUsd(v string)`

SetUntrackedVolumeUsd sets UntrackedVolumeUsd field to given value.

### HasUntrackedVolumeUsd

`func (o *PairV2DTO) HasUntrackedVolumeUsd() bool`

HasUntrackedVolumeUsd returns a boolean if a field has been set.

### SetUntrackedVolumeUsdNil

`func (o *PairV2DTO) SetUntrackedVolumeUsdNil(b bool)`

 SetUntrackedVolumeUsdNil sets the value for UntrackedVolumeUsd to be an explicit nil

### UnsetUntrackedVolumeUsd
`func (o *PairV2DTO) UnsetUntrackedVolumeUsd()`

UnsetUntrackedVolumeUsd ensures that no value is present for UntrackedVolumeUsd, not even an explicit nil
### GetTxCount

`func (o *PairV2DTO) GetTxCount() BigInteger`

GetTxCount returns the TxCount field if non-nil, zero value otherwise.

### GetTxCountOk

`func (o *PairV2DTO) GetTxCountOk() (*BigInteger, bool)`

GetTxCountOk returns a tuple with the TxCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTxCount

`func (o *PairV2DTO) SetTxCount(v BigInteger)`

SetTxCount sets TxCount field to given value.

### HasTxCount

`func (o *PairV2DTO) HasTxCount() bool`

HasTxCount returns a boolean if a field has been set.

### GetCreatedAtTimestamp

`func (o *PairV2DTO) GetCreatedAtTimestamp() time.Time`

GetCreatedAtTimestamp returns the CreatedAtTimestamp field if non-nil, zero value otherwise.

### GetCreatedAtTimestampOk

`func (o *PairV2DTO) GetCreatedAtTimestampOk() (*time.Time, bool)`

GetCreatedAtTimestampOk returns a tuple with the CreatedAtTimestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAtTimestamp

`func (o *PairV2DTO) SetCreatedAtTimestamp(v time.Time)`

SetCreatedAtTimestamp sets CreatedAtTimestamp field to given value.

### HasCreatedAtTimestamp

`func (o *PairV2DTO) HasCreatedAtTimestamp() bool`

HasCreatedAtTimestamp returns a boolean if a field has been set.

### GetLiquidityProviderCount

`func (o *PairV2DTO) GetLiquidityProviderCount() string`

GetLiquidityProviderCount returns the LiquidityProviderCount field if non-nil, zero value otherwise.

### GetLiquidityProviderCountOk

`func (o *PairV2DTO) GetLiquidityProviderCountOk() (*string, bool)`

GetLiquidityProviderCountOk returns a tuple with the LiquidityProviderCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLiquidityProviderCount

`func (o *PairV2DTO) SetLiquidityProviderCount(v string)`

SetLiquidityProviderCount sets LiquidityProviderCount field to given value.

### HasLiquidityProviderCount

`func (o *PairV2DTO) HasLiquidityProviderCount() bool`

HasLiquidityProviderCount returns a boolean if a field has been set.

### SetLiquidityProviderCountNil

`func (o *PairV2DTO) SetLiquidityProviderCountNil(b bool)`

 SetLiquidityProviderCountNil sets the value for LiquidityProviderCount to be an explicit nil

### UnsetLiquidityProviderCount
`func (o *PairV2DTO) UnsetLiquidityProviderCount()`

UnsetLiquidityProviderCount ensures that no value is present for LiquidityProviderCount, not even an explicit nil
### GetEvaluatedAsk

`func (o *PairV2DTO) GetEvaluatedAsk() float64`

GetEvaluatedAsk returns the EvaluatedAsk field if non-nil, zero value otherwise.

### GetEvaluatedAskOk

`func (o *PairV2DTO) GetEvaluatedAskOk() (*float64, bool)`

GetEvaluatedAskOk returns a tuple with the EvaluatedAsk field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvaluatedAsk

`func (o *PairV2DTO) SetEvaluatedAsk(v float64)`

SetEvaluatedAsk sets EvaluatedAsk field to given value.

### HasEvaluatedAsk

`func (o *PairV2DTO) HasEvaluatedAsk() bool`

HasEvaluatedAsk returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


