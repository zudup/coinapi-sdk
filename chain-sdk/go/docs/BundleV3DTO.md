# BundleV3DTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** |  | [optional] 
**Id** | Pointer to **NullableString** |  | [optional] 
**EthPriceUsd** | Pointer to **NullableString** |  | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 

## Methods

### NewBundleV3DTO

`func NewBundleV3DTO() *BundleV3DTO`

NewBundleV3DTO instantiates a new BundleV3DTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBundleV3DTOWithDefaults

`func NewBundleV3DTOWithDefaults() *BundleV3DTO`

NewBundleV3DTOWithDefaults instantiates a new BundleV3DTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *BundleV3DTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *BundleV3DTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *BundleV3DTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *BundleV3DTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *BundleV3DTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *BundleV3DTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *BundleV3DTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *BundleV3DTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *BundleV3DTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *BundleV3DTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *BundleV3DTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *BundleV3DTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *BundleV3DTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *BundleV3DTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *BundleV3DTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *BundleV3DTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *BundleV3DTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *BundleV3DTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetEthPriceUsd

`func (o *BundleV3DTO) GetEthPriceUsd() string`

GetEthPriceUsd returns the EthPriceUsd field if non-nil, zero value otherwise.

### GetEthPriceUsdOk

`func (o *BundleV3DTO) GetEthPriceUsdOk() (*string, bool)`

GetEthPriceUsdOk returns a tuple with the EthPriceUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEthPriceUsd

`func (o *BundleV3DTO) SetEthPriceUsd(v string)`

SetEthPriceUsd sets EthPriceUsd field to given value.

### HasEthPriceUsd

`func (o *BundleV3DTO) HasEthPriceUsd() bool`

HasEthPriceUsd returns a boolean if a field has been set.

### SetEthPriceUsdNil

`func (o *BundleV3DTO) SetEthPriceUsdNil(b bool)`

 SetEthPriceUsdNil sets the value for EthPriceUsd to be an explicit nil

### UnsetEthPriceUsd
`func (o *BundleV3DTO) UnsetEthPriceUsd()`

UnsetEthPriceUsd ensures that no value is present for EthPriceUsd, not even an explicit nil
### GetVid

`func (o *BundleV3DTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *BundleV3DTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *BundleV3DTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *BundleV3DTO) HasVid() bool`

HasVid returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

