# TokenV3DayDataDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** |  | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 
**Id** | Pointer to **NullableString** |  | [optional] 
**Date** | Pointer to **int32** |  | [optional] 
**Token** | Pointer to **NullableString** |  | [optional] 
**Volume** | Pointer to **NullableString** |  | [optional] 
**VolumeUsd** | Pointer to **NullableString** |  | [optional] 
**UntrackedVolumeUsd** | Pointer to **NullableString** |  | [optional] 
**TotalValueLocked** | Pointer to **NullableString** |  | [optional] 
**TotalValueLockedUsd** | Pointer to **NullableString** |  | [optional] 
**PriceUsd** | Pointer to **NullableString** |  | [optional] 
**FeesUsd** | Pointer to **NullableString** |  | [optional] 
**Open** | Pointer to **NullableString** |  | [optional] 
**High** | Pointer to **NullableString** |  | [optional] 
**Low** | Pointer to **NullableString** |  | [optional] 
**Close** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewTokenV3DayDataDTO

`func NewTokenV3DayDataDTO() *TokenV3DayDataDTO`

NewTokenV3DayDataDTO instantiates a new TokenV3DayDataDTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTokenV3DayDataDTOWithDefaults

`func NewTokenV3DayDataDTOWithDefaults() *TokenV3DayDataDTO`

NewTokenV3DayDataDTOWithDefaults instantiates a new TokenV3DayDataDTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *TokenV3DayDataDTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *TokenV3DayDataDTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *TokenV3DayDataDTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *TokenV3DayDataDTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *TokenV3DayDataDTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *TokenV3DayDataDTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *TokenV3DayDataDTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *TokenV3DayDataDTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *TokenV3DayDataDTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *TokenV3DayDataDTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *TokenV3DayDataDTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *TokenV3DayDataDTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetVid

`func (o *TokenV3DayDataDTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *TokenV3DayDataDTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *TokenV3DayDataDTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *TokenV3DayDataDTO) HasVid() bool`

HasVid returns a boolean if a field has been set.

### GetId

`func (o *TokenV3DayDataDTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *TokenV3DayDataDTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *TokenV3DayDataDTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *TokenV3DayDataDTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *TokenV3DayDataDTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *TokenV3DayDataDTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetDate

`func (o *TokenV3DayDataDTO) GetDate() int32`

GetDate returns the Date field if non-nil, zero value otherwise.

### GetDateOk

`func (o *TokenV3DayDataDTO) GetDateOk() (*int32, bool)`

GetDateOk returns a tuple with the Date field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDate

`func (o *TokenV3DayDataDTO) SetDate(v int32)`

SetDate sets Date field to given value.

### HasDate

`func (o *TokenV3DayDataDTO) HasDate() bool`

HasDate returns a boolean if a field has been set.

### GetToken

`func (o *TokenV3DayDataDTO) GetToken() string`

GetToken returns the Token field if non-nil, zero value otherwise.

### GetTokenOk

`func (o *TokenV3DayDataDTO) GetTokenOk() (*string, bool)`

GetTokenOk returns a tuple with the Token field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken

`func (o *TokenV3DayDataDTO) SetToken(v string)`

SetToken sets Token field to given value.

### HasToken

`func (o *TokenV3DayDataDTO) HasToken() bool`

HasToken returns a boolean if a field has been set.

### SetTokenNil

`func (o *TokenV3DayDataDTO) SetTokenNil(b bool)`

 SetTokenNil sets the value for Token to be an explicit nil

### UnsetToken
`func (o *TokenV3DayDataDTO) UnsetToken()`

UnsetToken ensures that no value is present for Token, not even an explicit nil
### GetVolume

`func (o *TokenV3DayDataDTO) GetVolume() string`

GetVolume returns the Volume field if non-nil, zero value otherwise.

### GetVolumeOk

`func (o *TokenV3DayDataDTO) GetVolumeOk() (*string, bool)`

GetVolumeOk returns a tuple with the Volume field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolume

`func (o *TokenV3DayDataDTO) SetVolume(v string)`

SetVolume sets Volume field to given value.

### HasVolume

`func (o *TokenV3DayDataDTO) HasVolume() bool`

HasVolume returns a boolean if a field has been set.

### SetVolumeNil

`func (o *TokenV3DayDataDTO) SetVolumeNil(b bool)`

 SetVolumeNil sets the value for Volume to be an explicit nil

### UnsetVolume
`func (o *TokenV3DayDataDTO) UnsetVolume()`

UnsetVolume ensures that no value is present for Volume, not even an explicit nil
### GetVolumeUsd

`func (o *TokenV3DayDataDTO) GetVolumeUsd() string`

GetVolumeUsd returns the VolumeUsd field if non-nil, zero value otherwise.

### GetVolumeUsdOk

`func (o *TokenV3DayDataDTO) GetVolumeUsdOk() (*string, bool)`

GetVolumeUsdOk returns a tuple with the VolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeUsd

`func (o *TokenV3DayDataDTO) SetVolumeUsd(v string)`

SetVolumeUsd sets VolumeUsd field to given value.

### HasVolumeUsd

`func (o *TokenV3DayDataDTO) HasVolumeUsd() bool`

HasVolumeUsd returns a boolean if a field has been set.

### SetVolumeUsdNil

`func (o *TokenV3DayDataDTO) SetVolumeUsdNil(b bool)`

 SetVolumeUsdNil sets the value for VolumeUsd to be an explicit nil

### UnsetVolumeUsd
`func (o *TokenV3DayDataDTO) UnsetVolumeUsd()`

UnsetVolumeUsd ensures that no value is present for VolumeUsd, not even an explicit nil
### GetUntrackedVolumeUsd

`func (o *TokenV3DayDataDTO) GetUntrackedVolumeUsd() string`

GetUntrackedVolumeUsd returns the UntrackedVolumeUsd field if non-nil, zero value otherwise.

### GetUntrackedVolumeUsdOk

`func (o *TokenV3DayDataDTO) GetUntrackedVolumeUsdOk() (*string, bool)`

GetUntrackedVolumeUsdOk returns a tuple with the UntrackedVolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUntrackedVolumeUsd

`func (o *TokenV3DayDataDTO) SetUntrackedVolumeUsd(v string)`

SetUntrackedVolumeUsd sets UntrackedVolumeUsd field to given value.

### HasUntrackedVolumeUsd

`func (o *TokenV3DayDataDTO) HasUntrackedVolumeUsd() bool`

HasUntrackedVolumeUsd returns a boolean if a field has been set.

### SetUntrackedVolumeUsdNil

`func (o *TokenV3DayDataDTO) SetUntrackedVolumeUsdNil(b bool)`

 SetUntrackedVolumeUsdNil sets the value for UntrackedVolumeUsd to be an explicit nil

### UnsetUntrackedVolumeUsd
`func (o *TokenV3DayDataDTO) UnsetUntrackedVolumeUsd()`

UnsetUntrackedVolumeUsd ensures that no value is present for UntrackedVolumeUsd, not even an explicit nil
### GetTotalValueLocked

`func (o *TokenV3DayDataDTO) GetTotalValueLocked() string`

GetTotalValueLocked returns the TotalValueLocked field if non-nil, zero value otherwise.

### GetTotalValueLockedOk

`func (o *TokenV3DayDataDTO) GetTotalValueLockedOk() (*string, bool)`

GetTotalValueLockedOk returns a tuple with the TotalValueLocked field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalValueLocked

`func (o *TokenV3DayDataDTO) SetTotalValueLocked(v string)`

SetTotalValueLocked sets TotalValueLocked field to given value.

### HasTotalValueLocked

`func (o *TokenV3DayDataDTO) HasTotalValueLocked() bool`

HasTotalValueLocked returns a boolean if a field has been set.

### SetTotalValueLockedNil

`func (o *TokenV3DayDataDTO) SetTotalValueLockedNil(b bool)`

 SetTotalValueLockedNil sets the value for TotalValueLocked to be an explicit nil

### UnsetTotalValueLocked
`func (o *TokenV3DayDataDTO) UnsetTotalValueLocked()`

UnsetTotalValueLocked ensures that no value is present for TotalValueLocked, not even an explicit nil
### GetTotalValueLockedUsd

`func (o *TokenV3DayDataDTO) GetTotalValueLockedUsd() string`

GetTotalValueLockedUsd returns the TotalValueLockedUsd field if non-nil, zero value otherwise.

### GetTotalValueLockedUsdOk

`func (o *TokenV3DayDataDTO) GetTotalValueLockedUsdOk() (*string, bool)`

GetTotalValueLockedUsdOk returns a tuple with the TotalValueLockedUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalValueLockedUsd

`func (o *TokenV3DayDataDTO) SetTotalValueLockedUsd(v string)`

SetTotalValueLockedUsd sets TotalValueLockedUsd field to given value.

### HasTotalValueLockedUsd

`func (o *TokenV3DayDataDTO) HasTotalValueLockedUsd() bool`

HasTotalValueLockedUsd returns a boolean if a field has been set.

### SetTotalValueLockedUsdNil

`func (o *TokenV3DayDataDTO) SetTotalValueLockedUsdNil(b bool)`

 SetTotalValueLockedUsdNil sets the value for TotalValueLockedUsd to be an explicit nil

### UnsetTotalValueLockedUsd
`func (o *TokenV3DayDataDTO) UnsetTotalValueLockedUsd()`

UnsetTotalValueLockedUsd ensures that no value is present for TotalValueLockedUsd, not even an explicit nil
### GetPriceUsd

`func (o *TokenV3DayDataDTO) GetPriceUsd() string`

GetPriceUsd returns the PriceUsd field if non-nil, zero value otherwise.

### GetPriceUsdOk

`func (o *TokenV3DayDataDTO) GetPriceUsdOk() (*string, bool)`

GetPriceUsdOk returns a tuple with the PriceUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceUsd

`func (o *TokenV3DayDataDTO) SetPriceUsd(v string)`

SetPriceUsd sets PriceUsd field to given value.

### HasPriceUsd

`func (o *TokenV3DayDataDTO) HasPriceUsd() bool`

HasPriceUsd returns a boolean if a field has been set.

### SetPriceUsdNil

`func (o *TokenV3DayDataDTO) SetPriceUsdNil(b bool)`

 SetPriceUsdNil sets the value for PriceUsd to be an explicit nil

### UnsetPriceUsd
`func (o *TokenV3DayDataDTO) UnsetPriceUsd()`

UnsetPriceUsd ensures that no value is present for PriceUsd, not even an explicit nil
### GetFeesUsd

`func (o *TokenV3DayDataDTO) GetFeesUsd() string`

GetFeesUsd returns the FeesUsd field if non-nil, zero value otherwise.

### GetFeesUsdOk

`func (o *TokenV3DayDataDTO) GetFeesUsdOk() (*string, bool)`

GetFeesUsdOk returns a tuple with the FeesUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeesUsd

`func (o *TokenV3DayDataDTO) SetFeesUsd(v string)`

SetFeesUsd sets FeesUsd field to given value.

### HasFeesUsd

`func (o *TokenV3DayDataDTO) HasFeesUsd() bool`

HasFeesUsd returns a boolean if a field has been set.

### SetFeesUsdNil

`func (o *TokenV3DayDataDTO) SetFeesUsdNil(b bool)`

 SetFeesUsdNil sets the value for FeesUsd to be an explicit nil

### UnsetFeesUsd
`func (o *TokenV3DayDataDTO) UnsetFeesUsd()`

UnsetFeesUsd ensures that no value is present for FeesUsd, not even an explicit nil
### GetOpen

`func (o *TokenV3DayDataDTO) GetOpen() string`

GetOpen returns the Open field if non-nil, zero value otherwise.

### GetOpenOk

`func (o *TokenV3DayDataDTO) GetOpenOk() (*string, bool)`

GetOpenOk returns a tuple with the Open field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOpen

`func (o *TokenV3DayDataDTO) SetOpen(v string)`

SetOpen sets Open field to given value.

### HasOpen

`func (o *TokenV3DayDataDTO) HasOpen() bool`

HasOpen returns a boolean if a field has been set.

### SetOpenNil

`func (o *TokenV3DayDataDTO) SetOpenNil(b bool)`

 SetOpenNil sets the value for Open to be an explicit nil

### UnsetOpen
`func (o *TokenV3DayDataDTO) UnsetOpen()`

UnsetOpen ensures that no value is present for Open, not even an explicit nil
### GetHigh

`func (o *TokenV3DayDataDTO) GetHigh() string`

GetHigh returns the High field if non-nil, zero value otherwise.

### GetHighOk

`func (o *TokenV3DayDataDTO) GetHighOk() (*string, bool)`

GetHighOk returns a tuple with the High field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHigh

`func (o *TokenV3DayDataDTO) SetHigh(v string)`

SetHigh sets High field to given value.

### HasHigh

`func (o *TokenV3DayDataDTO) HasHigh() bool`

HasHigh returns a boolean if a field has been set.

### SetHighNil

`func (o *TokenV3DayDataDTO) SetHighNil(b bool)`

 SetHighNil sets the value for High to be an explicit nil

### UnsetHigh
`func (o *TokenV3DayDataDTO) UnsetHigh()`

UnsetHigh ensures that no value is present for High, not even an explicit nil
### GetLow

`func (o *TokenV3DayDataDTO) GetLow() string`

GetLow returns the Low field if non-nil, zero value otherwise.

### GetLowOk

`func (o *TokenV3DayDataDTO) GetLowOk() (*string, bool)`

GetLowOk returns a tuple with the Low field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLow

`func (o *TokenV3DayDataDTO) SetLow(v string)`

SetLow sets Low field to given value.

### HasLow

`func (o *TokenV3DayDataDTO) HasLow() bool`

HasLow returns a boolean if a field has been set.

### SetLowNil

`func (o *TokenV3DayDataDTO) SetLowNil(b bool)`

 SetLowNil sets the value for Low to be an explicit nil

### UnsetLow
`func (o *TokenV3DayDataDTO) UnsetLow()`

UnsetLow ensures that no value is present for Low, not even an explicit nil
### GetClose

`func (o *TokenV3DayDataDTO) GetClose() string`

GetClose returns the Close field if non-nil, zero value otherwise.

### GetCloseOk

`func (o *TokenV3DayDataDTO) GetCloseOk() (*string, bool)`

GetCloseOk returns a tuple with the Close field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClose

`func (o *TokenV3DayDataDTO) SetClose(v string)`

SetClose sets Close field to given value.

### HasClose

`func (o *TokenV3DayDataDTO) HasClose() bool`

HasClose returns a boolean if a field has been set.

### SetCloseNil

`func (o *TokenV3DayDataDTO) SetCloseNil(b bool)`

 SetCloseNil sets the value for Close to be an explicit nil

### UnsetClose
`func (o *TokenV3DayDataDTO) UnsetClose()`

UnsetClose ensures that no value is present for Close, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


