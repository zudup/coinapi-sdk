# UniswapV2TokenDayDataV2DTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Id** | Pointer to **NullableString** | Token address and day id (day start timestamp in unix / 86400) concatenated with a dash. | [optional] 
**Date** | Pointer to **int32** | Unix timestamp for start of day. | [optional] 
**Token** | Pointer to **NullableString** | Reference to token entity. | [optional] 
**DailyVolumeToken** | Pointer to **NullableString** | Amount of token swapped across all pairs throughout day. | [optional] 
**DailyVolumeEth** | Pointer to **NullableString** | Amount of token swapped across all pairs throughout day stored as a derived amount of ETH. | [optional] 
**DailyVolumeUsd** | Pointer to **NullableString** | Amount of token swapped across all pairs throughout day stored as a derived amount of USD. | [optional] 
**DailyTxns** | Pointer to **NullableString** | Amount of transactions with this token across all pairs. | [optional] 
**TotalLiquidityToken** | Pointer to **NullableString** | Token amount of token deposited across all pairs. | [optional] 
**TotalLiquidityEth** | Pointer to **NullableString** | Token amount of token deposited across all pairs stored as amount of ETH. | [optional] 
**TotalLiquidityUsd** | Pointer to **NullableString** | Token amount of token deposited across all pairs stored as amount of USD. | [optional] 
**PriceUsd** | Pointer to **NullableString** | Price of token in derived USD. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 

## Methods

### NewUniswapV2TokenDayDataV2DTO

`func NewUniswapV2TokenDayDataV2DTO() *UniswapV2TokenDayDataV2DTO`

NewUniswapV2TokenDayDataV2DTO instantiates a new UniswapV2TokenDayDataV2DTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUniswapV2TokenDayDataV2DTOWithDefaults

`func NewUniswapV2TokenDayDataV2DTOWithDefaults() *UniswapV2TokenDayDataV2DTO`

NewUniswapV2TokenDayDataV2DTOWithDefaults instantiates a new UniswapV2TokenDayDataV2DTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *UniswapV2TokenDayDataV2DTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *UniswapV2TokenDayDataV2DTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *UniswapV2TokenDayDataV2DTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *UniswapV2TokenDayDataV2DTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *UniswapV2TokenDayDataV2DTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *UniswapV2TokenDayDataV2DTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *UniswapV2TokenDayDataV2DTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *UniswapV2TokenDayDataV2DTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *UniswapV2TokenDayDataV2DTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *UniswapV2TokenDayDataV2DTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *UniswapV2TokenDayDataV2DTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *UniswapV2TokenDayDataV2DTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *UniswapV2TokenDayDataV2DTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *UniswapV2TokenDayDataV2DTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *UniswapV2TokenDayDataV2DTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *UniswapV2TokenDayDataV2DTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *UniswapV2TokenDayDataV2DTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *UniswapV2TokenDayDataV2DTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetDate

`func (o *UniswapV2TokenDayDataV2DTO) GetDate() int32`

GetDate returns the Date field if non-nil, zero value otherwise.

### GetDateOk

`func (o *UniswapV2TokenDayDataV2DTO) GetDateOk() (*int32, bool)`

GetDateOk returns a tuple with the Date field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDate

`func (o *UniswapV2TokenDayDataV2DTO) SetDate(v int32)`

SetDate sets Date field to given value.

### HasDate

`func (o *UniswapV2TokenDayDataV2DTO) HasDate() bool`

HasDate returns a boolean if a field has been set.

### GetToken

`func (o *UniswapV2TokenDayDataV2DTO) GetToken() string`

GetToken returns the Token field if non-nil, zero value otherwise.

### GetTokenOk

`func (o *UniswapV2TokenDayDataV2DTO) GetTokenOk() (*string, bool)`

GetTokenOk returns a tuple with the Token field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken

`func (o *UniswapV2TokenDayDataV2DTO) SetToken(v string)`

SetToken sets Token field to given value.

### HasToken

`func (o *UniswapV2TokenDayDataV2DTO) HasToken() bool`

HasToken returns a boolean if a field has been set.

### SetTokenNil

`func (o *UniswapV2TokenDayDataV2DTO) SetTokenNil(b bool)`

 SetTokenNil sets the value for Token to be an explicit nil

### UnsetToken
`func (o *UniswapV2TokenDayDataV2DTO) UnsetToken()`

UnsetToken ensures that no value is present for Token, not even an explicit nil
### GetDailyVolumeToken

`func (o *UniswapV2TokenDayDataV2DTO) GetDailyVolumeToken() string`

GetDailyVolumeToken returns the DailyVolumeToken field if non-nil, zero value otherwise.

### GetDailyVolumeTokenOk

`func (o *UniswapV2TokenDayDataV2DTO) GetDailyVolumeTokenOk() (*string, bool)`

GetDailyVolumeTokenOk returns a tuple with the DailyVolumeToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDailyVolumeToken

`func (o *UniswapV2TokenDayDataV2DTO) SetDailyVolumeToken(v string)`

SetDailyVolumeToken sets DailyVolumeToken field to given value.

### HasDailyVolumeToken

`func (o *UniswapV2TokenDayDataV2DTO) HasDailyVolumeToken() bool`

HasDailyVolumeToken returns a boolean if a field has been set.

### SetDailyVolumeTokenNil

`func (o *UniswapV2TokenDayDataV2DTO) SetDailyVolumeTokenNil(b bool)`

 SetDailyVolumeTokenNil sets the value for DailyVolumeToken to be an explicit nil

### UnsetDailyVolumeToken
`func (o *UniswapV2TokenDayDataV2DTO) UnsetDailyVolumeToken()`

UnsetDailyVolumeToken ensures that no value is present for DailyVolumeToken, not even an explicit nil
### GetDailyVolumeEth

`func (o *UniswapV2TokenDayDataV2DTO) GetDailyVolumeEth() string`

GetDailyVolumeEth returns the DailyVolumeEth field if non-nil, zero value otherwise.

### GetDailyVolumeEthOk

`func (o *UniswapV2TokenDayDataV2DTO) GetDailyVolumeEthOk() (*string, bool)`

GetDailyVolumeEthOk returns a tuple with the DailyVolumeEth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDailyVolumeEth

`func (o *UniswapV2TokenDayDataV2DTO) SetDailyVolumeEth(v string)`

SetDailyVolumeEth sets DailyVolumeEth field to given value.

### HasDailyVolumeEth

`func (o *UniswapV2TokenDayDataV2DTO) HasDailyVolumeEth() bool`

HasDailyVolumeEth returns a boolean if a field has been set.

### SetDailyVolumeEthNil

`func (o *UniswapV2TokenDayDataV2DTO) SetDailyVolumeEthNil(b bool)`

 SetDailyVolumeEthNil sets the value for DailyVolumeEth to be an explicit nil

### UnsetDailyVolumeEth
`func (o *UniswapV2TokenDayDataV2DTO) UnsetDailyVolumeEth()`

UnsetDailyVolumeEth ensures that no value is present for DailyVolumeEth, not even an explicit nil
### GetDailyVolumeUsd

`func (o *UniswapV2TokenDayDataV2DTO) GetDailyVolumeUsd() string`

GetDailyVolumeUsd returns the DailyVolumeUsd field if non-nil, zero value otherwise.

### GetDailyVolumeUsdOk

`func (o *UniswapV2TokenDayDataV2DTO) GetDailyVolumeUsdOk() (*string, bool)`

GetDailyVolumeUsdOk returns a tuple with the DailyVolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDailyVolumeUsd

`func (o *UniswapV2TokenDayDataV2DTO) SetDailyVolumeUsd(v string)`

SetDailyVolumeUsd sets DailyVolumeUsd field to given value.

### HasDailyVolumeUsd

`func (o *UniswapV2TokenDayDataV2DTO) HasDailyVolumeUsd() bool`

HasDailyVolumeUsd returns a boolean if a field has been set.

### SetDailyVolumeUsdNil

`func (o *UniswapV2TokenDayDataV2DTO) SetDailyVolumeUsdNil(b bool)`

 SetDailyVolumeUsdNil sets the value for DailyVolumeUsd to be an explicit nil

### UnsetDailyVolumeUsd
`func (o *UniswapV2TokenDayDataV2DTO) UnsetDailyVolumeUsd()`

UnsetDailyVolumeUsd ensures that no value is present for DailyVolumeUsd, not even an explicit nil
### GetDailyTxns

`func (o *UniswapV2TokenDayDataV2DTO) GetDailyTxns() string`

GetDailyTxns returns the DailyTxns field if non-nil, zero value otherwise.

### GetDailyTxnsOk

`func (o *UniswapV2TokenDayDataV2DTO) GetDailyTxnsOk() (*string, bool)`

GetDailyTxnsOk returns a tuple with the DailyTxns field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDailyTxns

`func (o *UniswapV2TokenDayDataV2DTO) SetDailyTxns(v string)`

SetDailyTxns sets DailyTxns field to given value.

### HasDailyTxns

`func (o *UniswapV2TokenDayDataV2DTO) HasDailyTxns() bool`

HasDailyTxns returns a boolean if a field has been set.

### SetDailyTxnsNil

`func (o *UniswapV2TokenDayDataV2DTO) SetDailyTxnsNil(b bool)`

 SetDailyTxnsNil sets the value for DailyTxns to be an explicit nil

### UnsetDailyTxns
`func (o *UniswapV2TokenDayDataV2DTO) UnsetDailyTxns()`

UnsetDailyTxns ensures that no value is present for DailyTxns, not even an explicit nil
### GetTotalLiquidityToken

`func (o *UniswapV2TokenDayDataV2DTO) GetTotalLiquidityToken() string`

GetTotalLiquidityToken returns the TotalLiquidityToken field if non-nil, zero value otherwise.

### GetTotalLiquidityTokenOk

`func (o *UniswapV2TokenDayDataV2DTO) GetTotalLiquidityTokenOk() (*string, bool)`

GetTotalLiquidityTokenOk returns a tuple with the TotalLiquidityToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalLiquidityToken

`func (o *UniswapV2TokenDayDataV2DTO) SetTotalLiquidityToken(v string)`

SetTotalLiquidityToken sets TotalLiquidityToken field to given value.

### HasTotalLiquidityToken

`func (o *UniswapV2TokenDayDataV2DTO) HasTotalLiquidityToken() bool`

HasTotalLiquidityToken returns a boolean if a field has been set.

### SetTotalLiquidityTokenNil

`func (o *UniswapV2TokenDayDataV2DTO) SetTotalLiquidityTokenNil(b bool)`

 SetTotalLiquidityTokenNil sets the value for TotalLiquidityToken to be an explicit nil

### UnsetTotalLiquidityToken
`func (o *UniswapV2TokenDayDataV2DTO) UnsetTotalLiquidityToken()`

UnsetTotalLiquidityToken ensures that no value is present for TotalLiquidityToken, not even an explicit nil
### GetTotalLiquidityEth

`func (o *UniswapV2TokenDayDataV2DTO) GetTotalLiquidityEth() string`

GetTotalLiquidityEth returns the TotalLiquidityEth field if non-nil, zero value otherwise.

### GetTotalLiquidityEthOk

`func (o *UniswapV2TokenDayDataV2DTO) GetTotalLiquidityEthOk() (*string, bool)`

GetTotalLiquidityEthOk returns a tuple with the TotalLiquidityEth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalLiquidityEth

`func (o *UniswapV2TokenDayDataV2DTO) SetTotalLiquidityEth(v string)`

SetTotalLiquidityEth sets TotalLiquidityEth field to given value.

### HasTotalLiquidityEth

`func (o *UniswapV2TokenDayDataV2DTO) HasTotalLiquidityEth() bool`

HasTotalLiquidityEth returns a boolean if a field has been set.

### SetTotalLiquidityEthNil

`func (o *UniswapV2TokenDayDataV2DTO) SetTotalLiquidityEthNil(b bool)`

 SetTotalLiquidityEthNil sets the value for TotalLiquidityEth to be an explicit nil

### UnsetTotalLiquidityEth
`func (o *UniswapV2TokenDayDataV2DTO) UnsetTotalLiquidityEth()`

UnsetTotalLiquidityEth ensures that no value is present for TotalLiquidityEth, not even an explicit nil
### GetTotalLiquidityUsd

`func (o *UniswapV2TokenDayDataV2DTO) GetTotalLiquidityUsd() string`

GetTotalLiquidityUsd returns the TotalLiquidityUsd field if non-nil, zero value otherwise.

### GetTotalLiquidityUsdOk

`func (o *UniswapV2TokenDayDataV2DTO) GetTotalLiquidityUsdOk() (*string, bool)`

GetTotalLiquidityUsdOk returns a tuple with the TotalLiquidityUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalLiquidityUsd

`func (o *UniswapV2TokenDayDataV2DTO) SetTotalLiquidityUsd(v string)`

SetTotalLiquidityUsd sets TotalLiquidityUsd field to given value.

### HasTotalLiquidityUsd

`func (o *UniswapV2TokenDayDataV2DTO) HasTotalLiquidityUsd() bool`

HasTotalLiquidityUsd returns a boolean if a field has been set.

### SetTotalLiquidityUsdNil

`func (o *UniswapV2TokenDayDataV2DTO) SetTotalLiquidityUsdNil(b bool)`

 SetTotalLiquidityUsdNil sets the value for TotalLiquidityUsd to be an explicit nil

### UnsetTotalLiquidityUsd
`func (o *UniswapV2TokenDayDataV2DTO) UnsetTotalLiquidityUsd()`

UnsetTotalLiquidityUsd ensures that no value is present for TotalLiquidityUsd, not even an explicit nil
### GetPriceUsd

`func (o *UniswapV2TokenDayDataV2DTO) GetPriceUsd() string`

GetPriceUsd returns the PriceUsd field if non-nil, zero value otherwise.

### GetPriceUsdOk

`func (o *UniswapV2TokenDayDataV2DTO) GetPriceUsdOk() (*string, bool)`

GetPriceUsdOk returns a tuple with the PriceUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceUsd

`func (o *UniswapV2TokenDayDataV2DTO) SetPriceUsd(v string)`

SetPriceUsd sets PriceUsd field to given value.

### HasPriceUsd

`func (o *UniswapV2TokenDayDataV2DTO) HasPriceUsd() bool`

HasPriceUsd returns a boolean if a field has been set.

### SetPriceUsdNil

`func (o *UniswapV2TokenDayDataV2DTO) SetPriceUsdNil(b bool)`

 SetPriceUsdNil sets the value for PriceUsd to be an explicit nil

### UnsetPriceUsd
`func (o *UniswapV2TokenDayDataV2DTO) UnsetPriceUsd()`

UnsetPriceUsd ensures that no value is present for PriceUsd, not even an explicit nil
### GetVid

`func (o *UniswapV2TokenDayDataV2DTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *UniswapV2TokenDayDataV2DTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *UniswapV2TokenDayDataV2DTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *UniswapV2TokenDayDataV2DTO) HasVid() bool`

HasVid returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


