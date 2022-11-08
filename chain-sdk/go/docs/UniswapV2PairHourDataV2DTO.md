# UniswapV2PairHourDataV2DTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Id** | Pointer to **NullableString** |  | [optional] 
**HourStartUnix** | Pointer to **int32** | Unix timestamp for start of hour. | [optional] 
**Pair** | Pointer to **NullableString** | Address for pair contract. | [optional] 
**Reserve0** | Pointer to **NullableString** | Reserve of token0 (updated during each transaction on pair). | [optional] 
**Reserve1** | Pointer to **NullableString** | Reserve of token1 (updated during each transaction on pair). | [optional] 
**TotalSupply** | Pointer to **NullableString** | Total supply of liquidity token distributed to LPs. | [optional] 
**ReserveUsd** | Pointer to **NullableString** | Reserve of token0 plus token1 stored as a derived USD amount. | [optional] 
**HourlyVolumeToken0** | Pointer to **NullableString** | Total amount of token0 swapped throughout hour. | [optional] 
**HourlyVolumeToken1** | Pointer to **NullableString** | Total amount of token1 swapped throughout hour. | [optional] 
**HourlyVolumeUsd** | Pointer to **NullableString** | Total volume within pair throughout hour. | [optional] 
**HourlyTxns** | Pointer to **NullableString** | Amount of transactions on pair throughout hour. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 

## Methods

### NewUniswapV2PairHourDataV2DTO

`func NewUniswapV2PairHourDataV2DTO() *UniswapV2PairHourDataV2DTO`

NewUniswapV2PairHourDataV2DTO instantiates a new UniswapV2PairHourDataV2DTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUniswapV2PairHourDataV2DTOWithDefaults

`func NewUniswapV2PairHourDataV2DTOWithDefaults() *UniswapV2PairHourDataV2DTO`

NewUniswapV2PairHourDataV2DTOWithDefaults instantiates a new UniswapV2PairHourDataV2DTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *UniswapV2PairHourDataV2DTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *UniswapV2PairHourDataV2DTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *UniswapV2PairHourDataV2DTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *UniswapV2PairHourDataV2DTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *UniswapV2PairHourDataV2DTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *UniswapV2PairHourDataV2DTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *UniswapV2PairHourDataV2DTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *UniswapV2PairHourDataV2DTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *UniswapV2PairHourDataV2DTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *UniswapV2PairHourDataV2DTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *UniswapV2PairHourDataV2DTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *UniswapV2PairHourDataV2DTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *UniswapV2PairHourDataV2DTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *UniswapV2PairHourDataV2DTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *UniswapV2PairHourDataV2DTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *UniswapV2PairHourDataV2DTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *UniswapV2PairHourDataV2DTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *UniswapV2PairHourDataV2DTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetHourStartUnix

`func (o *UniswapV2PairHourDataV2DTO) GetHourStartUnix() int32`

GetHourStartUnix returns the HourStartUnix field if non-nil, zero value otherwise.

### GetHourStartUnixOk

`func (o *UniswapV2PairHourDataV2DTO) GetHourStartUnixOk() (*int32, bool)`

GetHourStartUnixOk returns a tuple with the HourStartUnix field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHourStartUnix

`func (o *UniswapV2PairHourDataV2DTO) SetHourStartUnix(v int32)`

SetHourStartUnix sets HourStartUnix field to given value.

### HasHourStartUnix

`func (o *UniswapV2PairHourDataV2DTO) HasHourStartUnix() bool`

HasHourStartUnix returns a boolean if a field has been set.

### GetPair

`func (o *UniswapV2PairHourDataV2DTO) GetPair() string`

GetPair returns the Pair field if non-nil, zero value otherwise.

### GetPairOk

`func (o *UniswapV2PairHourDataV2DTO) GetPairOk() (*string, bool)`

GetPairOk returns a tuple with the Pair field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPair

`func (o *UniswapV2PairHourDataV2DTO) SetPair(v string)`

SetPair sets Pair field to given value.

### HasPair

`func (o *UniswapV2PairHourDataV2DTO) HasPair() bool`

HasPair returns a boolean if a field has been set.

### SetPairNil

`func (o *UniswapV2PairHourDataV2DTO) SetPairNil(b bool)`

 SetPairNil sets the value for Pair to be an explicit nil

### UnsetPair
`func (o *UniswapV2PairHourDataV2DTO) UnsetPair()`

UnsetPair ensures that no value is present for Pair, not even an explicit nil
### GetReserve0

`func (o *UniswapV2PairHourDataV2DTO) GetReserve0() string`

GetReserve0 returns the Reserve0 field if non-nil, zero value otherwise.

### GetReserve0Ok

`func (o *UniswapV2PairHourDataV2DTO) GetReserve0Ok() (*string, bool)`

GetReserve0Ok returns a tuple with the Reserve0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReserve0

`func (o *UniswapV2PairHourDataV2DTO) SetReserve0(v string)`

SetReserve0 sets Reserve0 field to given value.

### HasReserve0

`func (o *UniswapV2PairHourDataV2DTO) HasReserve0() bool`

HasReserve0 returns a boolean if a field has been set.

### SetReserve0Nil

`func (o *UniswapV2PairHourDataV2DTO) SetReserve0Nil(b bool)`

 SetReserve0Nil sets the value for Reserve0 to be an explicit nil

### UnsetReserve0
`func (o *UniswapV2PairHourDataV2DTO) UnsetReserve0()`

UnsetReserve0 ensures that no value is present for Reserve0, not even an explicit nil
### GetReserve1

`func (o *UniswapV2PairHourDataV2DTO) GetReserve1() string`

GetReserve1 returns the Reserve1 field if non-nil, zero value otherwise.

### GetReserve1Ok

`func (o *UniswapV2PairHourDataV2DTO) GetReserve1Ok() (*string, bool)`

GetReserve1Ok returns a tuple with the Reserve1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReserve1

`func (o *UniswapV2PairHourDataV2DTO) SetReserve1(v string)`

SetReserve1 sets Reserve1 field to given value.

### HasReserve1

`func (o *UniswapV2PairHourDataV2DTO) HasReserve1() bool`

HasReserve1 returns a boolean if a field has been set.

### SetReserve1Nil

`func (o *UniswapV2PairHourDataV2DTO) SetReserve1Nil(b bool)`

 SetReserve1Nil sets the value for Reserve1 to be an explicit nil

### UnsetReserve1
`func (o *UniswapV2PairHourDataV2DTO) UnsetReserve1()`

UnsetReserve1 ensures that no value is present for Reserve1, not even an explicit nil
### GetTotalSupply

`func (o *UniswapV2PairHourDataV2DTO) GetTotalSupply() string`

GetTotalSupply returns the TotalSupply field if non-nil, zero value otherwise.

### GetTotalSupplyOk

`func (o *UniswapV2PairHourDataV2DTO) GetTotalSupplyOk() (*string, bool)`

GetTotalSupplyOk returns a tuple with the TotalSupply field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalSupply

`func (o *UniswapV2PairHourDataV2DTO) SetTotalSupply(v string)`

SetTotalSupply sets TotalSupply field to given value.

### HasTotalSupply

`func (o *UniswapV2PairHourDataV2DTO) HasTotalSupply() bool`

HasTotalSupply returns a boolean if a field has been set.

### SetTotalSupplyNil

`func (o *UniswapV2PairHourDataV2DTO) SetTotalSupplyNil(b bool)`

 SetTotalSupplyNil sets the value for TotalSupply to be an explicit nil

### UnsetTotalSupply
`func (o *UniswapV2PairHourDataV2DTO) UnsetTotalSupply()`

UnsetTotalSupply ensures that no value is present for TotalSupply, not even an explicit nil
### GetReserveUsd

`func (o *UniswapV2PairHourDataV2DTO) GetReserveUsd() string`

GetReserveUsd returns the ReserveUsd field if non-nil, zero value otherwise.

### GetReserveUsdOk

`func (o *UniswapV2PairHourDataV2DTO) GetReserveUsdOk() (*string, bool)`

GetReserveUsdOk returns a tuple with the ReserveUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReserveUsd

`func (o *UniswapV2PairHourDataV2DTO) SetReserveUsd(v string)`

SetReserveUsd sets ReserveUsd field to given value.

### HasReserveUsd

`func (o *UniswapV2PairHourDataV2DTO) HasReserveUsd() bool`

HasReserveUsd returns a boolean if a field has been set.

### SetReserveUsdNil

`func (o *UniswapV2PairHourDataV2DTO) SetReserveUsdNil(b bool)`

 SetReserveUsdNil sets the value for ReserveUsd to be an explicit nil

### UnsetReserveUsd
`func (o *UniswapV2PairHourDataV2DTO) UnsetReserveUsd()`

UnsetReserveUsd ensures that no value is present for ReserveUsd, not even an explicit nil
### GetHourlyVolumeToken0

`func (o *UniswapV2PairHourDataV2DTO) GetHourlyVolumeToken0() string`

GetHourlyVolumeToken0 returns the HourlyVolumeToken0 field if non-nil, zero value otherwise.

### GetHourlyVolumeToken0Ok

`func (o *UniswapV2PairHourDataV2DTO) GetHourlyVolumeToken0Ok() (*string, bool)`

GetHourlyVolumeToken0Ok returns a tuple with the HourlyVolumeToken0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHourlyVolumeToken0

`func (o *UniswapV2PairHourDataV2DTO) SetHourlyVolumeToken0(v string)`

SetHourlyVolumeToken0 sets HourlyVolumeToken0 field to given value.

### HasHourlyVolumeToken0

`func (o *UniswapV2PairHourDataV2DTO) HasHourlyVolumeToken0() bool`

HasHourlyVolumeToken0 returns a boolean if a field has been set.

### SetHourlyVolumeToken0Nil

`func (o *UniswapV2PairHourDataV2DTO) SetHourlyVolumeToken0Nil(b bool)`

 SetHourlyVolumeToken0Nil sets the value for HourlyVolumeToken0 to be an explicit nil

### UnsetHourlyVolumeToken0
`func (o *UniswapV2PairHourDataV2DTO) UnsetHourlyVolumeToken0()`

UnsetHourlyVolumeToken0 ensures that no value is present for HourlyVolumeToken0, not even an explicit nil
### GetHourlyVolumeToken1

`func (o *UniswapV2PairHourDataV2DTO) GetHourlyVolumeToken1() string`

GetHourlyVolumeToken1 returns the HourlyVolumeToken1 field if non-nil, zero value otherwise.

### GetHourlyVolumeToken1Ok

`func (o *UniswapV2PairHourDataV2DTO) GetHourlyVolumeToken1Ok() (*string, bool)`

GetHourlyVolumeToken1Ok returns a tuple with the HourlyVolumeToken1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHourlyVolumeToken1

`func (o *UniswapV2PairHourDataV2DTO) SetHourlyVolumeToken1(v string)`

SetHourlyVolumeToken1 sets HourlyVolumeToken1 field to given value.

### HasHourlyVolumeToken1

`func (o *UniswapV2PairHourDataV2DTO) HasHourlyVolumeToken1() bool`

HasHourlyVolumeToken1 returns a boolean if a field has been set.

### SetHourlyVolumeToken1Nil

`func (o *UniswapV2PairHourDataV2DTO) SetHourlyVolumeToken1Nil(b bool)`

 SetHourlyVolumeToken1Nil sets the value for HourlyVolumeToken1 to be an explicit nil

### UnsetHourlyVolumeToken1
`func (o *UniswapV2PairHourDataV2DTO) UnsetHourlyVolumeToken1()`

UnsetHourlyVolumeToken1 ensures that no value is present for HourlyVolumeToken1, not even an explicit nil
### GetHourlyVolumeUsd

`func (o *UniswapV2PairHourDataV2DTO) GetHourlyVolumeUsd() string`

GetHourlyVolumeUsd returns the HourlyVolumeUsd field if non-nil, zero value otherwise.

### GetHourlyVolumeUsdOk

`func (o *UniswapV2PairHourDataV2DTO) GetHourlyVolumeUsdOk() (*string, bool)`

GetHourlyVolumeUsdOk returns a tuple with the HourlyVolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHourlyVolumeUsd

`func (o *UniswapV2PairHourDataV2DTO) SetHourlyVolumeUsd(v string)`

SetHourlyVolumeUsd sets HourlyVolumeUsd field to given value.

### HasHourlyVolumeUsd

`func (o *UniswapV2PairHourDataV2DTO) HasHourlyVolumeUsd() bool`

HasHourlyVolumeUsd returns a boolean if a field has been set.

### SetHourlyVolumeUsdNil

`func (o *UniswapV2PairHourDataV2DTO) SetHourlyVolumeUsdNil(b bool)`

 SetHourlyVolumeUsdNil sets the value for HourlyVolumeUsd to be an explicit nil

### UnsetHourlyVolumeUsd
`func (o *UniswapV2PairHourDataV2DTO) UnsetHourlyVolumeUsd()`

UnsetHourlyVolumeUsd ensures that no value is present for HourlyVolumeUsd, not even an explicit nil
### GetHourlyTxns

`func (o *UniswapV2PairHourDataV2DTO) GetHourlyTxns() string`

GetHourlyTxns returns the HourlyTxns field if non-nil, zero value otherwise.

### GetHourlyTxnsOk

`func (o *UniswapV2PairHourDataV2DTO) GetHourlyTxnsOk() (*string, bool)`

GetHourlyTxnsOk returns a tuple with the HourlyTxns field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHourlyTxns

`func (o *UniswapV2PairHourDataV2DTO) SetHourlyTxns(v string)`

SetHourlyTxns sets HourlyTxns field to given value.

### HasHourlyTxns

`func (o *UniswapV2PairHourDataV2DTO) HasHourlyTxns() bool`

HasHourlyTxns returns a boolean if a field has been set.

### SetHourlyTxnsNil

`func (o *UniswapV2PairHourDataV2DTO) SetHourlyTxnsNil(b bool)`

 SetHourlyTxnsNil sets the value for HourlyTxns to be an explicit nil

### UnsetHourlyTxns
`func (o *UniswapV2PairHourDataV2DTO) UnsetHourlyTxns()`

UnsetHourlyTxns ensures that no value is present for HourlyTxns, not even an explicit nil
### GetVid

`func (o *UniswapV2PairHourDataV2DTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *UniswapV2PairHourDataV2DTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *UniswapV2PairHourDataV2DTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *UniswapV2PairHourDataV2DTO) HasVid() bool`

HasVid returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


