# TokenHourDataV3DTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** |  | [optional] 
**Id** | Pointer to **NullableString** | Token address concatendated with date. | [optional] 
**PeriodStartUnix** | Pointer to **int32** | Unix timestamp for start of hour. | [optional] 
**Token** | Pointer to **NullableString** | Pointer to token. | [optional] 
**Volume** | Pointer to **NullableString** | Volume in token units. | [optional] 
**VolumeUsd** | Pointer to **NullableString** | Volume in derived USD. | [optional] 
**UntrackedVolumeUsd** | Pointer to **NullableString** | Volume in USD even on pools with less reliable USD values. | [optional] 
**TotalValueLocked** | Pointer to **NullableString** | Liquidity across all pools in token units. | [optional] 
**TotalValueLockedUsd** | Pointer to **NullableString** | Liquidity across all pools in derived USD. | [optional] 
**PriceUsd** | Pointer to **NullableString** | Price at end of period in USD. | [optional] 
**FeesUsd** | Pointer to **NullableString** | Fees in USD. | [optional] 
**Open** | Pointer to **NullableString** | Opening price USD. | [optional] 
**High** | Pointer to **NullableString** | High price USD. | [optional] 
**Low** | Pointer to **NullableString** | Low price USD. | [optional] 
**Close** | Pointer to **NullableString** | Close price USD. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 

## Methods

### NewTokenHourDataV3DTO

`func NewTokenHourDataV3DTO() *TokenHourDataV3DTO`

NewTokenHourDataV3DTO instantiates a new TokenHourDataV3DTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTokenHourDataV3DTOWithDefaults

`func NewTokenHourDataV3DTOWithDefaults() *TokenHourDataV3DTO`

NewTokenHourDataV3DTOWithDefaults instantiates a new TokenHourDataV3DTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *TokenHourDataV3DTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *TokenHourDataV3DTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *TokenHourDataV3DTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *TokenHourDataV3DTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *TokenHourDataV3DTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *TokenHourDataV3DTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *TokenHourDataV3DTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *TokenHourDataV3DTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *TokenHourDataV3DTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *TokenHourDataV3DTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *TokenHourDataV3DTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *TokenHourDataV3DTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *TokenHourDataV3DTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *TokenHourDataV3DTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *TokenHourDataV3DTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *TokenHourDataV3DTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *TokenHourDataV3DTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *TokenHourDataV3DTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetPeriodStartUnix

`func (o *TokenHourDataV3DTO) GetPeriodStartUnix() int32`

GetPeriodStartUnix returns the PeriodStartUnix field if non-nil, zero value otherwise.

### GetPeriodStartUnixOk

`func (o *TokenHourDataV3DTO) GetPeriodStartUnixOk() (*int32, bool)`

GetPeriodStartUnixOk returns a tuple with the PeriodStartUnix field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPeriodStartUnix

`func (o *TokenHourDataV3DTO) SetPeriodStartUnix(v int32)`

SetPeriodStartUnix sets PeriodStartUnix field to given value.

### HasPeriodStartUnix

`func (o *TokenHourDataV3DTO) HasPeriodStartUnix() bool`

HasPeriodStartUnix returns a boolean if a field has been set.

### GetToken

`func (o *TokenHourDataV3DTO) GetToken() string`

GetToken returns the Token field if non-nil, zero value otherwise.

### GetTokenOk

`func (o *TokenHourDataV3DTO) GetTokenOk() (*string, bool)`

GetTokenOk returns a tuple with the Token field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken

`func (o *TokenHourDataV3DTO) SetToken(v string)`

SetToken sets Token field to given value.

### HasToken

`func (o *TokenHourDataV3DTO) HasToken() bool`

HasToken returns a boolean if a field has been set.

### SetTokenNil

`func (o *TokenHourDataV3DTO) SetTokenNil(b bool)`

 SetTokenNil sets the value for Token to be an explicit nil

### UnsetToken
`func (o *TokenHourDataV3DTO) UnsetToken()`

UnsetToken ensures that no value is present for Token, not even an explicit nil
### GetVolume

`func (o *TokenHourDataV3DTO) GetVolume() string`

GetVolume returns the Volume field if non-nil, zero value otherwise.

### GetVolumeOk

`func (o *TokenHourDataV3DTO) GetVolumeOk() (*string, bool)`

GetVolumeOk returns a tuple with the Volume field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolume

`func (o *TokenHourDataV3DTO) SetVolume(v string)`

SetVolume sets Volume field to given value.

### HasVolume

`func (o *TokenHourDataV3DTO) HasVolume() bool`

HasVolume returns a boolean if a field has been set.

### SetVolumeNil

`func (o *TokenHourDataV3DTO) SetVolumeNil(b bool)`

 SetVolumeNil sets the value for Volume to be an explicit nil

### UnsetVolume
`func (o *TokenHourDataV3DTO) UnsetVolume()`

UnsetVolume ensures that no value is present for Volume, not even an explicit nil
### GetVolumeUsd

`func (o *TokenHourDataV3DTO) GetVolumeUsd() string`

GetVolumeUsd returns the VolumeUsd field if non-nil, zero value otherwise.

### GetVolumeUsdOk

`func (o *TokenHourDataV3DTO) GetVolumeUsdOk() (*string, bool)`

GetVolumeUsdOk returns a tuple with the VolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeUsd

`func (o *TokenHourDataV3DTO) SetVolumeUsd(v string)`

SetVolumeUsd sets VolumeUsd field to given value.

### HasVolumeUsd

`func (o *TokenHourDataV3DTO) HasVolumeUsd() bool`

HasVolumeUsd returns a boolean if a field has been set.

### SetVolumeUsdNil

`func (o *TokenHourDataV3DTO) SetVolumeUsdNil(b bool)`

 SetVolumeUsdNil sets the value for VolumeUsd to be an explicit nil

### UnsetVolumeUsd
`func (o *TokenHourDataV3DTO) UnsetVolumeUsd()`

UnsetVolumeUsd ensures that no value is present for VolumeUsd, not even an explicit nil
### GetUntrackedVolumeUsd

`func (o *TokenHourDataV3DTO) GetUntrackedVolumeUsd() string`

GetUntrackedVolumeUsd returns the UntrackedVolumeUsd field if non-nil, zero value otherwise.

### GetUntrackedVolumeUsdOk

`func (o *TokenHourDataV3DTO) GetUntrackedVolumeUsdOk() (*string, bool)`

GetUntrackedVolumeUsdOk returns a tuple with the UntrackedVolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUntrackedVolumeUsd

`func (o *TokenHourDataV3DTO) SetUntrackedVolumeUsd(v string)`

SetUntrackedVolumeUsd sets UntrackedVolumeUsd field to given value.

### HasUntrackedVolumeUsd

`func (o *TokenHourDataV3DTO) HasUntrackedVolumeUsd() bool`

HasUntrackedVolumeUsd returns a boolean if a field has been set.

### SetUntrackedVolumeUsdNil

`func (o *TokenHourDataV3DTO) SetUntrackedVolumeUsdNil(b bool)`

 SetUntrackedVolumeUsdNil sets the value for UntrackedVolumeUsd to be an explicit nil

### UnsetUntrackedVolumeUsd
`func (o *TokenHourDataV3DTO) UnsetUntrackedVolumeUsd()`

UnsetUntrackedVolumeUsd ensures that no value is present for UntrackedVolumeUsd, not even an explicit nil
### GetTotalValueLocked

`func (o *TokenHourDataV3DTO) GetTotalValueLocked() string`

GetTotalValueLocked returns the TotalValueLocked field if non-nil, zero value otherwise.

### GetTotalValueLockedOk

`func (o *TokenHourDataV3DTO) GetTotalValueLockedOk() (*string, bool)`

GetTotalValueLockedOk returns a tuple with the TotalValueLocked field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalValueLocked

`func (o *TokenHourDataV3DTO) SetTotalValueLocked(v string)`

SetTotalValueLocked sets TotalValueLocked field to given value.

### HasTotalValueLocked

`func (o *TokenHourDataV3DTO) HasTotalValueLocked() bool`

HasTotalValueLocked returns a boolean if a field has been set.

### SetTotalValueLockedNil

`func (o *TokenHourDataV3DTO) SetTotalValueLockedNil(b bool)`

 SetTotalValueLockedNil sets the value for TotalValueLocked to be an explicit nil

### UnsetTotalValueLocked
`func (o *TokenHourDataV3DTO) UnsetTotalValueLocked()`

UnsetTotalValueLocked ensures that no value is present for TotalValueLocked, not even an explicit nil
### GetTotalValueLockedUsd

`func (o *TokenHourDataV3DTO) GetTotalValueLockedUsd() string`

GetTotalValueLockedUsd returns the TotalValueLockedUsd field if non-nil, zero value otherwise.

### GetTotalValueLockedUsdOk

`func (o *TokenHourDataV3DTO) GetTotalValueLockedUsdOk() (*string, bool)`

GetTotalValueLockedUsdOk returns a tuple with the TotalValueLockedUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalValueLockedUsd

`func (o *TokenHourDataV3DTO) SetTotalValueLockedUsd(v string)`

SetTotalValueLockedUsd sets TotalValueLockedUsd field to given value.

### HasTotalValueLockedUsd

`func (o *TokenHourDataV3DTO) HasTotalValueLockedUsd() bool`

HasTotalValueLockedUsd returns a boolean if a field has been set.

### SetTotalValueLockedUsdNil

`func (o *TokenHourDataV3DTO) SetTotalValueLockedUsdNil(b bool)`

 SetTotalValueLockedUsdNil sets the value for TotalValueLockedUsd to be an explicit nil

### UnsetTotalValueLockedUsd
`func (o *TokenHourDataV3DTO) UnsetTotalValueLockedUsd()`

UnsetTotalValueLockedUsd ensures that no value is present for TotalValueLockedUsd, not even an explicit nil
### GetPriceUsd

`func (o *TokenHourDataV3DTO) GetPriceUsd() string`

GetPriceUsd returns the PriceUsd field if non-nil, zero value otherwise.

### GetPriceUsdOk

`func (o *TokenHourDataV3DTO) GetPriceUsdOk() (*string, bool)`

GetPriceUsdOk returns a tuple with the PriceUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceUsd

`func (o *TokenHourDataV3DTO) SetPriceUsd(v string)`

SetPriceUsd sets PriceUsd field to given value.

### HasPriceUsd

`func (o *TokenHourDataV3DTO) HasPriceUsd() bool`

HasPriceUsd returns a boolean if a field has been set.

### SetPriceUsdNil

`func (o *TokenHourDataV3DTO) SetPriceUsdNil(b bool)`

 SetPriceUsdNil sets the value for PriceUsd to be an explicit nil

### UnsetPriceUsd
`func (o *TokenHourDataV3DTO) UnsetPriceUsd()`

UnsetPriceUsd ensures that no value is present for PriceUsd, not even an explicit nil
### GetFeesUsd

`func (o *TokenHourDataV3DTO) GetFeesUsd() string`

GetFeesUsd returns the FeesUsd field if non-nil, zero value otherwise.

### GetFeesUsdOk

`func (o *TokenHourDataV3DTO) GetFeesUsdOk() (*string, bool)`

GetFeesUsdOk returns a tuple with the FeesUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeesUsd

`func (o *TokenHourDataV3DTO) SetFeesUsd(v string)`

SetFeesUsd sets FeesUsd field to given value.

### HasFeesUsd

`func (o *TokenHourDataV3DTO) HasFeesUsd() bool`

HasFeesUsd returns a boolean if a field has been set.

### SetFeesUsdNil

`func (o *TokenHourDataV3DTO) SetFeesUsdNil(b bool)`

 SetFeesUsdNil sets the value for FeesUsd to be an explicit nil

### UnsetFeesUsd
`func (o *TokenHourDataV3DTO) UnsetFeesUsd()`

UnsetFeesUsd ensures that no value is present for FeesUsd, not even an explicit nil
### GetOpen

`func (o *TokenHourDataV3DTO) GetOpen() string`

GetOpen returns the Open field if non-nil, zero value otherwise.

### GetOpenOk

`func (o *TokenHourDataV3DTO) GetOpenOk() (*string, bool)`

GetOpenOk returns a tuple with the Open field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOpen

`func (o *TokenHourDataV3DTO) SetOpen(v string)`

SetOpen sets Open field to given value.

### HasOpen

`func (o *TokenHourDataV3DTO) HasOpen() bool`

HasOpen returns a boolean if a field has been set.

### SetOpenNil

`func (o *TokenHourDataV3DTO) SetOpenNil(b bool)`

 SetOpenNil sets the value for Open to be an explicit nil

### UnsetOpen
`func (o *TokenHourDataV3DTO) UnsetOpen()`

UnsetOpen ensures that no value is present for Open, not even an explicit nil
### GetHigh

`func (o *TokenHourDataV3DTO) GetHigh() string`

GetHigh returns the High field if non-nil, zero value otherwise.

### GetHighOk

`func (o *TokenHourDataV3DTO) GetHighOk() (*string, bool)`

GetHighOk returns a tuple with the High field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHigh

`func (o *TokenHourDataV3DTO) SetHigh(v string)`

SetHigh sets High field to given value.

### HasHigh

`func (o *TokenHourDataV3DTO) HasHigh() bool`

HasHigh returns a boolean if a field has been set.

### SetHighNil

`func (o *TokenHourDataV3DTO) SetHighNil(b bool)`

 SetHighNil sets the value for High to be an explicit nil

### UnsetHigh
`func (o *TokenHourDataV3DTO) UnsetHigh()`

UnsetHigh ensures that no value is present for High, not even an explicit nil
### GetLow

`func (o *TokenHourDataV3DTO) GetLow() string`

GetLow returns the Low field if non-nil, zero value otherwise.

### GetLowOk

`func (o *TokenHourDataV3DTO) GetLowOk() (*string, bool)`

GetLowOk returns a tuple with the Low field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLow

`func (o *TokenHourDataV3DTO) SetLow(v string)`

SetLow sets Low field to given value.

### HasLow

`func (o *TokenHourDataV3DTO) HasLow() bool`

HasLow returns a boolean if a field has been set.

### SetLowNil

`func (o *TokenHourDataV3DTO) SetLowNil(b bool)`

 SetLowNil sets the value for Low to be an explicit nil

### UnsetLow
`func (o *TokenHourDataV3DTO) UnsetLow()`

UnsetLow ensures that no value is present for Low, not even an explicit nil
### GetClose

`func (o *TokenHourDataV3DTO) GetClose() string`

GetClose returns the Close field if non-nil, zero value otherwise.

### GetCloseOk

`func (o *TokenHourDataV3DTO) GetCloseOk() (*string, bool)`

GetCloseOk returns a tuple with the Close field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClose

`func (o *TokenHourDataV3DTO) SetClose(v string)`

SetClose sets Close field to given value.

### HasClose

`func (o *TokenHourDataV3DTO) HasClose() bool`

HasClose returns a boolean if a field has been set.

### SetCloseNil

`func (o *TokenHourDataV3DTO) SetCloseNil(b bool)`

 SetCloseNil sets the value for Close to be an explicit nil

### UnsetClose
`func (o *TokenHourDataV3DTO) UnsetClose()`

UnsetClose ensures that no value is present for Close, not even an explicit nil
### GetVid

`func (o *TokenHourDataV3DTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *TokenHourDataV3DTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *TokenHourDataV3DTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *TokenHourDataV3DTO) HasVid() bool`

HasVid returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


