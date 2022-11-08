# UniswapV2TransactionV2DTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Id** | Pointer to **NullableString** | Ethereum transaction hash. | [optional] 
**Timestamp** | Pointer to **NullableString** | Timestamp. | [optional] 
**Mints** | Pointer to **[]string** | Array of Mint events within the transaction, 0 or greater. | [optional] 
**Burns** | Pointer to **[]string** | Array of Burn events within transaction, 0 or greater. | [optional] 
**Swaps** | Pointer to **[]string** | Array of Swap events within transaction, 0 or greater. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 

## Methods

### NewUniswapV2TransactionV2DTO

`func NewUniswapV2TransactionV2DTO() *UniswapV2TransactionV2DTO`

NewUniswapV2TransactionV2DTO instantiates a new UniswapV2TransactionV2DTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUniswapV2TransactionV2DTOWithDefaults

`func NewUniswapV2TransactionV2DTOWithDefaults() *UniswapV2TransactionV2DTO`

NewUniswapV2TransactionV2DTOWithDefaults instantiates a new UniswapV2TransactionV2DTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *UniswapV2TransactionV2DTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *UniswapV2TransactionV2DTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *UniswapV2TransactionV2DTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *UniswapV2TransactionV2DTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *UniswapV2TransactionV2DTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *UniswapV2TransactionV2DTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *UniswapV2TransactionV2DTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *UniswapV2TransactionV2DTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *UniswapV2TransactionV2DTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *UniswapV2TransactionV2DTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *UniswapV2TransactionV2DTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *UniswapV2TransactionV2DTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *UniswapV2TransactionV2DTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *UniswapV2TransactionV2DTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *UniswapV2TransactionV2DTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *UniswapV2TransactionV2DTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *UniswapV2TransactionV2DTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *UniswapV2TransactionV2DTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetTimestamp

`func (o *UniswapV2TransactionV2DTO) GetTimestamp() string`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *UniswapV2TransactionV2DTO) GetTimestampOk() (*string, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *UniswapV2TransactionV2DTO) SetTimestamp(v string)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *UniswapV2TransactionV2DTO) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### SetTimestampNil

`func (o *UniswapV2TransactionV2DTO) SetTimestampNil(b bool)`

 SetTimestampNil sets the value for Timestamp to be an explicit nil

### UnsetTimestamp
`func (o *UniswapV2TransactionV2DTO) UnsetTimestamp()`

UnsetTimestamp ensures that no value is present for Timestamp, not even an explicit nil
### GetMints

`func (o *UniswapV2TransactionV2DTO) GetMints() []string`

GetMints returns the Mints field if non-nil, zero value otherwise.

### GetMintsOk

`func (o *UniswapV2TransactionV2DTO) GetMintsOk() (*[]string, bool)`

GetMintsOk returns a tuple with the Mints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMints

`func (o *UniswapV2TransactionV2DTO) SetMints(v []string)`

SetMints sets Mints field to given value.

### HasMints

`func (o *UniswapV2TransactionV2DTO) HasMints() bool`

HasMints returns a boolean if a field has been set.

### SetMintsNil

`func (o *UniswapV2TransactionV2DTO) SetMintsNil(b bool)`

 SetMintsNil sets the value for Mints to be an explicit nil

### UnsetMints
`func (o *UniswapV2TransactionV2DTO) UnsetMints()`

UnsetMints ensures that no value is present for Mints, not even an explicit nil
### GetBurns

`func (o *UniswapV2TransactionV2DTO) GetBurns() []string`

GetBurns returns the Burns field if non-nil, zero value otherwise.

### GetBurnsOk

`func (o *UniswapV2TransactionV2DTO) GetBurnsOk() (*[]string, bool)`

GetBurnsOk returns a tuple with the Burns field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBurns

`func (o *UniswapV2TransactionV2DTO) SetBurns(v []string)`

SetBurns sets Burns field to given value.

### HasBurns

`func (o *UniswapV2TransactionV2DTO) HasBurns() bool`

HasBurns returns a boolean if a field has been set.

### SetBurnsNil

`func (o *UniswapV2TransactionV2DTO) SetBurnsNil(b bool)`

 SetBurnsNil sets the value for Burns to be an explicit nil

### UnsetBurns
`func (o *UniswapV2TransactionV2DTO) UnsetBurns()`

UnsetBurns ensures that no value is present for Burns, not even an explicit nil
### GetSwaps

`func (o *UniswapV2TransactionV2DTO) GetSwaps() []string`

GetSwaps returns the Swaps field if non-nil, zero value otherwise.

### GetSwapsOk

`func (o *UniswapV2TransactionV2DTO) GetSwapsOk() (*[]string, bool)`

GetSwapsOk returns a tuple with the Swaps field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSwaps

`func (o *UniswapV2TransactionV2DTO) SetSwaps(v []string)`

SetSwaps sets Swaps field to given value.

### HasSwaps

`func (o *UniswapV2TransactionV2DTO) HasSwaps() bool`

HasSwaps returns a boolean if a field has been set.

### SetSwapsNil

`func (o *UniswapV2TransactionV2DTO) SetSwapsNil(b bool)`

 SetSwapsNil sets the value for Swaps to be an explicit nil

### UnsetSwaps
`func (o *UniswapV2TransactionV2DTO) UnsetSwaps()`

UnsetSwaps ensures that no value is present for Swaps, not even an explicit nil
### GetVid

`func (o *UniswapV2TransactionV2DTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *UniswapV2TransactionV2DTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *UniswapV2TransactionV2DTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *UniswapV2TransactionV2DTO) HasVid() bool`

HasVid returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


