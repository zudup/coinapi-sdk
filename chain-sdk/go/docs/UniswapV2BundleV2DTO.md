# UniswapV2BundleV2DTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Id** | Pointer to **NullableString** | Constant 1. | [optional] 
**EthPrice** | Pointer to **NullableString** | Derived price of ETH in USD based on stablecoin pairs. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 
**BlockRange** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewUniswapV2BundleV2DTO

`func NewUniswapV2BundleV2DTO() *UniswapV2BundleV2DTO`

NewUniswapV2BundleV2DTO instantiates a new UniswapV2BundleV2DTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUniswapV2BundleV2DTOWithDefaults

`func NewUniswapV2BundleV2DTOWithDefaults() *UniswapV2BundleV2DTO`

NewUniswapV2BundleV2DTOWithDefaults instantiates a new UniswapV2BundleV2DTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *UniswapV2BundleV2DTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *UniswapV2BundleV2DTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *UniswapV2BundleV2DTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *UniswapV2BundleV2DTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *UniswapV2BundleV2DTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *UniswapV2BundleV2DTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *UniswapV2BundleV2DTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *UniswapV2BundleV2DTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *UniswapV2BundleV2DTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *UniswapV2BundleV2DTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *UniswapV2BundleV2DTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *UniswapV2BundleV2DTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *UniswapV2BundleV2DTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *UniswapV2BundleV2DTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *UniswapV2BundleV2DTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *UniswapV2BundleV2DTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *UniswapV2BundleV2DTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *UniswapV2BundleV2DTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetEthPrice

`func (o *UniswapV2BundleV2DTO) GetEthPrice() string`

GetEthPrice returns the EthPrice field if non-nil, zero value otherwise.

### GetEthPriceOk

`func (o *UniswapV2BundleV2DTO) GetEthPriceOk() (*string, bool)`

GetEthPriceOk returns a tuple with the EthPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEthPrice

`func (o *UniswapV2BundleV2DTO) SetEthPrice(v string)`

SetEthPrice sets EthPrice field to given value.

### HasEthPrice

`func (o *UniswapV2BundleV2DTO) HasEthPrice() bool`

HasEthPrice returns a boolean if a field has been set.

### SetEthPriceNil

`func (o *UniswapV2BundleV2DTO) SetEthPriceNil(b bool)`

 SetEthPriceNil sets the value for EthPrice to be an explicit nil

### UnsetEthPrice
`func (o *UniswapV2BundleV2DTO) UnsetEthPrice()`

UnsetEthPrice ensures that no value is present for EthPrice, not even an explicit nil
### GetVid

`func (o *UniswapV2BundleV2DTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *UniswapV2BundleV2DTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *UniswapV2BundleV2DTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *UniswapV2BundleV2DTO) HasVid() bool`

HasVid returns a boolean if a field has been set.

### GetBlockRange

`func (o *UniswapV2BundleV2DTO) GetBlockRange() string`

GetBlockRange returns the BlockRange field if non-nil, zero value otherwise.

### GetBlockRangeOk

`func (o *UniswapV2BundleV2DTO) GetBlockRangeOk() (*string, bool)`

GetBlockRangeOk returns a tuple with the BlockRange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockRange

`func (o *UniswapV2BundleV2DTO) SetBlockRange(v string)`

SetBlockRange sets BlockRange field to given value.

### HasBlockRange

`func (o *UniswapV2BundleV2DTO) HasBlockRange() bool`

HasBlockRange returns a boolean if a field has been set.

### SetBlockRangeNil

`func (o *UniswapV2BundleV2DTO) SetBlockRangeNil(b bool)`

 SetBlockRangeNil sets the value for BlockRange to be an explicit nil

### UnsetBlockRange
`func (o *UniswapV2BundleV2DTO) UnsetBlockRange()`

UnsetBlockRange ensures that no value is present for BlockRange, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


