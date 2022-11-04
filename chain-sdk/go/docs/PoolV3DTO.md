# PoolV3DTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 
**Id** | Pointer to **NullableString** | Pool address. | [optional] 
**CreatedAtTimestamp** | Pointer to **time.Time** | Creation time. | [optional] 
**Token0** | Pointer to **NullableString** | Reference to token0 as stored in pool contract. | [optional] 
**Token1** | Pointer to **NullableString** | Reference to token1 as stored in pool contract. | [optional] 
**FeeTier** | Pointer to [**BigInteger**](BigInteger.md) |  | [optional] 
**Liquidity** | Pointer to [**BigInteger**](BigInteger.md) |  | [optional] 
**SqrtPrice** | Pointer to [**BigInteger**](BigInteger.md) |  | [optional] 
**FeeGrowthGlobal0x128** | Pointer to [**BigInteger**](BigInteger.md) |  | [optional] 
**FeeGrowthGlobal1x128** | Pointer to [**BigInteger**](BigInteger.md) |  | [optional] 
**Token0Price** | Pointer to **NullableString** | Token0 per token1. | [optional] 
**Token1Price** | Pointer to **NullableString** | Token1 per token0. | [optional] 
**Tick** | Pointer to [**BigInteger**](BigInteger.md) |  | [optional] 
**ObservationIndex** | Pointer to [**BigInteger**](BigInteger.md) |  | [optional] 
**VolumeToken0** | Pointer to **NullableString** | All time token0 swapped. | [optional] 
**VolumeToken1** | Pointer to **NullableString** | All time token1 swapped. | [optional] 
**VolumeUsd** | Pointer to **NullableString** | All time USD swapped. | [optional] 
**UntrackedVolumeUsd** | Pointer to **NullableString** | All time USD swapped, unfiltered for unreliable USD pools. | [optional] 
**FeesUsd** | Pointer to **NullableString** | Fees in USD. | [optional] 
**TxCount** | Pointer to [**BigInteger**](BigInteger.md) |  | [optional] 
**CollectedFeesToken0** | Pointer to **NullableString** | All time fees collected token0. | [optional] 
**CollectedFeesToken1** | Pointer to **NullableString** | All time fees collected token1. | [optional] 
**CollectedFeesUsd** | Pointer to **NullableString** | All time fees collected derived USD. | [optional] 
**TotalValueLockedToken0** | Pointer to **NullableString** | Total token 0 across all ticks. | [optional] 
**TotalValueLockedToken1** | Pointer to **NullableString** |  | [optional] 
**TotalValueLockedEth** | Pointer to **NullableString** | Total token 1 across all ticks. | [optional] 
**TotalValueLockedUsd** | Pointer to **NullableString** | Total value locked USD. | [optional] 
**TotalValueLockedUsdUntracked** | Pointer to **NullableString** | Total value locked derived ETH. | [optional] 
**LiquidityProviderCount** | Pointer to **NullableString** | Liquidity providers count, used to detect new exchanges. | [optional] 
**EvaluatedAsk** | Pointer to **float64** |  | [optional] [readonly] 

## Methods

### NewPoolV3DTO

`func NewPoolV3DTO() *PoolV3DTO`

NewPoolV3DTO instantiates a new PoolV3DTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPoolV3DTOWithDefaults

`func NewPoolV3DTOWithDefaults() *PoolV3DTO`

NewPoolV3DTOWithDefaults instantiates a new PoolV3DTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *PoolV3DTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *PoolV3DTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *PoolV3DTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *PoolV3DTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *PoolV3DTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *PoolV3DTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *PoolV3DTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *PoolV3DTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *PoolV3DTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *PoolV3DTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *PoolV3DTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *PoolV3DTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetVid

`func (o *PoolV3DTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *PoolV3DTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *PoolV3DTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *PoolV3DTO) HasVid() bool`

HasVid returns a boolean if a field has been set.

### GetId

`func (o *PoolV3DTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *PoolV3DTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *PoolV3DTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *PoolV3DTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *PoolV3DTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *PoolV3DTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetCreatedAtTimestamp

`func (o *PoolV3DTO) GetCreatedAtTimestamp() time.Time`

GetCreatedAtTimestamp returns the CreatedAtTimestamp field if non-nil, zero value otherwise.

### GetCreatedAtTimestampOk

`func (o *PoolV3DTO) GetCreatedAtTimestampOk() (*time.Time, bool)`

GetCreatedAtTimestampOk returns a tuple with the CreatedAtTimestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAtTimestamp

`func (o *PoolV3DTO) SetCreatedAtTimestamp(v time.Time)`

SetCreatedAtTimestamp sets CreatedAtTimestamp field to given value.

### HasCreatedAtTimestamp

`func (o *PoolV3DTO) HasCreatedAtTimestamp() bool`

HasCreatedAtTimestamp returns a boolean if a field has been set.

### GetToken0

`func (o *PoolV3DTO) GetToken0() string`

GetToken0 returns the Token0 field if non-nil, zero value otherwise.

### GetToken0Ok

`func (o *PoolV3DTO) GetToken0Ok() (*string, bool)`

GetToken0Ok returns a tuple with the Token0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken0

`func (o *PoolV3DTO) SetToken0(v string)`

SetToken0 sets Token0 field to given value.

### HasToken0

`func (o *PoolV3DTO) HasToken0() bool`

HasToken0 returns a boolean if a field has been set.

### SetToken0Nil

`func (o *PoolV3DTO) SetToken0Nil(b bool)`

 SetToken0Nil sets the value for Token0 to be an explicit nil

### UnsetToken0
`func (o *PoolV3DTO) UnsetToken0()`

UnsetToken0 ensures that no value is present for Token0, not even an explicit nil
### GetToken1

`func (o *PoolV3DTO) GetToken1() string`

GetToken1 returns the Token1 field if non-nil, zero value otherwise.

### GetToken1Ok

`func (o *PoolV3DTO) GetToken1Ok() (*string, bool)`

GetToken1Ok returns a tuple with the Token1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken1

`func (o *PoolV3DTO) SetToken1(v string)`

SetToken1 sets Token1 field to given value.

### HasToken1

`func (o *PoolV3DTO) HasToken1() bool`

HasToken1 returns a boolean if a field has been set.

### SetToken1Nil

`func (o *PoolV3DTO) SetToken1Nil(b bool)`

 SetToken1Nil sets the value for Token1 to be an explicit nil

### UnsetToken1
`func (o *PoolV3DTO) UnsetToken1()`

UnsetToken1 ensures that no value is present for Token1, not even an explicit nil
### GetFeeTier

`func (o *PoolV3DTO) GetFeeTier() BigInteger`

GetFeeTier returns the FeeTier field if non-nil, zero value otherwise.

### GetFeeTierOk

`func (o *PoolV3DTO) GetFeeTierOk() (*BigInteger, bool)`

GetFeeTierOk returns a tuple with the FeeTier field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeeTier

`func (o *PoolV3DTO) SetFeeTier(v BigInteger)`

SetFeeTier sets FeeTier field to given value.

### HasFeeTier

`func (o *PoolV3DTO) HasFeeTier() bool`

HasFeeTier returns a boolean if a field has been set.

### GetLiquidity

`func (o *PoolV3DTO) GetLiquidity() BigInteger`

GetLiquidity returns the Liquidity field if non-nil, zero value otherwise.

### GetLiquidityOk

`func (o *PoolV3DTO) GetLiquidityOk() (*BigInteger, bool)`

GetLiquidityOk returns a tuple with the Liquidity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLiquidity

`func (o *PoolV3DTO) SetLiquidity(v BigInteger)`

SetLiquidity sets Liquidity field to given value.

### HasLiquidity

`func (o *PoolV3DTO) HasLiquidity() bool`

HasLiquidity returns a boolean if a field has been set.

### GetSqrtPrice

`func (o *PoolV3DTO) GetSqrtPrice() BigInteger`

GetSqrtPrice returns the SqrtPrice field if non-nil, zero value otherwise.

### GetSqrtPriceOk

`func (o *PoolV3DTO) GetSqrtPriceOk() (*BigInteger, bool)`

GetSqrtPriceOk returns a tuple with the SqrtPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSqrtPrice

`func (o *PoolV3DTO) SetSqrtPrice(v BigInteger)`

SetSqrtPrice sets SqrtPrice field to given value.

### HasSqrtPrice

`func (o *PoolV3DTO) HasSqrtPrice() bool`

HasSqrtPrice returns a boolean if a field has been set.

### GetFeeGrowthGlobal0x128

`func (o *PoolV3DTO) GetFeeGrowthGlobal0x128() BigInteger`

GetFeeGrowthGlobal0x128 returns the FeeGrowthGlobal0x128 field if non-nil, zero value otherwise.

### GetFeeGrowthGlobal0x128Ok

`func (o *PoolV3DTO) GetFeeGrowthGlobal0x128Ok() (*BigInteger, bool)`

GetFeeGrowthGlobal0x128Ok returns a tuple with the FeeGrowthGlobal0x128 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeeGrowthGlobal0x128

`func (o *PoolV3DTO) SetFeeGrowthGlobal0x128(v BigInteger)`

SetFeeGrowthGlobal0x128 sets FeeGrowthGlobal0x128 field to given value.

### HasFeeGrowthGlobal0x128

`func (o *PoolV3DTO) HasFeeGrowthGlobal0x128() bool`

HasFeeGrowthGlobal0x128 returns a boolean if a field has been set.

### GetFeeGrowthGlobal1x128

`func (o *PoolV3DTO) GetFeeGrowthGlobal1x128() BigInteger`

GetFeeGrowthGlobal1x128 returns the FeeGrowthGlobal1x128 field if non-nil, zero value otherwise.

### GetFeeGrowthGlobal1x128Ok

`func (o *PoolV3DTO) GetFeeGrowthGlobal1x128Ok() (*BigInteger, bool)`

GetFeeGrowthGlobal1x128Ok returns a tuple with the FeeGrowthGlobal1x128 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeeGrowthGlobal1x128

`func (o *PoolV3DTO) SetFeeGrowthGlobal1x128(v BigInteger)`

SetFeeGrowthGlobal1x128 sets FeeGrowthGlobal1x128 field to given value.

### HasFeeGrowthGlobal1x128

`func (o *PoolV3DTO) HasFeeGrowthGlobal1x128() bool`

HasFeeGrowthGlobal1x128 returns a boolean if a field has been set.

### GetToken0Price

`func (o *PoolV3DTO) GetToken0Price() string`

GetToken0Price returns the Token0Price field if non-nil, zero value otherwise.

### GetToken0PriceOk

`func (o *PoolV3DTO) GetToken0PriceOk() (*string, bool)`

GetToken0PriceOk returns a tuple with the Token0Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken0Price

`func (o *PoolV3DTO) SetToken0Price(v string)`

SetToken0Price sets Token0Price field to given value.

### HasToken0Price

`func (o *PoolV3DTO) HasToken0Price() bool`

HasToken0Price returns a boolean if a field has been set.

### SetToken0PriceNil

`func (o *PoolV3DTO) SetToken0PriceNil(b bool)`

 SetToken0PriceNil sets the value for Token0Price to be an explicit nil

### UnsetToken0Price
`func (o *PoolV3DTO) UnsetToken0Price()`

UnsetToken0Price ensures that no value is present for Token0Price, not even an explicit nil
### GetToken1Price

`func (o *PoolV3DTO) GetToken1Price() string`

GetToken1Price returns the Token1Price field if non-nil, zero value otherwise.

### GetToken1PriceOk

`func (o *PoolV3DTO) GetToken1PriceOk() (*string, bool)`

GetToken1PriceOk returns a tuple with the Token1Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken1Price

`func (o *PoolV3DTO) SetToken1Price(v string)`

SetToken1Price sets Token1Price field to given value.

### HasToken1Price

`func (o *PoolV3DTO) HasToken1Price() bool`

HasToken1Price returns a boolean if a field has been set.

### SetToken1PriceNil

`func (o *PoolV3DTO) SetToken1PriceNil(b bool)`

 SetToken1PriceNil sets the value for Token1Price to be an explicit nil

### UnsetToken1Price
`func (o *PoolV3DTO) UnsetToken1Price()`

UnsetToken1Price ensures that no value is present for Token1Price, not even an explicit nil
### GetTick

`func (o *PoolV3DTO) GetTick() BigInteger`

GetTick returns the Tick field if non-nil, zero value otherwise.

### GetTickOk

`func (o *PoolV3DTO) GetTickOk() (*BigInteger, bool)`

GetTickOk returns a tuple with the Tick field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTick

`func (o *PoolV3DTO) SetTick(v BigInteger)`

SetTick sets Tick field to given value.

### HasTick

`func (o *PoolV3DTO) HasTick() bool`

HasTick returns a boolean if a field has been set.

### GetObservationIndex

`func (o *PoolV3DTO) GetObservationIndex() BigInteger`

GetObservationIndex returns the ObservationIndex field if non-nil, zero value otherwise.

### GetObservationIndexOk

`func (o *PoolV3DTO) GetObservationIndexOk() (*BigInteger, bool)`

GetObservationIndexOk returns a tuple with the ObservationIndex field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetObservationIndex

`func (o *PoolV3DTO) SetObservationIndex(v BigInteger)`

SetObservationIndex sets ObservationIndex field to given value.

### HasObservationIndex

`func (o *PoolV3DTO) HasObservationIndex() bool`

HasObservationIndex returns a boolean if a field has been set.

### GetVolumeToken0

`func (o *PoolV3DTO) GetVolumeToken0() string`

GetVolumeToken0 returns the VolumeToken0 field if non-nil, zero value otherwise.

### GetVolumeToken0Ok

`func (o *PoolV3DTO) GetVolumeToken0Ok() (*string, bool)`

GetVolumeToken0Ok returns a tuple with the VolumeToken0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeToken0

`func (o *PoolV3DTO) SetVolumeToken0(v string)`

SetVolumeToken0 sets VolumeToken0 field to given value.

### HasVolumeToken0

`func (o *PoolV3DTO) HasVolumeToken0() bool`

HasVolumeToken0 returns a boolean if a field has been set.

### SetVolumeToken0Nil

`func (o *PoolV3DTO) SetVolumeToken0Nil(b bool)`

 SetVolumeToken0Nil sets the value for VolumeToken0 to be an explicit nil

### UnsetVolumeToken0
`func (o *PoolV3DTO) UnsetVolumeToken0()`

UnsetVolumeToken0 ensures that no value is present for VolumeToken0, not even an explicit nil
### GetVolumeToken1

`func (o *PoolV3DTO) GetVolumeToken1() string`

GetVolumeToken1 returns the VolumeToken1 field if non-nil, zero value otherwise.

### GetVolumeToken1Ok

`func (o *PoolV3DTO) GetVolumeToken1Ok() (*string, bool)`

GetVolumeToken1Ok returns a tuple with the VolumeToken1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeToken1

`func (o *PoolV3DTO) SetVolumeToken1(v string)`

SetVolumeToken1 sets VolumeToken1 field to given value.

### HasVolumeToken1

`func (o *PoolV3DTO) HasVolumeToken1() bool`

HasVolumeToken1 returns a boolean if a field has been set.

### SetVolumeToken1Nil

`func (o *PoolV3DTO) SetVolumeToken1Nil(b bool)`

 SetVolumeToken1Nil sets the value for VolumeToken1 to be an explicit nil

### UnsetVolumeToken1
`func (o *PoolV3DTO) UnsetVolumeToken1()`

UnsetVolumeToken1 ensures that no value is present for VolumeToken1, not even an explicit nil
### GetVolumeUsd

`func (o *PoolV3DTO) GetVolumeUsd() string`

GetVolumeUsd returns the VolumeUsd field if non-nil, zero value otherwise.

### GetVolumeUsdOk

`func (o *PoolV3DTO) GetVolumeUsdOk() (*string, bool)`

GetVolumeUsdOk returns a tuple with the VolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeUsd

`func (o *PoolV3DTO) SetVolumeUsd(v string)`

SetVolumeUsd sets VolumeUsd field to given value.

### HasVolumeUsd

`func (o *PoolV3DTO) HasVolumeUsd() bool`

HasVolumeUsd returns a boolean if a field has been set.

### SetVolumeUsdNil

`func (o *PoolV3DTO) SetVolumeUsdNil(b bool)`

 SetVolumeUsdNil sets the value for VolumeUsd to be an explicit nil

### UnsetVolumeUsd
`func (o *PoolV3DTO) UnsetVolumeUsd()`

UnsetVolumeUsd ensures that no value is present for VolumeUsd, not even an explicit nil
### GetUntrackedVolumeUsd

`func (o *PoolV3DTO) GetUntrackedVolumeUsd() string`

GetUntrackedVolumeUsd returns the UntrackedVolumeUsd field if non-nil, zero value otherwise.

### GetUntrackedVolumeUsdOk

`func (o *PoolV3DTO) GetUntrackedVolumeUsdOk() (*string, bool)`

GetUntrackedVolumeUsdOk returns a tuple with the UntrackedVolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUntrackedVolumeUsd

`func (o *PoolV3DTO) SetUntrackedVolumeUsd(v string)`

SetUntrackedVolumeUsd sets UntrackedVolumeUsd field to given value.

### HasUntrackedVolumeUsd

`func (o *PoolV3DTO) HasUntrackedVolumeUsd() bool`

HasUntrackedVolumeUsd returns a boolean if a field has been set.

### SetUntrackedVolumeUsdNil

`func (o *PoolV3DTO) SetUntrackedVolumeUsdNil(b bool)`

 SetUntrackedVolumeUsdNil sets the value for UntrackedVolumeUsd to be an explicit nil

### UnsetUntrackedVolumeUsd
`func (o *PoolV3DTO) UnsetUntrackedVolumeUsd()`

UnsetUntrackedVolumeUsd ensures that no value is present for UntrackedVolumeUsd, not even an explicit nil
### GetFeesUsd

`func (o *PoolV3DTO) GetFeesUsd() string`

GetFeesUsd returns the FeesUsd field if non-nil, zero value otherwise.

### GetFeesUsdOk

`func (o *PoolV3DTO) GetFeesUsdOk() (*string, bool)`

GetFeesUsdOk returns a tuple with the FeesUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeesUsd

`func (o *PoolV3DTO) SetFeesUsd(v string)`

SetFeesUsd sets FeesUsd field to given value.

### HasFeesUsd

`func (o *PoolV3DTO) HasFeesUsd() bool`

HasFeesUsd returns a boolean if a field has been set.

### SetFeesUsdNil

`func (o *PoolV3DTO) SetFeesUsdNil(b bool)`

 SetFeesUsdNil sets the value for FeesUsd to be an explicit nil

### UnsetFeesUsd
`func (o *PoolV3DTO) UnsetFeesUsd()`

UnsetFeesUsd ensures that no value is present for FeesUsd, not even an explicit nil
### GetTxCount

`func (o *PoolV3DTO) GetTxCount() BigInteger`

GetTxCount returns the TxCount field if non-nil, zero value otherwise.

### GetTxCountOk

`func (o *PoolV3DTO) GetTxCountOk() (*BigInteger, bool)`

GetTxCountOk returns a tuple with the TxCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTxCount

`func (o *PoolV3DTO) SetTxCount(v BigInteger)`

SetTxCount sets TxCount field to given value.

### HasTxCount

`func (o *PoolV3DTO) HasTxCount() bool`

HasTxCount returns a boolean if a field has been set.

### GetCollectedFeesToken0

`func (o *PoolV3DTO) GetCollectedFeesToken0() string`

GetCollectedFeesToken0 returns the CollectedFeesToken0 field if non-nil, zero value otherwise.

### GetCollectedFeesToken0Ok

`func (o *PoolV3DTO) GetCollectedFeesToken0Ok() (*string, bool)`

GetCollectedFeesToken0Ok returns a tuple with the CollectedFeesToken0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCollectedFeesToken0

`func (o *PoolV3DTO) SetCollectedFeesToken0(v string)`

SetCollectedFeesToken0 sets CollectedFeesToken0 field to given value.

### HasCollectedFeesToken0

`func (o *PoolV3DTO) HasCollectedFeesToken0() bool`

HasCollectedFeesToken0 returns a boolean if a field has been set.

### SetCollectedFeesToken0Nil

`func (o *PoolV3DTO) SetCollectedFeesToken0Nil(b bool)`

 SetCollectedFeesToken0Nil sets the value for CollectedFeesToken0 to be an explicit nil

### UnsetCollectedFeesToken0
`func (o *PoolV3DTO) UnsetCollectedFeesToken0()`

UnsetCollectedFeesToken0 ensures that no value is present for CollectedFeesToken0, not even an explicit nil
### GetCollectedFeesToken1

`func (o *PoolV3DTO) GetCollectedFeesToken1() string`

GetCollectedFeesToken1 returns the CollectedFeesToken1 field if non-nil, zero value otherwise.

### GetCollectedFeesToken1Ok

`func (o *PoolV3DTO) GetCollectedFeesToken1Ok() (*string, bool)`

GetCollectedFeesToken1Ok returns a tuple with the CollectedFeesToken1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCollectedFeesToken1

`func (o *PoolV3DTO) SetCollectedFeesToken1(v string)`

SetCollectedFeesToken1 sets CollectedFeesToken1 field to given value.

### HasCollectedFeesToken1

`func (o *PoolV3DTO) HasCollectedFeesToken1() bool`

HasCollectedFeesToken1 returns a boolean if a field has been set.

### SetCollectedFeesToken1Nil

`func (o *PoolV3DTO) SetCollectedFeesToken1Nil(b bool)`

 SetCollectedFeesToken1Nil sets the value for CollectedFeesToken1 to be an explicit nil

### UnsetCollectedFeesToken1
`func (o *PoolV3DTO) UnsetCollectedFeesToken1()`

UnsetCollectedFeesToken1 ensures that no value is present for CollectedFeesToken1, not even an explicit nil
### GetCollectedFeesUsd

`func (o *PoolV3DTO) GetCollectedFeesUsd() string`

GetCollectedFeesUsd returns the CollectedFeesUsd field if non-nil, zero value otherwise.

### GetCollectedFeesUsdOk

`func (o *PoolV3DTO) GetCollectedFeesUsdOk() (*string, bool)`

GetCollectedFeesUsdOk returns a tuple with the CollectedFeesUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCollectedFeesUsd

`func (o *PoolV3DTO) SetCollectedFeesUsd(v string)`

SetCollectedFeesUsd sets CollectedFeesUsd field to given value.

### HasCollectedFeesUsd

`func (o *PoolV3DTO) HasCollectedFeesUsd() bool`

HasCollectedFeesUsd returns a boolean if a field has been set.

### SetCollectedFeesUsdNil

`func (o *PoolV3DTO) SetCollectedFeesUsdNil(b bool)`

 SetCollectedFeesUsdNil sets the value for CollectedFeesUsd to be an explicit nil

### UnsetCollectedFeesUsd
`func (o *PoolV3DTO) UnsetCollectedFeesUsd()`

UnsetCollectedFeesUsd ensures that no value is present for CollectedFeesUsd, not even an explicit nil
### GetTotalValueLockedToken0

`func (o *PoolV3DTO) GetTotalValueLockedToken0() string`

GetTotalValueLockedToken0 returns the TotalValueLockedToken0 field if non-nil, zero value otherwise.

### GetTotalValueLockedToken0Ok

`func (o *PoolV3DTO) GetTotalValueLockedToken0Ok() (*string, bool)`

GetTotalValueLockedToken0Ok returns a tuple with the TotalValueLockedToken0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalValueLockedToken0

`func (o *PoolV3DTO) SetTotalValueLockedToken0(v string)`

SetTotalValueLockedToken0 sets TotalValueLockedToken0 field to given value.

### HasTotalValueLockedToken0

`func (o *PoolV3DTO) HasTotalValueLockedToken0() bool`

HasTotalValueLockedToken0 returns a boolean if a field has been set.

### SetTotalValueLockedToken0Nil

`func (o *PoolV3DTO) SetTotalValueLockedToken0Nil(b bool)`

 SetTotalValueLockedToken0Nil sets the value for TotalValueLockedToken0 to be an explicit nil

### UnsetTotalValueLockedToken0
`func (o *PoolV3DTO) UnsetTotalValueLockedToken0()`

UnsetTotalValueLockedToken0 ensures that no value is present for TotalValueLockedToken0, not even an explicit nil
### GetTotalValueLockedToken1

`func (o *PoolV3DTO) GetTotalValueLockedToken1() string`

GetTotalValueLockedToken1 returns the TotalValueLockedToken1 field if non-nil, zero value otherwise.

### GetTotalValueLockedToken1Ok

`func (o *PoolV3DTO) GetTotalValueLockedToken1Ok() (*string, bool)`

GetTotalValueLockedToken1Ok returns a tuple with the TotalValueLockedToken1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalValueLockedToken1

`func (o *PoolV3DTO) SetTotalValueLockedToken1(v string)`

SetTotalValueLockedToken1 sets TotalValueLockedToken1 field to given value.

### HasTotalValueLockedToken1

`func (o *PoolV3DTO) HasTotalValueLockedToken1() bool`

HasTotalValueLockedToken1 returns a boolean if a field has been set.

### SetTotalValueLockedToken1Nil

`func (o *PoolV3DTO) SetTotalValueLockedToken1Nil(b bool)`

 SetTotalValueLockedToken1Nil sets the value for TotalValueLockedToken1 to be an explicit nil

### UnsetTotalValueLockedToken1
`func (o *PoolV3DTO) UnsetTotalValueLockedToken1()`

UnsetTotalValueLockedToken1 ensures that no value is present for TotalValueLockedToken1, not even an explicit nil
### GetTotalValueLockedEth

`func (o *PoolV3DTO) GetTotalValueLockedEth() string`

GetTotalValueLockedEth returns the TotalValueLockedEth field if non-nil, zero value otherwise.

### GetTotalValueLockedEthOk

`func (o *PoolV3DTO) GetTotalValueLockedEthOk() (*string, bool)`

GetTotalValueLockedEthOk returns a tuple with the TotalValueLockedEth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalValueLockedEth

`func (o *PoolV3DTO) SetTotalValueLockedEth(v string)`

SetTotalValueLockedEth sets TotalValueLockedEth field to given value.

### HasTotalValueLockedEth

`func (o *PoolV3DTO) HasTotalValueLockedEth() bool`

HasTotalValueLockedEth returns a boolean if a field has been set.

### SetTotalValueLockedEthNil

`func (o *PoolV3DTO) SetTotalValueLockedEthNil(b bool)`

 SetTotalValueLockedEthNil sets the value for TotalValueLockedEth to be an explicit nil

### UnsetTotalValueLockedEth
`func (o *PoolV3DTO) UnsetTotalValueLockedEth()`

UnsetTotalValueLockedEth ensures that no value is present for TotalValueLockedEth, not even an explicit nil
### GetTotalValueLockedUsd

`func (o *PoolV3DTO) GetTotalValueLockedUsd() string`

GetTotalValueLockedUsd returns the TotalValueLockedUsd field if non-nil, zero value otherwise.

### GetTotalValueLockedUsdOk

`func (o *PoolV3DTO) GetTotalValueLockedUsdOk() (*string, bool)`

GetTotalValueLockedUsdOk returns a tuple with the TotalValueLockedUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalValueLockedUsd

`func (o *PoolV3DTO) SetTotalValueLockedUsd(v string)`

SetTotalValueLockedUsd sets TotalValueLockedUsd field to given value.

### HasTotalValueLockedUsd

`func (o *PoolV3DTO) HasTotalValueLockedUsd() bool`

HasTotalValueLockedUsd returns a boolean if a field has been set.

### SetTotalValueLockedUsdNil

`func (o *PoolV3DTO) SetTotalValueLockedUsdNil(b bool)`

 SetTotalValueLockedUsdNil sets the value for TotalValueLockedUsd to be an explicit nil

### UnsetTotalValueLockedUsd
`func (o *PoolV3DTO) UnsetTotalValueLockedUsd()`

UnsetTotalValueLockedUsd ensures that no value is present for TotalValueLockedUsd, not even an explicit nil
### GetTotalValueLockedUsdUntracked

`func (o *PoolV3DTO) GetTotalValueLockedUsdUntracked() string`

GetTotalValueLockedUsdUntracked returns the TotalValueLockedUsdUntracked field if non-nil, zero value otherwise.

### GetTotalValueLockedUsdUntrackedOk

`func (o *PoolV3DTO) GetTotalValueLockedUsdUntrackedOk() (*string, bool)`

GetTotalValueLockedUsdUntrackedOk returns a tuple with the TotalValueLockedUsdUntracked field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalValueLockedUsdUntracked

`func (o *PoolV3DTO) SetTotalValueLockedUsdUntracked(v string)`

SetTotalValueLockedUsdUntracked sets TotalValueLockedUsdUntracked field to given value.

### HasTotalValueLockedUsdUntracked

`func (o *PoolV3DTO) HasTotalValueLockedUsdUntracked() bool`

HasTotalValueLockedUsdUntracked returns a boolean if a field has been set.

### SetTotalValueLockedUsdUntrackedNil

`func (o *PoolV3DTO) SetTotalValueLockedUsdUntrackedNil(b bool)`

 SetTotalValueLockedUsdUntrackedNil sets the value for TotalValueLockedUsdUntracked to be an explicit nil

### UnsetTotalValueLockedUsdUntracked
`func (o *PoolV3DTO) UnsetTotalValueLockedUsdUntracked()`

UnsetTotalValueLockedUsdUntracked ensures that no value is present for TotalValueLockedUsdUntracked, not even an explicit nil
### GetLiquidityProviderCount

`func (o *PoolV3DTO) GetLiquidityProviderCount() string`

GetLiquidityProviderCount returns the LiquidityProviderCount field if non-nil, zero value otherwise.

### GetLiquidityProviderCountOk

`func (o *PoolV3DTO) GetLiquidityProviderCountOk() (*string, bool)`

GetLiquidityProviderCountOk returns a tuple with the LiquidityProviderCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLiquidityProviderCount

`func (o *PoolV3DTO) SetLiquidityProviderCount(v string)`

SetLiquidityProviderCount sets LiquidityProviderCount field to given value.

### HasLiquidityProviderCount

`func (o *PoolV3DTO) HasLiquidityProviderCount() bool`

HasLiquidityProviderCount returns a boolean if a field has been set.

### SetLiquidityProviderCountNil

`func (o *PoolV3DTO) SetLiquidityProviderCountNil(b bool)`

 SetLiquidityProviderCountNil sets the value for LiquidityProviderCount to be an explicit nil

### UnsetLiquidityProviderCount
`func (o *PoolV3DTO) UnsetLiquidityProviderCount()`

UnsetLiquidityProviderCount ensures that no value is present for LiquidityProviderCount, not even an explicit nil
### GetEvaluatedAsk

`func (o *PoolV3DTO) GetEvaluatedAsk() float64`

GetEvaluatedAsk returns the EvaluatedAsk field if non-nil, zero value otherwise.

### GetEvaluatedAskOk

`func (o *PoolV3DTO) GetEvaluatedAskOk() (*float64, bool)`

GetEvaluatedAskOk returns a tuple with the EvaluatedAsk field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvaluatedAsk

`func (o *PoolV3DTO) SetEvaluatedAsk(v float64)`

SetEvaluatedAsk sets EvaluatedAsk field to given value.

### HasEvaluatedAsk

`func (o *PoolV3DTO) HasEvaluatedAsk() bool`

HasEvaluatedAsk returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


