# PairDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** |  | [optional] 
**Id** | Pointer to **NullableString** |  | [optional] 
**Factory** | Pointer to **NullableString** |  | [optional] 
**Name** | Pointer to **NullableString** |  | [optional] 
**Token0** | Pointer to **NullableString** |  | [optional] 
**Token1** | Pointer to **NullableString** |  | [optional] 
**Reserve0** | Pointer to **NullableString** |  | [optional] 
**Reserve1** | Pointer to **NullableString** |  | [optional] 
**TotalSupply** | Pointer to **NullableString** |  | [optional] 
**ReserveEth** | Pointer to **NullableString** |  | [optional] 
**ReserveUsd** | Pointer to **NullableString** |  | [optional] 
**TrackedReserveEth** | Pointer to **NullableString** |  | [optional] 
**Token0Price** | Pointer to **NullableString** |  | [optional] 
**Token1Price** | Pointer to **NullableString** |  | [optional] 
**VolumeToken0** | Pointer to **NullableString** |  | [optional] 
**VolumeToken1** | Pointer to **NullableString** |  | [optional] 
**VolumeUsd** | Pointer to **NullableString** |  | [optional] 
**UntrackedVolumeUsd** | Pointer to **NullableString** |  | [optional] 
**TxCount** | Pointer to **NullableString** |  | [optional] 
**LiquidityProviderCount** | Pointer to **NullableString** |  | [optional] 
**Timestamp** | Pointer to **NullableString** |  | [optional] 
**Block** | Pointer to **NullableString** |  | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 
**EvaluatedAsk** | Pointer to **float64** |  | [optional] [readonly] 

## Methods

### NewPairDTO

`func NewPairDTO() *PairDTO`

NewPairDTO instantiates a new PairDTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPairDTOWithDefaults

`func NewPairDTOWithDefaults() *PairDTO`

NewPairDTOWithDefaults instantiates a new PairDTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *PairDTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *PairDTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *PairDTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *PairDTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *PairDTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *PairDTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *PairDTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *PairDTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *PairDTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *PairDTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *PairDTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *PairDTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *PairDTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *PairDTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *PairDTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *PairDTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *PairDTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *PairDTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetFactory

`func (o *PairDTO) GetFactory() string`

GetFactory returns the Factory field if non-nil, zero value otherwise.

### GetFactoryOk

`func (o *PairDTO) GetFactoryOk() (*string, bool)`

GetFactoryOk returns a tuple with the Factory field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFactory

`func (o *PairDTO) SetFactory(v string)`

SetFactory sets Factory field to given value.

### HasFactory

`func (o *PairDTO) HasFactory() bool`

HasFactory returns a boolean if a field has been set.

### SetFactoryNil

`func (o *PairDTO) SetFactoryNil(b bool)`

 SetFactoryNil sets the value for Factory to be an explicit nil

### UnsetFactory
`func (o *PairDTO) UnsetFactory()`

UnsetFactory ensures that no value is present for Factory, not even an explicit nil
### GetName

`func (o *PairDTO) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *PairDTO) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *PairDTO) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *PairDTO) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *PairDTO) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *PairDTO) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetToken0

`func (o *PairDTO) GetToken0() string`

GetToken0 returns the Token0 field if non-nil, zero value otherwise.

### GetToken0Ok

`func (o *PairDTO) GetToken0Ok() (*string, bool)`

GetToken0Ok returns a tuple with the Token0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken0

`func (o *PairDTO) SetToken0(v string)`

SetToken0 sets Token0 field to given value.

### HasToken0

`func (o *PairDTO) HasToken0() bool`

HasToken0 returns a boolean if a field has been set.

### SetToken0Nil

`func (o *PairDTO) SetToken0Nil(b bool)`

 SetToken0Nil sets the value for Token0 to be an explicit nil

### UnsetToken0
`func (o *PairDTO) UnsetToken0()`

UnsetToken0 ensures that no value is present for Token0, not even an explicit nil
### GetToken1

`func (o *PairDTO) GetToken1() string`

GetToken1 returns the Token1 field if non-nil, zero value otherwise.

### GetToken1Ok

`func (o *PairDTO) GetToken1Ok() (*string, bool)`

GetToken1Ok returns a tuple with the Token1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken1

`func (o *PairDTO) SetToken1(v string)`

SetToken1 sets Token1 field to given value.

### HasToken1

`func (o *PairDTO) HasToken1() bool`

HasToken1 returns a boolean if a field has been set.

### SetToken1Nil

`func (o *PairDTO) SetToken1Nil(b bool)`

 SetToken1Nil sets the value for Token1 to be an explicit nil

### UnsetToken1
`func (o *PairDTO) UnsetToken1()`

UnsetToken1 ensures that no value is present for Token1, not even an explicit nil
### GetReserve0

`func (o *PairDTO) GetReserve0() string`

GetReserve0 returns the Reserve0 field if non-nil, zero value otherwise.

### GetReserve0Ok

`func (o *PairDTO) GetReserve0Ok() (*string, bool)`

GetReserve0Ok returns a tuple with the Reserve0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReserve0

`func (o *PairDTO) SetReserve0(v string)`

SetReserve0 sets Reserve0 field to given value.

### HasReserve0

`func (o *PairDTO) HasReserve0() bool`

HasReserve0 returns a boolean if a field has been set.

### SetReserve0Nil

`func (o *PairDTO) SetReserve0Nil(b bool)`

 SetReserve0Nil sets the value for Reserve0 to be an explicit nil

### UnsetReserve0
`func (o *PairDTO) UnsetReserve0()`

UnsetReserve0 ensures that no value is present for Reserve0, not even an explicit nil
### GetReserve1

`func (o *PairDTO) GetReserve1() string`

GetReserve1 returns the Reserve1 field if non-nil, zero value otherwise.

### GetReserve1Ok

`func (o *PairDTO) GetReserve1Ok() (*string, bool)`

GetReserve1Ok returns a tuple with the Reserve1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReserve1

`func (o *PairDTO) SetReserve1(v string)`

SetReserve1 sets Reserve1 field to given value.

### HasReserve1

`func (o *PairDTO) HasReserve1() bool`

HasReserve1 returns a boolean if a field has been set.

### SetReserve1Nil

`func (o *PairDTO) SetReserve1Nil(b bool)`

 SetReserve1Nil sets the value for Reserve1 to be an explicit nil

### UnsetReserve1
`func (o *PairDTO) UnsetReserve1()`

UnsetReserve1 ensures that no value is present for Reserve1, not even an explicit nil
### GetTotalSupply

`func (o *PairDTO) GetTotalSupply() string`

GetTotalSupply returns the TotalSupply field if non-nil, zero value otherwise.

### GetTotalSupplyOk

`func (o *PairDTO) GetTotalSupplyOk() (*string, bool)`

GetTotalSupplyOk returns a tuple with the TotalSupply field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalSupply

`func (o *PairDTO) SetTotalSupply(v string)`

SetTotalSupply sets TotalSupply field to given value.

### HasTotalSupply

`func (o *PairDTO) HasTotalSupply() bool`

HasTotalSupply returns a boolean if a field has been set.

### SetTotalSupplyNil

`func (o *PairDTO) SetTotalSupplyNil(b bool)`

 SetTotalSupplyNil sets the value for TotalSupply to be an explicit nil

### UnsetTotalSupply
`func (o *PairDTO) UnsetTotalSupply()`

UnsetTotalSupply ensures that no value is present for TotalSupply, not even an explicit nil
### GetReserveEth

`func (o *PairDTO) GetReserveEth() string`

GetReserveEth returns the ReserveEth field if non-nil, zero value otherwise.

### GetReserveEthOk

`func (o *PairDTO) GetReserveEthOk() (*string, bool)`

GetReserveEthOk returns a tuple with the ReserveEth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReserveEth

`func (o *PairDTO) SetReserveEth(v string)`

SetReserveEth sets ReserveEth field to given value.

### HasReserveEth

`func (o *PairDTO) HasReserveEth() bool`

HasReserveEth returns a boolean if a field has been set.

### SetReserveEthNil

`func (o *PairDTO) SetReserveEthNil(b bool)`

 SetReserveEthNil sets the value for ReserveEth to be an explicit nil

### UnsetReserveEth
`func (o *PairDTO) UnsetReserveEth()`

UnsetReserveEth ensures that no value is present for ReserveEth, not even an explicit nil
### GetReserveUsd

`func (o *PairDTO) GetReserveUsd() string`

GetReserveUsd returns the ReserveUsd field if non-nil, zero value otherwise.

### GetReserveUsdOk

`func (o *PairDTO) GetReserveUsdOk() (*string, bool)`

GetReserveUsdOk returns a tuple with the ReserveUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReserveUsd

`func (o *PairDTO) SetReserveUsd(v string)`

SetReserveUsd sets ReserveUsd field to given value.

### HasReserveUsd

`func (o *PairDTO) HasReserveUsd() bool`

HasReserveUsd returns a boolean if a field has been set.

### SetReserveUsdNil

`func (o *PairDTO) SetReserveUsdNil(b bool)`

 SetReserveUsdNil sets the value for ReserveUsd to be an explicit nil

### UnsetReserveUsd
`func (o *PairDTO) UnsetReserveUsd()`

UnsetReserveUsd ensures that no value is present for ReserveUsd, not even an explicit nil
### GetTrackedReserveEth

`func (o *PairDTO) GetTrackedReserveEth() string`

GetTrackedReserveEth returns the TrackedReserveEth field if non-nil, zero value otherwise.

### GetTrackedReserveEthOk

`func (o *PairDTO) GetTrackedReserveEthOk() (*string, bool)`

GetTrackedReserveEthOk returns a tuple with the TrackedReserveEth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTrackedReserveEth

`func (o *PairDTO) SetTrackedReserveEth(v string)`

SetTrackedReserveEth sets TrackedReserveEth field to given value.

### HasTrackedReserveEth

`func (o *PairDTO) HasTrackedReserveEth() bool`

HasTrackedReserveEth returns a boolean if a field has been set.

### SetTrackedReserveEthNil

`func (o *PairDTO) SetTrackedReserveEthNil(b bool)`

 SetTrackedReserveEthNil sets the value for TrackedReserveEth to be an explicit nil

### UnsetTrackedReserveEth
`func (o *PairDTO) UnsetTrackedReserveEth()`

UnsetTrackedReserveEth ensures that no value is present for TrackedReserveEth, not even an explicit nil
### GetToken0Price

`func (o *PairDTO) GetToken0Price() string`

GetToken0Price returns the Token0Price field if non-nil, zero value otherwise.

### GetToken0PriceOk

`func (o *PairDTO) GetToken0PriceOk() (*string, bool)`

GetToken0PriceOk returns a tuple with the Token0Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken0Price

`func (o *PairDTO) SetToken0Price(v string)`

SetToken0Price sets Token0Price field to given value.

### HasToken0Price

`func (o *PairDTO) HasToken0Price() bool`

HasToken0Price returns a boolean if a field has been set.

### SetToken0PriceNil

`func (o *PairDTO) SetToken0PriceNil(b bool)`

 SetToken0PriceNil sets the value for Token0Price to be an explicit nil

### UnsetToken0Price
`func (o *PairDTO) UnsetToken0Price()`

UnsetToken0Price ensures that no value is present for Token0Price, not even an explicit nil
### GetToken1Price

`func (o *PairDTO) GetToken1Price() string`

GetToken1Price returns the Token1Price field if non-nil, zero value otherwise.

### GetToken1PriceOk

`func (o *PairDTO) GetToken1PriceOk() (*string, bool)`

GetToken1PriceOk returns a tuple with the Token1Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken1Price

`func (o *PairDTO) SetToken1Price(v string)`

SetToken1Price sets Token1Price field to given value.

### HasToken1Price

`func (o *PairDTO) HasToken1Price() bool`

HasToken1Price returns a boolean if a field has been set.

### SetToken1PriceNil

`func (o *PairDTO) SetToken1PriceNil(b bool)`

 SetToken1PriceNil sets the value for Token1Price to be an explicit nil

### UnsetToken1Price
`func (o *PairDTO) UnsetToken1Price()`

UnsetToken1Price ensures that no value is present for Token1Price, not even an explicit nil
### GetVolumeToken0

`func (o *PairDTO) GetVolumeToken0() string`

GetVolumeToken0 returns the VolumeToken0 field if non-nil, zero value otherwise.

### GetVolumeToken0Ok

`func (o *PairDTO) GetVolumeToken0Ok() (*string, bool)`

GetVolumeToken0Ok returns a tuple with the VolumeToken0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeToken0

`func (o *PairDTO) SetVolumeToken0(v string)`

SetVolumeToken0 sets VolumeToken0 field to given value.

### HasVolumeToken0

`func (o *PairDTO) HasVolumeToken0() bool`

HasVolumeToken0 returns a boolean if a field has been set.

### SetVolumeToken0Nil

`func (o *PairDTO) SetVolumeToken0Nil(b bool)`

 SetVolumeToken0Nil sets the value for VolumeToken0 to be an explicit nil

### UnsetVolumeToken0
`func (o *PairDTO) UnsetVolumeToken0()`

UnsetVolumeToken0 ensures that no value is present for VolumeToken0, not even an explicit nil
### GetVolumeToken1

`func (o *PairDTO) GetVolumeToken1() string`

GetVolumeToken1 returns the VolumeToken1 field if non-nil, zero value otherwise.

### GetVolumeToken1Ok

`func (o *PairDTO) GetVolumeToken1Ok() (*string, bool)`

GetVolumeToken1Ok returns a tuple with the VolumeToken1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeToken1

`func (o *PairDTO) SetVolumeToken1(v string)`

SetVolumeToken1 sets VolumeToken1 field to given value.

### HasVolumeToken1

`func (o *PairDTO) HasVolumeToken1() bool`

HasVolumeToken1 returns a boolean if a field has been set.

### SetVolumeToken1Nil

`func (o *PairDTO) SetVolumeToken1Nil(b bool)`

 SetVolumeToken1Nil sets the value for VolumeToken1 to be an explicit nil

### UnsetVolumeToken1
`func (o *PairDTO) UnsetVolumeToken1()`

UnsetVolumeToken1 ensures that no value is present for VolumeToken1, not even an explicit nil
### GetVolumeUsd

`func (o *PairDTO) GetVolumeUsd() string`

GetVolumeUsd returns the VolumeUsd field if non-nil, zero value otherwise.

### GetVolumeUsdOk

`func (o *PairDTO) GetVolumeUsdOk() (*string, bool)`

GetVolumeUsdOk returns a tuple with the VolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeUsd

`func (o *PairDTO) SetVolumeUsd(v string)`

SetVolumeUsd sets VolumeUsd field to given value.

### HasVolumeUsd

`func (o *PairDTO) HasVolumeUsd() bool`

HasVolumeUsd returns a boolean if a field has been set.

### SetVolumeUsdNil

`func (o *PairDTO) SetVolumeUsdNil(b bool)`

 SetVolumeUsdNil sets the value for VolumeUsd to be an explicit nil

### UnsetVolumeUsd
`func (o *PairDTO) UnsetVolumeUsd()`

UnsetVolumeUsd ensures that no value is present for VolumeUsd, not even an explicit nil
### GetUntrackedVolumeUsd

`func (o *PairDTO) GetUntrackedVolumeUsd() string`

GetUntrackedVolumeUsd returns the UntrackedVolumeUsd field if non-nil, zero value otherwise.

### GetUntrackedVolumeUsdOk

`func (o *PairDTO) GetUntrackedVolumeUsdOk() (*string, bool)`

GetUntrackedVolumeUsdOk returns a tuple with the UntrackedVolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUntrackedVolumeUsd

`func (o *PairDTO) SetUntrackedVolumeUsd(v string)`

SetUntrackedVolumeUsd sets UntrackedVolumeUsd field to given value.

### HasUntrackedVolumeUsd

`func (o *PairDTO) HasUntrackedVolumeUsd() bool`

HasUntrackedVolumeUsd returns a boolean if a field has been set.

### SetUntrackedVolumeUsdNil

`func (o *PairDTO) SetUntrackedVolumeUsdNil(b bool)`

 SetUntrackedVolumeUsdNil sets the value for UntrackedVolumeUsd to be an explicit nil

### UnsetUntrackedVolumeUsd
`func (o *PairDTO) UnsetUntrackedVolumeUsd()`

UnsetUntrackedVolumeUsd ensures that no value is present for UntrackedVolumeUsd, not even an explicit nil
### GetTxCount

`func (o *PairDTO) GetTxCount() string`

GetTxCount returns the TxCount field if non-nil, zero value otherwise.

### GetTxCountOk

`func (o *PairDTO) GetTxCountOk() (*string, bool)`

GetTxCountOk returns a tuple with the TxCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTxCount

`func (o *PairDTO) SetTxCount(v string)`

SetTxCount sets TxCount field to given value.

### HasTxCount

`func (o *PairDTO) HasTxCount() bool`

HasTxCount returns a boolean if a field has been set.

### SetTxCountNil

`func (o *PairDTO) SetTxCountNil(b bool)`

 SetTxCountNil sets the value for TxCount to be an explicit nil

### UnsetTxCount
`func (o *PairDTO) UnsetTxCount()`

UnsetTxCount ensures that no value is present for TxCount, not even an explicit nil
### GetLiquidityProviderCount

`func (o *PairDTO) GetLiquidityProviderCount() string`

GetLiquidityProviderCount returns the LiquidityProviderCount field if non-nil, zero value otherwise.

### GetLiquidityProviderCountOk

`func (o *PairDTO) GetLiquidityProviderCountOk() (*string, bool)`

GetLiquidityProviderCountOk returns a tuple with the LiquidityProviderCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLiquidityProviderCount

`func (o *PairDTO) SetLiquidityProviderCount(v string)`

SetLiquidityProviderCount sets LiquidityProviderCount field to given value.

### HasLiquidityProviderCount

`func (o *PairDTO) HasLiquidityProviderCount() bool`

HasLiquidityProviderCount returns a boolean if a field has been set.

### SetLiquidityProviderCountNil

`func (o *PairDTO) SetLiquidityProviderCountNil(b bool)`

 SetLiquidityProviderCountNil sets the value for LiquidityProviderCount to be an explicit nil

### UnsetLiquidityProviderCount
`func (o *PairDTO) UnsetLiquidityProviderCount()`

UnsetLiquidityProviderCount ensures that no value is present for LiquidityProviderCount, not even an explicit nil
### GetTimestamp

`func (o *PairDTO) GetTimestamp() string`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *PairDTO) GetTimestampOk() (*string, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *PairDTO) SetTimestamp(v string)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *PairDTO) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### SetTimestampNil

`func (o *PairDTO) SetTimestampNil(b bool)`

 SetTimestampNil sets the value for Timestamp to be an explicit nil

### UnsetTimestamp
`func (o *PairDTO) UnsetTimestamp()`

UnsetTimestamp ensures that no value is present for Timestamp, not even an explicit nil
### GetBlock

`func (o *PairDTO) GetBlock() string`

GetBlock returns the Block field if non-nil, zero value otherwise.

### GetBlockOk

`func (o *PairDTO) GetBlockOk() (*string, bool)`

GetBlockOk returns a tuple with the Block field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlock

`func (o *PairDTO) SetBlock(v string)`

SetBlock sets Block field to given value.

### HasBlock

`func (o *PairDTO) HasBlock() bool`

HasBlock returns a boolean if a field has been set.

### SetBlockNil

`func (o *PairDTO) SetBlockNil(b bool)`

 SetBlockNil sets the value for Block to be an explicit nil

### UnsetBlock
`func (o *PairDTO) UnsetBlock()`

UnsetBlock ensures that no value is present for Block, not even an explicit nil
### GetVid

`func (o *PairDTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *PairDTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *PairDTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *PairDTO) HasVid() bool`

HasVid returns a boolean if a field has been set.

### GetEvaluatedAsk

`func (o *PairDTO) GetEvaluatedAsk() float64`

GetEvaluatedAsk returns the EvaluatedAsk field if non-nil, zero value otherwise.

### GetEvaluatedAskOk

`func (o *PairDTO) GetEvaluatedAskOk() (*float64, bool)`

GetEvaluatedAskOk returns a tuple with the EvaluatedAsk field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvaluatedAsk

`func (o *PairDTO) SetEvaluatedAsk(v float64)`

SetEvaluatedAsk sets EvaluatedAsk field to given value.

### HasEvaluatedAsk

`func (o *PairDTO) HasEvaluatedAsk() bool`

HasEvaluatedAsk returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


