# UniswapV2LiquidityPositionV2DTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Id** | Pointer to **NullableString** | User address and pair address concatenated with a dash. | [optional] 
**User** | Pointer to **NullableString** | Reference to user. | [optional] 
**Pair** | Pointer to **NullableString** | Reference to the pair liquidity is being provided on. | [optional] 
**LiquidityTokenBalance** | Pointer to **NullableString** | Amount of LP tokens minted for this position. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 

## Methods

### NewUniswapV2LiquidityPositionV2DTO

`func NewUniswapV2LiquidityPositionV2DTO() *UniswapV2LiquidityPositionV2DTO`

NewUniswapV2LiquidityPositionV2DTO instantiates a new UniswapV2LiquidityPositionV2DTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUniswapV2LiquidityPositionV2DTOWithDefaults

`func NewUniswapV2LiquidityPositionV2DTOWithDefaults() *UniswapV2LiquidityPositionV2DTO`

NewUniswapV2LiquidityPositionV2DTOWithDefaults instantiates a new UniswapV2LiquidityPositionV2DTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *UniswapV2LiquidityPositionV2DTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *UniswapV2LiquidityPositionV2DTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *UniswapV2LiquidityPositionV2DTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *UniswapV2LiquidityPositionV2DTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *UniswapV2LiquidityPositionV2DTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *UniswapV2LiquidityPositionV2DTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *UniswapV2LiquidityPositionV2DTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *UniswapV2LiquidityPositionV2DTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *UniswapV2LiquidityPositionV2DTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *UniswapV2LiquidityPositionV2DTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *UniswapV2LiquidityPositionV2DTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *UniswapV2LiquidityPositionV2DTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *UniswapV2LiquidityPositionV2DTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *UniswapV2LiquidityPositionV2DTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *UniswapV2LiquidityPositionV2DTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *UniswapV2LiquidityPositionV2DTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *UniswapV2LiquidityPositionV2DTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *UniswapV2LiquidityPositionV2DTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetUser

`func (o *UniswapV2LiquidityPositionV2DTO) GetUser() string`

GetUser returns the User field if non-nil, zero value otherwise.

### GetUserOk

`func (o *UniswapV2LiquidityPositionV2DTO) GetUserOk() (*string, bool)`

GetUserOk returns a tuple with the User field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUser

`func (o *UniswapV2LiquidityPositionV2DTO) SetUser(v string)`

SetUser sets User field to given value.

### HasUser

`func (o *UniswapV2LiquidityPositionV2DTO) HasUser() bool`

HasUser returns a boolean if a field has been set.

### SetUserNil

`func (o *UniswapV2LiquidityPositionV2DTO) SetUserNil(b bool)`

 SetUserNil sets the value for User to be an explicit nil

### UnsetUser
`func (o *UniswapV2LiquidityPositionV2DTO) UnsetUser()`

UnsetUser ensures that no value is present for User, not even an explicit nil
### GetPair

`func (o *UniswapV2LiquidityPositionV2DTO) GetPair() string`

GetPair returns the Pair field if non-nil, zero value otherwise.

### GetPairOk

`func (o *UniswapV2LiquidityPositionV2DTO) GetPairOk() (*string, bool)`

GetPairOk returns a tuple with the Pair field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPair

`func (o *UniswapV2LiquidityPositionV2DTO) SetPair(v string)`

SetPair sets Pair field to given value.

### HasPair

`func (o *UniswapV2LiquidityPositionV2DTO) HasPair() bool`

HasPair returns a boolean if a field has been set.

### SetPairNil

`func (o *UniswapV2LiquidityPositionV2DTO) SetPairNil(b bool)`

 SetPairNil sets the value for Pair to be an explicit nil

### UnsetPair
`func (o *UniswapV2LiquidityPositionV2DTO) UnsetPair()`

UnsetPair ensures that no value is present for Pair, not even an explicit nil
### GetLiquidityTokenBalance

`func (o *UniswapV2LiquidityPositionV2DTO) GetLiquidityTokenBalance() string`

GetLiquidityTokenBalance returns the LiquidityTokenBalance field if non-nil, zero value otherwise.

### GetLiquidityTokenBalanceOk

`func (o *UniswapV2LiquidityPositionV2DTO) GetLiquidityTokenBalanceOk() (*string, bool)`

GetLiquidityTokenBalanceOk returns a tuple with the LiquidityTokenBalance field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLiquidityTokenBalance

`func (o *UniswapV2LiquidityPositionV2DTO) SetLiquidityTokenBalance(v string)`

SetLiquidityTokenBalance sets LiquidityTokenBalance field to given value.

### HasLiquidityTokenBalance

`func (o *UniswapV2LiquidityPositionV2DTO) HasLiquidityTokenBalance() bool`

HasLiquidityTokenBalance returns a boolean if a field has been set.

### SetLiquidityTokenBalanceNil

`func (o *UniswapV2LiquidityPositionV2DTO) SetLiquidityTokenBalanceNil(b bool)`

 SetLiquidityTokenBalanceNil sets the value for LiquidityTokenBalance to be an explicit nil

### UnsetLiquidityTokenBalance
`func (o *UniswapV2LiquidityPositionV2DTO) UnsetLiquidityTokenBalance()`

UnsetLiquidityTokenBalance ensures that no value is present for LiquidityTokenBalance, not even an explicit nil
### GetVid

`func (o *UniswapV2LiquidityPositionV2DTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *UniswapV2LiquidityPositionV2DTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *UniswapV2LiquidityPositionV2DTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *UniswapV2LiquidityPositionV2DTO) HasVid() bool`

HasVid returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


