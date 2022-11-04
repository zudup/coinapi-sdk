# TickV3DTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 
**Id** | Pointer to **NullableString** | Identifier, format: &lt;pool address&gt;#&lt;tick index&gt; | [optional] 
**PoolAddress** | Pointer to **NullableString** | Pool address. | [optional] 
**TickIdx** | Pointer to [**BigInteger**](BigInteger.md) |  | [optional] 
**Pool** | Pointer to **NullableString** | Pool address. | [optional] 
**LiquidityGross** | Pointer to [**BigInteger**](BigInteger.md) |  | [optional] 
**LiquidityNet** | Pointer to [**BigInteger**](BigInteger.md) |  | [optional] 
**Price0** | Pointer to **NullableString** | Calculated price of token0 of tick within this pool - constant. | [optional] 
**Price1** | Pointer to **NullableString** | Calculated price of token1 of tick within this pool - constant. | [optional] 
**VolumeToken0** | Pointer to **NullableString** | Lifetime volume of token0 with this tick in range. | [optional] 
**VolumeToken1** | Pointer to **NullableString** | Lifetime volume of token1 with this tick in range. | [optional] 
**VolumeUsd** | Pointer to **NullableString** | Lifetime volume in derived USD with this tick in range. | [optional] 
**UntrackedVolumeUsd** | Pointer to **NullableString** | Lifetime volume in untracked USD with this tick in range. | [optional] 
**FeesUsd** | Pointer to **NullableString** | Fees in USD. | [optional] 
**CollectedFeesToken0** | Pointer to **NullableString** | All time collected fees in token0. | [optional] 
**CollectedFeesToken1** | Pointer to **NullableString** | All time collected fees in token1. | [optional] 
**CollectedFeesUsd** | Pointer to **NullableString** | All time collected fees in USD. | [optional] 
**CreatedAtTimestamp** | Pointer to **time.Time** | Created time. | [optional] 
**LiquidityProviderCount** | Pointer to [**BigInteger**](BigInteger.md) |  | [optional] 
**FeeGrowthOutside0x128** | Pointer to [**BigInteger**](BigInteger.md) |  | [optional] 
**FeeGrowthOutside1x128** | Pointer to [**BigInteger**](BigInteger.md) |  | [optional] 

## Methods

### NewTickV3DTO

`func NewTickV3DTO() *TickV3DTO`

NewTickV3DTO instantiates a new TickV3DTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTickV3DTOWithDefaults

`func NewTickV3DTOWithDefaults() *TickV3DTO`

NewTickV3DTOWithDefaults instantiates a new TickV3DTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *TickV3DTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *TickV3DTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *TickV3DTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *TickV3DTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *TickV3DTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *TickV3DTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *TickV3DTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *TickV3DTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *TickV3DTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *TickV3DTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *TickV3DTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *TickV3DTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetVid

`func (o *TickV3DTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *TickV3DTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *TickV3DTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *TickV3DTO) HasVid() bool`

HasVid returns a boolean if a field has been set.

### GetId

`func (o *TickV3DTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *TickV3DTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *TickV3DTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *TickV3DTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *TickV3DTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *TickV3DTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetPoolAddress

`func (o *TickV3DTO) GetPoolAddress() string`

GetPoolAddress returns the PoolAddress field if non-nil, zero value otherwise.

### GetPoolAddressOk

`func (o *TickV3DTO) GetPoolAddressOk() (*string, bool)`

GetPoolAddressOk returns a tuple with the PoolAddress field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPoolAddress

`func (o *TickV3DTO) SetPoolAddress(v string)`

SetPoolAddress sets PoolAddress field to given value.

### HasPoolAddress

`func (o *TickV3DTO) HasPoolAddress() bool`

HasPoolAddress returns a boolean if a field has been set.

### SetPoolAddressNil

`func (o *TickV3DTO) SetPoolAddressNil(b bool)`

 SetPoolAddressNil sets the value for PoolAddress to be an explicit nil

### UnsetPoolAddress
`func (o *TickV3DTO) UnsetPoolAddress()`

UnsetPoolAddress ensures that no value is present for PoolAddress, not even an explicit nil
### GetTickIdx

`func (o *TickV3DTO) GetTickIdx() BigInteger`

GetTickIdx returns the TickIdx field if non-nil, zero value otherwise.

### GetTickIdxOk

`func (o *TickV3DTO) GetTickIdxOk() (*BigInteger, bool)`

GetTickIdxOk returns a tuple with the TickIdx field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTickIdx

`func (o *TickV3DTO) SetTickIdx(v BigInteger)`

SetTickIdx sets TickIdx field to given value.

### HasTickIdx

`func (o *TickV3DTO) HasTickIdx() bool`

HasTickIdx returns a boolean if a field has been set.

### GetPool

`func (o *TickV3DTO) GetPool() string`

GetPool returns the Pool field if non-nil, zero value otherwise.

### GetPoolOk

`func (o *TickV3DTO) GetPoolOk() (*string, bool)`

GetPoolOk returns a tuple with the Pool field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPool

`func (o *TickV3DTO) SetPool(v string)`

SetPool sets Pool field to given value.

### HasPool

`func (o *TickV3DTO) HasPool() bool`

HasPool returns a boolean if a field has been set.

### SetPoolNil

`func (o *TickV3DTO) SetPoolNil(b bool)`

 SetPoolNil sets the value for Pool to be an explicit nil

### UnsetPool
`func (o *TickV3DTO) UnsetPool()`

UnsetPool ensures that no value is present for Pool, not even an explicit nil
### GetLiquidityGross

`func (o *TickV3DTO) GetLiquidityGross() BigInteger`

GetLiquidityGross returns the LiquidityGross field if non-nil, zero value otherwise.

### GetLiquidityGrossOk

`func (o *TickV3DTO) GetLiquidityGrossOk() (*BigInteger, bool)`

GetLiquidityGrossOk returns a tuple with the LiquidityGross field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLiquidityGross

`func (o *TickV3DTO) SetLiquidityGross(v BigInteger)`

SetLiquidityGross sets LiquidityGross field to given value.

### HasLiquidityGross

`func (o *TickV3DTO) HasLiquidityGross() bool`

HasLiquidityGross returns a boolean if a field has been set.

### GetLiquidityNet

`func (o *TickV3DTO) GetLiquidityNet() BigInteger`

GetLiquidityNet returns the LiquidityNet field if non-nil, zero value otherwise.

### GetLiquidityNetOk

`func (o *TickV3DTO) GetLiquidityNetOk() (*BigInteger, bool)`

GetLiquidityNetOk returns a tuple with the LiquidityNet field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLiquidityNet

`func (o *TickV3DTO) SetLiquidityNet(v BigInteger)`

SetLiquidityNet sets LiquidityNet field to given value.

### HasLiquidityNet

`func (o *TickV3DTO) HasLiquidityNet() bool`

HasLiquidityNet returns a boolean if a field has been set.

### GetPrice0

`func (o *TickV3DTO) GetPrice0() string`

GetPrice0 returns the Price0 field if non-nil, zero value otherwise.

### GetPrice0Ok

`func (o *TickV3DTO) GetPrice0Ok() (*string, bool)`

GetPrice0Ok returns a tuple with the Price0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice0

`func (o *TickV3DTO) SetPrice0(v string)`

SetPrice0 sets Price0 field to given value.

### HasPrice0

`func (o *TickV3DTO) HasPrice0() bool`

HasPrice0 returns a boolean if a field has been set.

### SetPrice0Nil

`func (o *TickV3DTO) SetPrice0Nil(b bool)`

 SetPrice0Nil sets the value for Price0 to be an explicit nil

### UnsetPrice0
`func (o *TickV3DTO) UnsetPrice0()`

UnsetPrice0 ensures that no value is present for Price0, not even an explicit nil
### GetPrice1

`func (o *TickV3DTO) GetPrice1() string`

GetPrice1 returns the Price1 field if non-nil, zero value otherwise.

### GetPrice1Ok

`func (o *TickV3DTO) GetPrice1Ok() (*string, bool)`

GetPrice1Ok returns a tuple with the Price1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice1

`func (o *TickV3DTO) SetPrice1(v string)`

SetPrice1 sets Price1 field to given value.

### HasPrice1

`func (o *TickV3DTO) HasPrice1() bool`

HasPrice1 returns a boolean if a field has been set.

### SetPrice1Nil

`func (o *TickV3DTO) SetPrice1Nil(b bool)`

 SetPrice1Nil sets the value for Price1 to be an explicit nil

### UnsetPrice1
`func (o *TickV3DTO) UnsetPrice1()`

UnsetPrice1 ensures that no value is present for Price1, not even an explicit nil
### GetVolumeToken0

`func (o *TickV3DTO) GetVolumeToken0() string`

GetVolumeToken0 returns the VolumeToken0 field if non-nil, zero value otherwise.

### GetVolumeToken0Ok

`func (o *TickV3DTO) GetVolumeToken0Ok() (*string, bool)`

GetVolumeToken0Ok returns a tuple with the VolumeToken0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeToken0

`func (o *TickV3DTO) SetVolumeToken0(v string)`

SetVolumeToken0 sets VolumeToken0 field to given value.

### HasVolumeToken0

`func (o *TickV3DTO) HasVolumeToken0() bool`

HasVolumeToken0 returns a boolean if a field has been set.

### SetVolumeToken0Nil

`func (o *TickV3DTO) SetVolumeToken0Nil(b bool)`

 SetVolumeToken0Nil sets the value for VolumeToken0 to be an explicit nil

### UnsetVolumeToken0
`func (o *TickV3DTO) UnsetVolumeToken0()`

UnsetVolumeToken0 ensures that no value is present for VolumeToken0, not even an explicit nil
### GetVolumeToken1

`func (o *TickV3DTO) GetVolumeToken1() string`

GetVolumeToken1 returns the VolumeToken1 field if non-nil, zero value otherwise.

### GetVolumeToken1Ok

`func (o *TickV3DTO) GetVolumeToken1Ok() (*string, bool)`

GetVolumeToken1Ok returns a tuple with the VolumeToken1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeToken1

`func (o *TickV3DTO) SetVolumeToken1(v string)`

SetVolumeToken1 sets VolumeToken1 field to given value.

### HasVolumeToken1

`func (o *TickV3DTO) HasVolumeToken1() bool`

HasVolumeToken1 returns a boolean if a field has been set.

### SetVolumeToken1Nil

`func (o *TickV3DTO) SetVolumeToken1Nil(b bool)`

 SetVolumeToken1Nil sets the value for VolumeToken1 to be an explicit nil

### UnsetVolumeToken1
`func (o *TickV3DTO) UnsetVolumeToken1()`

UnsetVolumeToken1 ensures that no value is present for VolumeToken1, not even an explicit nil
### GetVolumeUsd

`func (o *TickV3DTO) GetVolumeUsd() string`

GetVolumeUsd returns the VolumeUsd field if non-nil, zero value otherwise.

### GetVolumeUsdOk

`func (o *TickV3DTO) GetVolumeUsdOk() (*string, bool)`

GetVolumeUsdOk returns a tuple with the VolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeUsd

`func (o *TickV3DTO) SetVolumeUsd(v string)`

SetVolumeUsd sets VolumeUsd field to given value.

### HasVolumeUsd

`func (o *TickV3DTO) HasVolumeUsd() bool`

HasVolumeUsd returns a boolean if a field has been set.

### SetVolumeUsdNil

`func (o *TickV3DTO) SetVolumeUsdNil(b bool)`

 SetVolumeUsdNil sets the value for VolumeUsd to be an explicit nil

### UnsetVolumeUsd
`func (o *TickV3DTO) UnsetVolumeUsd()`

UnsetVolumeUsd ensures that no value is present for VolumeUsd, not even an explicit nil
### GetUntrackedVolumeUsd

`func (o *TickV3DTO) GetUntrackedVolumeUsd() string`

GetUntrackedVolumeUsd returns the UntrackedVolumeUsd field if non-nil, zero value otherwise.

### GetUntrackedVolumeUsdOk

`func (o *TickV3DTO) GetUntrackedVolumeUsdOk() (*string, bool)`

GetUntrackedVolumeUsdOk returns a tuple with the UntrackedVolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUntrackedVolumeUsd

`func (o *TickV3DTO) SetUntrackedVolumeUsd(v string)`

SetUntrackedVolumeUsd sets UntrackedVolumeUsd field to given value.

### HasUntrackedVolumeUsd

`func (o *TickV3DTO) HasUntrackedVolumeUsd() bool`

HasUntrackedVolumeUsd returns a boolean if a field has been set.

### SetUntrackedVolumeUsdNil

`func (o *TickV3DTO) SetUntrackedVolumeUsdNil(b bool)`

 SetUntrackedVolumeUsdNil sets the value for UntrackedVolumeUsd to be an explicit nil

### UnsetUntrackedVolumeUsd
`func (o *TickV3DTO) UnsetUntrackedVolumeUsd()`

UnsetUntrackedVolumeUsd ensures that no value is present for UntrackedVolumeUsd, not even an explicit nil
### GetFeesUsd

`func (o *TickV3DTO) GetFeesUsd() string`

GetFeesUsd returns the FeesUsd field if non-nil, zero value otherwise.

### GetFeesUsdOk

`func (o *TickV3DTO) GetFeesUsdOk() (*string, bool)`

GetFeesUsdOk returns a tuple with the FeesUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeesUsd

`func (o *TickV3DTO) SetFeesUsd(v string)`

SetFeesUsd sets FeesUsd field to given value.

### HasFeesUsd

`func (o *TickV3DTO) HasFeesUsd() bool`

HasFeesUsd returns a boolean if a field has been set.

### SetFeesUsdNil

`func (o *TickV3DTO) SetFeesUsdNil(b bool)`

 SetFeesUsdNil sets the value for FeesUsd to be an explicit nil

### UnsetFeesUsd
`func (o *TickV3DTO) UnsetFeesUsd()`

UnsetFeesUsd ensures that no value is present for FeesUsd, not even an explicit nil
### GetCollectedFeesToken0

`func (o *TickV3DTO) GetCollectedFeesToken0() string`

GetCollectedFeesToken0 returns the CollectedFeesToken0 field if non-nil, zero value otherwise.

### GetCollectedFeesToken0Ok

`func (o *TickV3DTO) GetCollectedFeesToken0Ok() (*string, bool)`

GetCollectedFeesToken0Ok returns a tuple with the CollectedFeesToken0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCollectedFeesToken0

`func (o *TickV3DTO) SetCollectedFeesToken0(v string)`

SetCollectedFeesToken0 sets CollectedFeesToken0 field to given value.

### HasCollectedFeesToken0

`func (o *TickV3DTO) HasCollectedFeesToken0() bool`

HasCollectedFeesToken0 returns a boolean if a field has been set.

### SetCollectedFeesToken0Nil

`func (o *TickV3DTO) SetCollectedFeesToken0Nil(b bool)`

 SetCollectedFeesToken0Nil sets the value for CollectedFeesToken0 to be an explicit nil

### UnsetCollectedFeesToken0
`func (o *TickV3DTO) UnsetCollectedFeesToken0()`

UnsetCollectedFeesToken0 ensures that no value is present for CollectedFeesToken0, not even an explicit nil
### GetCollectedFeesToken1

`func (o *TickV3DTO) GetCollectedFeesToken1() string`

GetCollectedFeesToken1 returns the CollectedFeesToken1 field if non-nil, zero value otherwise.

### GetCollectedFeesToken1Ok

`func (o *TickV3DTO) GetCollectedFeesToken1Ok() (*string, bool)`

GetCollectedFeesToken1Ok returns a tuple with the CollectedFeesToken1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCollectedFeesToken1

`func (o *TickV3DTO) SetCollectedFeesToken1(v string)`

SetCollectedFeesToken1 sets CollectedFeesToken1 field to given value.

### HasCollectedFeesToken1

`func (o *TickV3DTO) HasCollectedFeesToken1() bool`

HasCollectedFeesToken1 returns a boolean if a field has been set.

### SetCollectedFeesToken1Nil

`func (o *TickV3DTO) SetCollectedFeesToken1Nil(b bool)`

 SetCollectedFeesToken1Nil sets the value for CollectedFeesToken1 to be an explicit nil

### UnsetCollectedFeesToken1
`func (o *TickV3DTO) UnsetCollectedFeesToken1()`

UnsetCollectedFeesToken1 ensures that no value is present for CollectedFeesToken1, not even an explicit nil
### GetCollectedFeesUsd

`func (o *TickV3DTO) GetCollectedFeesUsd() string`

GetCollectedFeesUsd returns the CollectedFeesUsd field if non-nil, zero value otherwise.

### GetCollectedFeesUsdOk

`func (o *TickV3DTO) GetCollectedFeesUsdOk() (*string, bool)`

GetCollectedFeesUsdOk returns a tuple with the CollectedFeesUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCollectedFeesUsd

`func (o *TickV3DTO) SetCollectedFeesUsd(v string)`

SetCollectedFeesUsd sets CollectedFeesUsd field to given value.

### HasCollectedFeesUsd

`func (o *TickV3DTO) HasCollectedFeesUsd() bool`

HasCollectedFeesUsd returns a boolean if a field has been set.

### SetCollectedFeesUsdNil

`func (o *TickV3DTO) SetCollectedFeesUsdNil(b bool)`

 SetCollectedFeesUsdNil sets the value for CollectedFeesUsd to be an explicit nil

### UnsetCollectedFeesUsd
`func (o *TickV3DTO) UnsetCollectedFeesUsd()`

UnsetCollectedFeesUsd ensures that no value is present for CollectedFeesUsd, not even an explicit nil
### GetCreatedAtTimestamp

`func (o *TickV3DTO) GetCreatedAtTimestamp() time.Time`

GetCreatedAtTimestamp returns the CreatedAtTimestamp field if non-nil, zero value otherwise.

### GetCreatedAtTimestampOk

`func (o *TickV3DTO) GetCreatedAtTimestampOk() (*time.Time, bool)`

GetCreatedAtTimestampOk returns a tuple with the CreatedAtTimestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAtTimestamp

`func (o *TickV3DTO) SetCreatedAtTimestamp(v time.Time)`

SetCreatedAtTimestamp sets CreatedAtTimestamp field to given value.

### HasCreatedAtTimestamp

`func (o *TickV3DTO) HasCreatedAtTimestamp() bool`

HasCreatedAtTimestamp returns a boolean if a field has been set.

### GetLiquidityProviderCount

`func (o *TickV3DTO) GetLiquidityProviderCount() BigInteger`

GetLiquidityProviderCount returns the LiquidityProviderCount field if non-nil, zero value otherwise.

### GetLiquidityProviderCountOk

`func (o *TickV3DTO) GetLiquidityProviderCountOk() (*BigInteger, bool)`

GetLiquidityProviderCountOk returns a tuple with the LiquidityProviderCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLiquidityProviderCount

`func (o *TickV3DTO) SetLiquidityProviderCount(v BigInteger)`

SetLiquidityProviderCount sets LiquidityProviderCount field to given value.

### HasLiquidityProviderCount

`func (o *TickV3DTO) HasLiquidityProviderCount() bool`

HasLiquidityProviderCount returns a boolean if a field has been set.

### GetFeeGrowthOutside0x128

`func (o *TickV3DTO) GetFeeGrowthOutside0x128() BigInteger`

GetFeeGrowthOutside0x128 returns the FeeGrowthOutside0x128 field if non-nil, zero value otherwise.

### GetFeeGrowthOutside0x128Ok

`func (o *TickV3DTO) GetFeeGrowthOutside0x128Ok() (*BigInteger, bool)`

GetFeeGrowthOutside0x128Ok returns a tuple with the FeeGrowthOutside0x128 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeeGrowthOutside0x128

`func (o *TickV3DTO) SetFeeGrowthOutside0x128(v BigInteger)`

SetFeeGrowthOutside0x128 sets FeeGrowthOutside0x128 field to given value.

### HasFeeGrowthOutside0x128

`func (o *TickV3DTO) HasFeeGrowthOutside0x128() bool`

HasFeeGrowthOutside0x128 returns a boolean if a field has been set.

### GetFeeGrowthOutside1x128

`func (o *TickV3DTO) GetFeeGrowthOutside1x128() BigInteger`

GetFeeGrowthOutside1x128 returns the FeeGrowthOutside1x128 field if non-nil, zero value otherwise.

### GetFeeGrowthOutside1x128Ok

`func (o *TickV3DTO) GetFeeGrowthOutside1x128Ok() (*BigInteger, bool)`

GetFeeGrowthOutside1x128Ok returns a tuple with the FeeGrowthOutside1x128 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeeGrowthOutside1x128

`func (o *TickV3DTO) SetFeeGrowthOutside1x128(v BigInteger)`

SetFeeGrowthOutside1x128 sets FeeGrowthOutside1x128 field to given value.

### HasFeeGrowthOutside1x128

`func (o *TickV3DTO) HasFeeGrowthOutside1x128() bool`

HasFeeGrowthOutside1x128 returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


