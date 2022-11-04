# UniswapDayDataV3DTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 
**Id** | Pointer to **NullableString** | Timestamp rounded to current day by dividing by 86400. | [optional] 
**Date** | Pointer to **int32** | Timestamp rounded to current day by dividing by 86400. | [optional] 
**VolumeEth** | Pointer to **NullableString** | Total volume across all pairs on this day, stored as a derived amount of ETH. | [optional] 
**VolumeUsd** | Pointer to **NullableString** | Total volume across all pairs on this day, stored as a derived amount of USD. | [optional] 
**VolumeUsdUntracked** | Pointer to **NullableString** | Total daily volume in Uniswap derived in terms of USD untracked. | [optional] 
**FeesUsd** | Pointer to **NullableString** | Fees in USD | [optional] 
**TxCount** | Pointer to [**BigInteger**](BigInteger.md) |  | [optional] 
**TvlUsd** | Pointer to **NullableString** | Tvl in terms of USD. | [optional] 

## Methods

### NewUniswapDayDataV3DTO

`func NewUniswapDayDataV3DTO() *UniswapDayDataV3DTO`

NewUniswapDayDataV3DTO instantiates a new UniswapDayDataV3DTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUniswapDayDataV3DTOWithDefaults

`func NewUniswapDayDataV3DTOWithDefaults() *UniswapDayDataV3DTO`

NewUniswapDayDataV3DTOWithDefaults instantiates a new UniswapDayDataV3DTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *UniswapDayDataV3DTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *UniswapDayDataV3DTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *UniswapDayDataV3DTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *UniswapDayDataV3DTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *UniswapDayDataV3DTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *UniswapDayDataV3DTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *UniswapDayDataV3DTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *UniswapDayDataV3DTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *UniswapDayDataV3DTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *UniswapDayDataV3DTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *UniswapDayDataV3DTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *UniswapDayDataV3DTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetVid

`func (o *UniswapDayDataV3DTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *UniswapDayDataV3DTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *UniswapDayDataV3DTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *UniswapDayDataV3DTO) HasVid() bool`

HasVid returns a boolean if a field has been set.

### GetId

`func (o *UniswapDayDataV3DTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *UniswapDayDataV3DTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *UniswapDayDataV3DTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *UniswapDayDataV3DTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *UniswapDayDataV3DTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *UniswapDayDataV3DTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetDate

`func (o *UniswapDayDataV3DTO) GetDate() int32`

GetDate returns the Date field if non-nil, zero value otherwise.

### GetDateOk

`func (o *UniswapDayDataV3DTO) GetDateOk() (*int32, bool)`

GetDateOk returns a tuple with the Date field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDate

`func (o *UniswapDayDataV3DTO) SetDate(v int32)`

SetDate sets Date field to given value.

### HasDate

`func (o *UniswapDayDataV3DTO) HasDate() bool`

HasDate returns a boolean if a field has been set.

### GetVolumeEth

`func (o *UniswapDayDataV3DTO) GetVolumeEth() string`

GetVolumeEth returns the VolumeEth field if non-nil, zero value otherwise.

### GetVolumeEthOk

`func (o *UniswapDayDataV3DTO) GetVolumeEthOk() (*string, bool)`

GetVolumeEthOk returns a tuple with the VolumeEth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeEth

`func (o *UniswapDayDataV3DTO) SetVolumeEth(v string)`

SetVolumeEth sets VolumeEth field to given value.

### HasVolumeEth

`func (o *UniswapDayDataV3DTO) HasVolumeEth() bool`

HasVolumeEth returns a boolean if a field has been set.

### SetVolumeEthNil

`func (o *UniswapDayDataV3DTO) SetVolumeEthNil(b bool)`

 SetVolumeEthNil sets the value for VolumeEth to be an explicit nil

### UnsetVolumeEth
`func (o *UniswapDayDataV3DTO) UnsetVolumeEth()`

UnsetVolumeEth ensures that no value is present for VolumeEth, not even an explicit nil
### GetVolumeUsd

`func (o *UniswapDayDataV3DTO) GetVolumeUsd() string`

GetVolumeUsd returns the VolumeUsd field if non-nil, zero value otherwise.

### GetVolumeUsdOk

`func (o *UniswapDayDataV3DTO) GetVolumeUsdOk() (*string, bool)`

GetVolumeUsdOk returns a tuple with the VolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeUsd

`func (o *UniswapDayDataV3DTO) SetVolumeUsd(v string)`

SetVolumeUsd sets VolumeUsd field to given value.

### HasVolumeUsd

`func (o *UniswapDayDataV3DTO) HasVolumeUsd() bool`

HasVolumeUsd returns a boolean if a field has been set.

### SetVolumeUsdNil

`func (o *UniswapDayDataV3DTO) SetVolumeUsdNil(b bool)`

 SetVolumeUsdNil sets the value for VolumeUsd to be an explicit nil

### UnsetVolumeUsd
`func (o *UniswapDayDataV3DTO) UnsetVolumeUsd()`

UnsetVolumeUsd ensures that no value is present for VolumeUsd, not even an explicit nil
### GetVolumeUsdUntracked

`func (o *UniswapDayDataV3DTO) GetVolumeUsdUntracked() string`

GetVolumeUsdUntracked returns the VolumeUsdUntracked field if non-nil, zero value otherwise.

### GetVolumeUsdUntrackedOk

`func (o *UniswapDayDataV3DTO) GetVolumeUsdUntrackedOk() (*string, bool)`

GetVolumeUsdUntrackedOk returns a tuple with the VolumeUsdUntracked field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeUsdUntracked

`func (o *UniswapDayDataV3DTO) SetVolumeUsdUntracked(v string)`

SetVolumeUsdUntracked sets VolumeUsdUntracked field to given value.

### HasVolumeUsdUntracked

`func (o *UniswapDayDataV3DTO) HasVolumeUsdUntracked() bool`

HasVolumeUsdUntracked returns a boolean if a field has been set.

### SetVolumeUsdUntrackedNil

`func (o *UniswapDayDataV3DTO) SetVolumeUsdUntrackedNil(b bool)`

 SetVolumeUsdUntrackedNil sets the value for VolumeUsdUntracked to be an explicit nil

### UnsetVolumeUsdUntracked
`func (o *UniswapDayDataV3DTO) UnsetVolumeUsdUntracked()`

UnsetVolumeUsdUntracked ensures that no value is present for VolumeUsdUntracked, not even an explicit nil
### GetFeesUsd

`func (o *UniswapDayDataV3DTO) GetFeesUsd() string`

GetFeesUsd returns the FeesUsd field if non-nil, zero value otherwise.

### GetFeesUsdOk

`func (o *UniswapDayDataV3DTO) GetFeesUsdOk() (*string, bool)`

GetFeesUsdOk returns a tuple with the FeesUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeesUsd

`func (o *UniswapDayDataV3DTO) SetFeesUsd(v string)`

SetFeesUsd sets FeesUsd field to given value.

### HasFeesUsd

`func (o *UniswapDayDataV3DTO) HasFeesUsd() bool`

HasFeesUsd returns a boolean if a field has been set.

### SetFeesUsdNil

`func (o *UniswapDayDataV3DTO) SetFeesUsdNil(b bool)`

 SetFeesUsdNil sets the value for FeesUsd to be an explicit nil

### UnsetFeesUsd
`func (o *UniswapDayDataV3DTO) UnsetFeesUsd()`

UnsetFeesUsd ensures that no value is present for FeesUsd, not even an explicit nil
### GetTxCount

`func (o *UniswapDayDataV3DTO) GetTxCount() BigInteger`

GetTxCount returns the TxCount field if non-nil, zero value otherwise.

### GetTxCountOk

`func (o *UniswapDayDataV3DTO) GetTxCountOk() (*BigInteger, bool)`

GetTxCountOk returns a tuple with the TxCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTxCount

`func (o *UniswapDayDataV3DTO) SetTxCount(v BigInteger)`

SetTxCount sets TxCount field to given value.

### HasTxCount

`func (o *UniswapDayDataV3DTO) HasTxCount() bool`

HasTxCount returns a boolean if a field has been set.

### GetTvlUsd

`func (o *UniswapDayDataV3DTO) GetTvlUsd() string`

GetTvlUsd returns the TvlUsd field if non-nil, zero value otherwise.

### GetTvlUsdOk

`func (o *UniswapDayDataV3DTO) GetTvlUsdOk() (*string, bool)`

GetTvlUsdOk returns a tuple with the TvlUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTvlUsd

`func (o *UniswapDayDataV3DTO) SetTvlUsd(v string)`

SetTvlUsd sets TvlUsd field to given value.

### HasTvlUsd

`func (o *UniswapDayDataV3DTO) HasTvlUsd() bool`

HasTvlUsd returns a boolean if a field has been set.

### SetTvlUsdNil

`func (o *UniswapDayDataV3DTO) SetTvlUsdNil(b bool)`

 SetTvlUsdNil sets the value for TvlUsd to be an explicit nil

### UnsetTvlUsd
`func (o *UniswapDayDataV3DTO) UnsetTvlUsd()`

UnsetTvlUsd ensures that no value is present for TvlUsd, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


