# UniswapV3PoolHourDataV3DTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Id** | Pointer to **NullableString** | Identifier, format: &lt;pool address&gt;-&lt;day id&gt; | [optional] 
**PeriodStartUnix** | Pointer to **int32** | Unix timestamp for start of hour. | [optional] 
**Pool** | Pointer to **NullableString** | Pointer to pool. | [optional] 
**Liquidity** | Pointer to **NullableString** | In range liquidity at end of period. | [optional] 
**SqrtPrice** | Pointer to **NullableString** | Current price tracker at end of period. | [optional] 
**Token0Price** | Pointer to **NullableString** | Price of token0 - derived from sqrtPrice. | [optional] 
**Token1Price** | Pointer to **NullableString** | Price of token1 - derived from sqrtPrice. | [optional] 
**Tick** | Pointer to **NullableString** | Current tick at end of period. | [optional] 
**FeeGrowthGlobal0x128** | Pointer to **NullableString** | Tracker for global fee growth. | [optional] 
**FeeGrowthGlobal1x128** | Pointer to **NullableString** | Tracker for global fee growth. | [optional] 
**TvlUsd** | Pointer to **NullableString** | Total value locked derived in USD at end of period. | [optional] 
**VolumeToken0** | Pointer to **NullableString** | Volume in token0. | [optional] 
**VolumeToken1** | Pointer to **NullableString** | Volume in token1. | [optional] 
**VolumeUsd** | Pointer to **NullableString** | Volume in USD. | [optional] 
**FeesUsd** | Pointer to **NullableString** | Fees in USD. | [optional] 
**TxCount** | Pointer to **NullableString** | Number of transactions during period. | [optional] 
**Open** | Pointer to **NullableString** | Opening price of token0. | [optional] 
**High** | Pointer to **NullableString** | High price of token0. | [optional] 
**Low** | Pointer to **NullableString** | Low price of token0. | [optional] 
**Close** | Pointer to **NullableString** | Close price of token0. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 

## Methods

### NewUniswapV3PoolHourDataV3DTO

`func NewUniswapV3PoolHourDataV3DTO() *UniswapV3PoolHourDataV3DTO`

NewUniswapV3PoolHourDataV3DTO instantiates a new UniswapV3PoolHourDataV3DTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUniswapV3PoolHourDataV3DTOWithDefaults

`func NewUniswapV3PoolHourDataV3DTOWithDefaults() *UniswapV3PoolHourDataV3DTO`

NewUniswapV3PoolHourDataV3DTOWithDefaults instantiates a new UniswapV3PoolHourDataV3DTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *UniswapV3PoolHourDataV3DTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *UniswapV3PoolHourDataV3DTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *UniswapV3PoolHourDataV3DTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *UniswapV3PoolHourDataV3DTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *UniswapV3PoolHourDataV3DTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *UniswapV3PoolHourDataV3DTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *UniswapV3PoolHourDataV3DTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *UniswapV3PoolHourDataV3DTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *UniswapV3PoolHourDataV3DTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *UniswapV3PoolHourDataV3DTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *UniswapV3PoolHourDataV3DTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *UniswapV3PoolHourDataV3DTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *UniswapV3PoolHourDataV3DTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *UniswapV3PoolHourDataV3DTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *UniswapV3PoolHourDataV3DTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *UniswapV3PoolHourDataV3DTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *UniswapV3PoolHourDataV3DTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *UniswapV3PoolHourDataV3DTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetPeriodStartUnix

`func (o *UniswapV3PoolHourDataV3DTO) GetPeriodStartUnix() int32`

GetPeriodStartUnix returns the PeriodStartUnix field if non-nil, zero value otherwise.

### GetPeriodStartUnixOk

`func (o *UniswapV3PoolHourDataV3DTO) GetPeriodStartUnixOk() (*int32, bool)`

GetPeriodStartUnixOk returns a tuple with the PeriodStartUnix field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPeriodStartUnix

`func (o *UniswapV3PoolHourDataV3DTO) SetPeriodStartUnix(v int32)`

SetPeriodStartUnix sets PeriodStartUnix field to given value.

### HasPeriodStartUnix

`func (o *UniswapV3PoolHourDataV3DTO) HasPeriodStartUnix() bool`

HasPeriodStartUnix returns a boolean if a field has been set.

### GetPool

`func (o *UniswapV3PoolHourDataV3DTO) GetPool() string`

GetPool returns the Pool field if non-nil, zero value otherwise.

### GetPoolOk

`func (o *UniswapV3PoolHourDataV3DTO) GetPoolOk() (*string, bool)`

GetPoolOk returns a tuple with the Pool field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPool

`func (o *UniswapV3PoolHourDataV3DTO) SetPool(v string)`

SetPool sets Pool field to given value.

### HasPool

`func (o *UniswapV3PoolHourDataV3DTO) HasPool() bool`

HasPool returns a boolean if a field has been set.

### SetPoolNil

`func (o *UniswapV3PoolHourDataV3DTO) SetPoolNil(b bool)`

 SetPoolNil sets the value for Pool to be an explicit nil

### UnsetPool
`func (o *UniswapV3PoolHourDataV3DTO) UnsetPool()`

UnsetPool ensures that no value is present for Pool, not even an explicit nil
### GetLiquidity

`func (o *UniswapV3PoolHourDataV3DTO) GetLiquidity() string`

GetLiquidity returns the Liquidity field if non-nil, zero value otherwise.

### GetLiquidityOk

`func (o *UniswapV3PoolHourDataV3DTO) GetLiquidityOk() (*string, bool)`

GetLiquidityOk returns a tuple with the Liquidity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLiquidity

`func (o *UniswapV3PoolHourDataV3DTO) SetLiquidity(v string)`

SetLiquidity sets Liquidity field to given value.

### HasLiquidity

`func (o *UniswapV3PoolHourDataV3DTO) HasLiquidity() bool`

HasLiquidity returns a boolean if a field has been set.

### SetLiquidityNil

`func (o *UniswapV3PoolHourDataV3DTO) SetLiquidityNil(b bool)`

 SetLiquidityNil sets the value for Liquidity to be an explicit nil

### UnsetLiquidity
`func (o *UniswapV3PoolHourDataV3DTO) UnsetLiquidity()`

UnsetLiquidity ensures that no value is present for Liquidity, not even an explicit nil
### GetSqrtPrice

`func (o *UniswapV3PoolHourDataV3DTO) GetSqrtPrice() string`

GetSqrtPrice returns the SqrtPrice field if non-nil, zero value otherwise.

### GetSqrtPriceOk

`func (o *UniswapV3PoolHourDataV3DTO) GetSqrtPriceOk() (*string, bool)`

GetSqrtPriceOk returns a tuple with the SqrtPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSqrtPrice

`func (o *UniswapV3PoolHourDataV3DTO) SetSqrtPrice(v string)`

SetSqrtPrice sets SqrtPrice field to given value.

### HasSqrtPrice

`func (o *UniswapV3PoolHourDataV3DTO) HasSqrtPrice() bool`

HasSqrtPrice returns a boolean if a field has been set.

### SetSqrtPriceNil

`func (o *UniswapV3PoolHourDataV3DTO) SetSqrtPriceNil(b bool)`

 SetSqrtPriceNil sets the value for SqrtPrice to be an explicit nil

### UnsetSqrtPrice
`func (o *UniswapV3PoolHourDataV3DTO) UnsetSqrtPrice()`

UnsetSqrtPrice ensures that no value is present for SqrtPrice, not even an explicit nil
### GetToken0Price

`func (o *UniswapV3PoolHourDataV3DTO) GetToken0Price() string`

GetToken0Price returns the Token0Price field if non-nil, zero value otherwise.

### GetToken0PriceOk

`func (o *UniswapV3PoolHourDataV3DTO) GetToken0PriceOk() (*string, bool)`

GetToken0PriceOk returns a tuple with the Token0Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken0Price

`func (o *UniswapV3PoolHourDataV3DTO) SetToken0Price(v string)`

SetToken0Price sets Token0Price field to given value.

### HasToken0Price

`func (o *UniswapV3PoolHourDataV3DTO) HasToken0Price() bool`

HasToken0Price returns a boolean if a field has been set.

### SetToken0PriceNil

`func (o *UniswapV3PoolHourDataV3DTO) SetToken0PriceNil(b bool)`

 SetToken0PriceNil sets the value for Token0Price to be an explicit nil

### UnsetToken0Price
`func (o *UniswapV3PoolHourDataV3DTO) UnsetToken0Price()`

UnsetToken0Price ensures that no value is present for Token0Price, not even an explicit nil
### GetToken1Price

`func (o *UniswapV3PoolHourDataV3DTO) GetToken1Price() string`

GetToken1Price returns the Token1Price field if non-nil, zero value otherwise.

### GetToken1PriceOk

`func (o *UniswapV3PoolHourDataV3DTO) GetToken1PriceOk() (*string, bool)`

GetToken1PriceOk returns a tuple with the Token1Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken1Price

`func (o *UniswapV3PoolHourDataV3DTO) SetToken1Price(v string)`

SetToken1Price sets Token1Price field to given value.

### HasToken1Price

`func (o *UniswapV3PoolHourDataV3DTO) HasToken1Price() bool`

HasToken1Price returns a boolean if a field has been set.

### SetToken1PriceNil

`func (o *UniswapV3PoolHourDataV3DTO) SetToken1PriceNil(b bool)`

 SetToken1PriceNil sets the value for Token1Price to be an explicit nil

### UnsetToken1Price
`func (o *UniswapV3PoolHourDataV3DTO) UnsetToken1Price()`

UnsetToken1Price ensures that no value is present for Token1Price, not even an explicit nil
### GetTick

`func (o *UniswapV3PoolHourDataV3DTO) GetTick() string`

GetTick returns the Tick field if non-nil, zero value otherwise.

### GetTickOk

`func (o *UniswapV3PoolHourDataV3DTO) GetTickOk() (*string, bool)`

GetTickOk returns a tuple with the Tick field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTick

`func (o *UniswapV3PoolHourDataV3DTO) SetTick(v string)`

SetTick sets Tick field to given value.

### HasTick

`func (o *UniswapV3PoolHourDataV3DTO) HasTick() bool`

HasTick returns a boolean if a field has been set.

### SetTickNil

`func (o *UniswapV3PoolHourDataV3DTO) SetTickNil(b bool)`

 SetTickNil sets the value for Tick to be an explicit nil

### UnsetTick
`func (o *UniswapV3PoolHourDataV3DTO) UnsetTick()`

UnsetTick ensures that no value is present for Tick, not even an explicit nil
### GetFeeGrowthGlobal0x128

`func (o *UniswapV3PoolHourDataV3DTO) GetFeeGrowthGlobal0x128() string`

GetFeeGrowthGlobal0x128 returns the FeeGrowthGlobal0x128 field if non-nil, zero value otherwise.

### GetFeeGrowthGlobal0x128Ok

`func (o *UniswapV3PoolHourDataV3DTO) GetFeeGrowthGlobal0x128Ok() (*string, bool)`

GetFeeGrowthGlobal0x128Ok returns a tuple with the FeeGrowthGlobal0x128 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeeGrowthGlobal0x128

`func (o *UniswapV3PoolHourDataV3DTO) SetFeeGrowthGlobal0x128(v string)`

SetFeeGrowthGlobal0x128 sets FeeGrowthGlobal0x128 field to given value.

### HasFeeGrowthGlobal0x128

`func (o *UniswapV3PoolHourDataV3DTO) HasFeeGrowthGlobal0x128() bool`

HasFeeGrowthGlobal0x128 returns a boolean if a field has been set.

### SetFeeGrowthGlobal0x128Nil

`func (o *UniswapV3PoolHourDataV3DTO) SetFeeGrowthGlobal0x128Nil(b bool)`

 SetFeeGrowthGlobal0x128Nil sets the value for FeeGrowthGlobal0x128 to be an explicit nil

### UnsetFeeGrowthGlobal0x128
`func (o *UniswapV3PoolHourDataV3DTO) UnsetFeeGrowthGlobal0x128()`

UnsetFeeGrowthGlobal0x128 ensures that no value is present for FeeGrowthGlobal0x128, not even an explicit nil
### GetFeeGrowthGlobal1x128

`func (o *UniswapV3PoolHourDataV3DTO) GetFeeGrowthGlobal1x128() string`

GetFeeGrowthGlobal1x128 returns the FeeGrowthGlobal1x128 field if non-nil, zero value otherwise.

### GetFeeGrowthGlobal1x128Ok

`func (o *UniswapV3PoolHourDataV3DTO) GetFeeGrowthGlobal1x128Ok() (*string, bool)`

GetFeeGrowthGlobal1x128Ok returns a tuple with the FeeGrowthGlobal1x128 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeeGrowthGlobal1x128

`func (o *UniswapV3PoolHourDataV3DTO) SetFeeGrowthGlobal1x128(v string)`

SetFeeGrowthGlobal1x128 sets FeeGrowthGlobal1x128 field to given value.

### HasFeeGrowthGlobal1x128

`func (o *UniswapV3PoolHourDataV3DTO) HasFeeGrowthGlobal1x128() bool`

HasFeeGrowthGlobal1x128 returns a boolean if a field has been set.

### SetFeeGrowthGlobal1x128Nil

`func (o *UniswapV3PoolHourDataV3DTO) SetFeeGrowthGlobal1x128Nil(b bool)`

 SetFeeGrowthGlobal1x128Nil sets the value for FeeGrowthGlobal1x128 to be an explicit nil

### UnsetFeeGrowthGlobal1x128
`func (o *UniswapV3PoolHourDataV3DTO) UnsetFeeGrowthGlobal1x128()`

UnsetFeeGrowthGlobal1x128 ensures that no value is present for FeeGrowthGlobal1x128, not even an explicit nil
### GetTvlUsd

`func (o *UniswapV3PoolHourDataV3DTO) GetTvlUsd() string`

GetTvlUsd returns the TvlUsd field if non-nil, zero value otherwise.

### GetTvlUsdOk

`func (o *UniswapV3PoolHourDataV3DTO) GetTvlUsdOk() (*string, bool)`

GetTvlUsdOk returns a tuple with the TvlUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTvlUsd

`func (o *UniswapV3PoolHourDataV3DTO) SetTvlUsd(v string)`

SetTvlUsd sets TvlUsd field to given value.

### HasTvlUsd

`func (o *UniswapV3PoolHourDataV3DTO) HasTvlUsd() bool`

HasTvlUsd returns a boolean if a field has been set.

### SetTvlUsdNil

`func (o *UniswapV3PoolHourDataV3DTO) SetTvlUsdNil(b bool)`

 SetTvlUsdNil sets the value for TvlUsd to be an explicit nil

### UnsetTvlUsd
`func (o *UniswapV3PoolHourDataV3DTO) UnsetTvlUsd()`

UnsetTvlUsd ensures that no value is present for TvlUsd, not even an explicit nil
### GetVolumeToken0

`func (o *UniswapV3PoolHourDataV3DTO) GetVolumeToken0() string`

GetVolumeToken0 returns the VolumeToken0 field if non-nil, zero value otherwise.

### GetVolumeToken0Ok

`func (o *UniswapV3PoolHourDataV3DTO) GetVolumeToken0Ok() (*string, bool)`

GetVolumeToken0Ok returns a tuple with the VolumeToken0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeToken0

`func (o *UniswapV3PoolHourDataV3DTO) SetVolumeToken0(v string)`

SetVolumeToken0 sets VolumeToken0 field to given value.

### HasVolumeToken0

`func (o *UniswapV3PoolHourDataV3DTO) HasVolumeToken0() bool`

HasVolumeToken0 returns a boolean if a field has been set.

### SetVolumeToken0Nil

`func (o *UniswapV3PoolHourDataV3DTO) SetVolumeToken0Nil(b bool)`

 SetVolumeToken0Nil sets the value for VolumeToken0 to be an explicit nil

### UnsetVolumeToken0
`func (o *UniswapV3PoolHourDataV3DTO) UnsetVolumeToken0()`

UnsetVolumeToken0 ensures that no value is present for VolumeToken0, not even an explicit nil
### GetVolumeToken1

`func (o *UniswapV3PoolHourDataV3DTO) GetVolumeToken1() string`

GetVolumeToken1 returns the VolumeToken1 field if non-nil, zero value otherwise.

### GetVolumeToken1Ok

`func (o *UniswapV3PoolHourDataV3DTO) GetVolumeToken1Ok() (*string, bool)`

GetVolumeToken1Ok returns a tuple with the VolumeToken1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeToken1

`func (o *UniswapV3PoolHourDataV3DTO) SetVolumeToken1(v string)`

SetVolumeToken1 sets VolumeToken1 field to given value.

### HasVolumeToken1

`func (o *UniswapV3PoolHourDataV3DTO) HasVolumeToken1() bool`

HasVolumeToken1 returns a boolean if a field has been set.

### SetVolumeToken1Nil

`func (o *UniswapV3PoolHourDataV3DTO) SetVolumeToken1Nil(b bool)`

 SetVolumeToken1Nil sets the value for VolumeToken1 to be an explicit nil

### UnsetVolumeToken1
`func (o *UniswapV3PoolHourDataV3DTO) UnsetVolumeToken1()`

UnsetVolumeToken1 ensures that no value is present for VolumeToken1, not even an explicit nil
### GetVolumeUsd

`func (o *UniswapV3PoolHourDataV3DTO) GetVolumeUsd() string`

GetVolumeUsd returns the VolumeUsd field if non-nil, zero value otherwise.

### GetVolumeUsdOk

`func (o *UniswapV3PoolHourDataV3DTO) GetVolumeUsdOk() (*string, bool)`

GetVolumeUsdOk returns a tuple with the VolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeUsd

`func (o *UniswapV3PoolHourDataV3DTO) SetVolumeUsd(v string)`

SetVolumeUsd sets VolumeUsd field to given value.

### HasVolumeUsd

`func (o *UniswapV3PoolHourDataV3DTO) HasVolumeUsd() bool`

HasVolumeUsd returns a boolean if a field has been set.

### SetVolumeUsdNil

`func (o *UniswapV3PoolHourDataV3DTO) SetVolumeUsdNil(b bool)`

 SetVolumeUsdNil sets the value for VolumeUsd to be an explicit nil

### UnsetVolumeUsd
`func (o *UniswapV3PoolHourDataV3DTO) UnsetVolumeUsd()`

UnsetVolumeUsd ensures that no value is present for VolumeUsd, not even an explicit nil
### GetFeesUsd

`func (o *UniswapV3PoolHourDataV3DTO) GetFeesUsd() string`

GetFeesUsd returns the FeesUsd field if non-nil, zero value otherwise.

### GetFeesUsdOk

`func (o *UniswapV3PoolHourDataV3DTO) GetFeesUsdOk() (*string, bool)`

GetFeesUsdOk returns a tuple with the FeesUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeesUsd

`func (o *UniswapV3PoolHourDataV3DTO) SetFeesUsd(v string)`

SetFeesUsd sets FeesUsd field to given value.

### HasFeesUsd

`func (o *UniswapV3PoolHourDataV3DTO) HasFeesUsd() bool`

HasFeesUsd returns a boolean if a field has been set.

### SetFeesUsdNil

`func (o *UniswapV3PoolHourDataV3DTO) SetFeesUsdNil(b bool)`

 SetFeesUsdNil sets the value for FeesUsd to be an explicit nil

### UnsetFeesUsd
`func (o *UniswapV3PoolHourDataV3DTO) UnsetFeesUsd()`

UnsetFeesUsd ensures that no value is present for FeesUsd, not even an explicit nil
### GetTxCount

`func (o *UniswapV3PoolHourDataV3DTO) GetTxCount() string`

GetTxCount returns the TxCount field if non-nil, zero value otherwise.

### GetTxCountOk

`func (o *UniswapV3PoolHourDataV3DTO) GetTxCountOk() (*string, bool)`

GetTxCountOk returns a tuple with the TxCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTxCount

`func (o *UniswapV3PoolHourDataV3DTO) SetTxCount(v string)`

SetTxCount sets TxCount field to given value.

### HasTxCount

`func (o *UniswapV3PoolHourDataV3DTO) HasTxCount() bool`

HasTxCount returns a boolean if a field has been set.

### SetTxCountNil

`func (o *UniswapV3PoolHourDataV3DTO) SetTxCountNil(b bool)`

 SetTxCountNil sets the value for TxCount to be an explicit nil

### UnsetTxCount
`func (o *UniswapV3PoolHourDataV3DTO) UnsetTxCount()`

UnsetTxCount ensures that no value is present for TxCount, not even an explicit nil
### GetOpen

`func (o *UniswapV3PoolHourDataV3DTO) GetOpen() string`

GetOpen returns the Open field if non-nil, zero value otherwise.

### GetOpenOk

`func (o *UniswapV3PoolHourDataV3DTO) GetOpenOk() (*string, bool)`

GetOpenOk returns a tuple with the Open field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOpen

`func (o *UniswapV3PoolHourDataV3DTO) SetOpen(v string)`

SetOpen sets Open field to given value.

### HasOpen

`func (o *UniswapV3PoolHourDataV3DTO) HasOpen() bool`

HasOpen returns a boolean if a field has been set.

### SetOpenNil

`func (o *UniswapV3PoolHourDataV3DTO) SetOpenNil(b bool)`

 SetOpenNil sets the value for Open to be an explicit nil

### UnsetOpen
`func (o *UniswapV3PoolHourDataV3DTO) UnsetOpen()`

UnsetOpen ensures that no value is present for Open, not even an explicit nil
### GetHigh

`func (o *UniswapV3PoolHourDataV3DTO) GetHigh() string`

GetHigh returns the High field if non-nil, zero value otherwise.

### GetHighOk

`func (o *UniswapV3PoolHourDataV3DTO) GetHighOk() (*string, bool)`

GetHighOk returns a tuple with the High field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHigh

`func (o *UniswapV3PoolHourDataV3DTO) SetHigh(v string)`

SetHigh sets High field to given value.

### HasHigh

`func (o *UniswapV3PoolHourDataV3DTO) HasHigh() bool`

HasHigh returns a boolean if a field has been set.

### SetHighNil

`func (o *UniswapV3PoolHourDataV3DTO) SetHighNil(b bool)`

 SetHighNil sets the value for High to be an explicit nil

### UnsetHigh
`func (o *UniswapV3PoolHourDataV3DTO) UnsetHigh()`

UnsetHigh ensures that no value is present for High, not even an explicit nil
### GetLow

`func (o *UniswapV3PoolHourDataV3DTO) GetLow() string`

GetLow returns the Low field if non-nil, zero value otherwise.

### GetLowOk

`func (o *UniswapV3PoolHourDataV3DTO) GetLowOk() (*string, bool)`

GetLowOk returns a tuple with the Low field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLow

`func (o *UniswapV3PoolHourDataV3DTO) SetLow(v string)`

SetLow sets Low field to given value.

### HasLow

`func (o *UniswapV3PoolHourDataV3DTO) HasLow() bool`

HasLow returns a boolean if a field has been set.

### SetLowNil

`func (o *UniswapV3PoolHourDataV3DTO) SetLowNil(b bool)`

 SetLowNil sets the value for Low to be an explicit nil

### UnsetLow
`func (o *UniswapV3PoolHourDataV3DTO) UnsetLow()`

UnsetLow ensures that no value is present for Low, not even an explicit nil
### GetClose

`func (o *UniswapV3PoolHourDataV3DTO) GetClose() string`

GetClose returns the Close field if non-nil, zero value otherwise.

### GetCloseOk

`func (o *UniswapV3PoolHourDataV3DTO) GetCloseOk() (*string, bool)`

GetCloseOk returns a tuple with the Close field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClose

`func (o *UniswapV3PoolHourDataV3DTO) SetClose(v string)`

SetClose sets Close field to given value.

### HasClose

`func (o *UniswapV3PoolHourDataV3DTO) HasClose() bool`

HasClose returns a boolean if a field has been set.

### SetCloseNil

`func (o *UniswapV3PoolHourDataV3DTO) SetCloseNil(b bool)`

 SetCloseNil sets the value for Close to be an explicit nil

### UnsetClose
`func (o *UniswapV3PoolHourDataV3DTO) UnsetClose()`

UnsetClose ensures that no value is present for Close, not even an explicit nil
### GetVid

`func (o *UniswapV3PoolHourDataV3DTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *UniswapV3PoolHourDataV3DTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *UniswapV3PoolHourDataV3DTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *UniswapV3PoolHourDataV3DTO) HasVid() bool`

HasVid returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

