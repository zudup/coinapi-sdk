# UniswapV3MintV3DTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Id** | Pointer to **NullableString** | Transaction hash + &#39;#&#39; + index in mints Transaction array. | [optional] 
**Transaction** | Pointer to **NullableString** | Which txn the mint was included in. | [optional] 
**Timestamp** | Pointer to **NullableString** | Time of transaction. | [optional] 
**Pool** | Pointer to **NullableString** | Pool address. | [optional] 
**Token0** | Pointer to **NullableString** | Reference to token0 as stored in pool contract. | [optional] 
**Token1** | Pointer to **NullableString** | Reference to token1 as stored in pool contract. | [optional] 
**Owner** | Pointer to **NullableString** | Owner of position where liquidity minted to. | [optional] 
**Sender** | Pointer to **NullableString** | The address that minted the liquidity. | [optional] 
**Origin** | Pointer to **NullableString** | Transaction origin: the EOA (Externally Owned Account) that initiated the transaction. | [optional] 
**Amount** | Pointer to **NullableString** | Amount of liquidity minted. | [optional] 
**Amount0** | Pointer to **NullableString** | Amount of token 0 minted. | [optional] 
**Amount1** | Pointer to **NullableString** | Amount of token 1 minted. | [optional] 
**AmountUsd** | Pointer to **NullableString** | Derived amount based on available prices of tokens. | [optional] 
**TickLower** | Pointer to **NullableString** | Lower tick of the position. | [optional] 
**TickUpper** | Pointer to **NullableString** | Upper tick of the position. | [optional] 
**LogIndex** | Pointer to **NullableString** | Order within the transaction. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 

## Methods

### NewUniswapV3MintV3DTO

`func NewUniswapV3MintV3DTO() *UniswapV3MintV3DTO`

NewUniswapV3MintV3DTO instantiates a new UniswapV3MintV3DTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUniswapV3MintV3DTOWithDefaults

`func NewUniswapV3MintV3DTOWithDefaults() *UniswapV3MintV3DTO`

NewUniswapV3MintV3DTOWithDefaults instantiates a new UniswapV3MintV3DTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *UniswapV3MintV3DTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *UniswapV3MintV3DTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *UniswapV3MintV3DTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *UniswapV3MintV3DTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *UniswapV3MintV3DTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *UniswapV3MintV3DTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *UniswapV3MintV3DTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *UniswapV3MintV3DTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *UniswapV3MintV3DTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *UniswapV3MintV3DTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *UniswapV3MintV3DTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *UniswapV3MintV3DTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *UniswapV3MintV3DTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *UniswapV3MintV3DTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *UniswapV3MintV3DTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *UniswapV3MintV3DTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *UniswapV3MintV3DTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *UniswapV3MintV3DTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetTransaction

`func (o *UniswapV3MintV3DTO) GetTransaction() string`

GetTransaction returns the Transaction field if non-nil, zero value otherwise.

### GetTransactionOk

`func (o *UniswapV3MintV3DTO) GetTransactionOk() (*string, bool)`

GetTransactionOk returns a tuple with the Transaction field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransaction

`func (o *UniswapV3MintV3DTO) SetTransaction(v string)`

SetTransaction sets Transaction field to given value.

### HasTransaction

`func (o *UniswapV3MintV3DTO) HasTransaction() bool`

HasTransaction returns a boolean if a field has been set.

### SetTransactionNil

`func (o *UniswapV3MintV3DTO) SetTransactionNil(b bool)`

 SetTransactionNil sets the value for Transaction to be an explicit nil

### UnsetTransaction
`func (o *UniswapV3MintV3DTO) UnsetTransaction()`

UnsetTransaction ensures that no value is present for Transaction, not even an explicit nil
### GetTimestamp

`func (o *UniswapV3MintV3DTO) GetTimestamp() string`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *UniswapV3MintV3DTO) GetTimestampOk() (*string, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *UniswapV3MintV3DTO) SetTimestamp(v string)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *UniswapV3MintV3DTO) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### SetTimestampNil

`func (o *UniswapV3MintV3DTO) SetTimestampNil(b bool)`

 SetTimestampNil sets the value for Timestamp to be an explicit nil

### UnsetTimestamp
`func (o *UniswapV3MintV3DTO) UnsetTimestamp()`

UnsetTimestamp ensures that no value is present for Timestamp, not even an explicit nil
### GetPool

`func (o *UniswapV3MintV3DTO) GetPool() string`

GetPool returns the Pool field if non-nil, zero value otherwise.

### GetPoolOk

`func (o *UniswapV3MintV3DTO) GetPoolOk() (*string, bool)`

GetPoolOk returns a tuple with the Pool field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPool

`func (o *UniswapV3MintV3DTO) SetPool(v string)`

SetPool sets Pool field to given value.

### HasPool

`func (o *UniswapV3MintV3DTO) HasPool() bool`

HasPool returns a boolean if a field has been set.

### SetPoolNil

`func (o *UniswapV3MintV3DTO) SetPoolNil(b bool)`

 SetPoolNil sets the value for Pool to be an explicit nil

### UnsetPool
`func (o *UniswapV3MintV3DTO) UnsetPool()`

UnsetPool ensures that no value is present for Pool, not even an explicit nil
### GetToken0

`func (o *UniswapV3MintV3DTO) GetToken0() string`

GetToken0 returns the Token0 field if non-nil, zero value otherwise.

### GetToken0Ok

`func (o *UniswapV3MintV3DTO) GetToken0Ok() (*string, bool)`

GetToken0Ok returns a tuple with the Token0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken0

`func (o *UniswapV3MintV3DTO) SetToken0(v string)`

SetToken0 sets Token0 field to given value.

### HasToken0

`func (o *UniswapV3MintV3DTO) HasToken0() bool`

HasToken0 returns a boolean if a field has been set.

### SetToken0Nil

`func (o *UniswapV3MintV3DTO) SetToken0Nil(b bool)`

 SetToken0Nil sets the value for Token0 to be an explicit nil

### UnsetToken0
`func (o *UniswapV3MintV3DTO) UnsetToken0()`

UnsetToken0 ensures that no value is present for Token0, not even an explicit nil
### GetToken1

`func (o *UniswapV3MintV3DTO) GetToken1() string`

GetToken1 returns the Token1 field if non-nil, zero value otherwise.

### GetToken1Ok

`func (o *UniswapV3MintV3DTO) GetToken1Ok() (*string, bool)`

GetToken1Ok returns a tuple with the Token1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken1

`func (o *UniswapV3MintV3DTO) SetToken1(v string)`

SetToken1 sets Token1 field to given value.

### HasToken1

`func (o *UniswapV3MintV3DTO) HasToken1() bool`

HasToken1 returns a boolean if a field has been set.

### SetToken1Nil

`func (o *UniswapV3MintV3DTO) SetToken1Nil(b bool)`

 SetToken1Nil sets the value for Token1 to be an explicit nil

### UnsetToken1
`func (o *UniswapV3MintV3DTO) UnsetToken1()`

UnsetToken1 ensures that no value is present for Token1, not even an explicit nil
### GetOwner

`func (o *UniswapV3MintV3DTO) GetOwner() string`

GetOwner returns the Owner field if non-nil, zero value otherwise.

### GetOwnerOk

`func (o *UniswapV3MintV3DTO) GetOwnerOk() (*string, bool)`

GetOwnerOk returns a tuple with the Owner field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOwner

`func (o *UniswapV3MintV3DTO) SetOwner(v string)`

SetOwner sets Owner field to given value.

### HasOwner

`func (o *UniswapV3MintV3DTO) HasOwner() bool`

HasOwner returns a boolean if a field has been set.

### SetOwnerNil

`func (o *UniswapV3MintV3DTO) SetOwnerNil(b bool)`

 SetOwnerNil sets the value for Owner to be an explicit nil

### UnsetOwner
`func (o *UniswapV3MintV3DTO) UnsetOwner()`

UnsetOwner ensures that no value is present for Owner, not even an explicit nil
### GetSender

`func (o *UniswapV3MintV3DTO) GetSender() string`

GetSender returns the Sender field if non-nil, zero value otherwise.

### GetSenderOk

`func (o *UniswapV3MintV3DTO) GetSenderOk() (*string, bool)`

GetSenderOk returns a tuple with the Sender field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSender

`func (o *UniswapV3MintV3DTO) SetSender(v string)`

SetSender sets Sender field to given value.

### HasSender

`func (o *UniswapV3MintV3DTO) HasSender() bool`

HasSender returns a boolean if a field has been set.

### SetSenderNil

`func (o *UniswapV3MintV3DTO) SetSenderNil(b bool)`

 SetSenderNil sets the value for Sender to be an explicit nil

### UnsetSender
`func (o *UniswapV3MintV3DTO) UnsetSender()`

UnsetSender ensures that no value is present for Sender, not even an explicit nil
### GetOrigin

`func (o *UniswapV3MintV3DTO) GetOrigin() string`

GetOrigin returns the Origin field if non-nil, zero value otherwise.

### GetOriginOk

`func (o *UniswapV3MintV3DTO) GetOriginOk() (*string, bool)`

GetOriginOk returns a tuple with the Origin field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrigin

`func (o *UniswapV3MintV3DTO) SetOrigin(v string)`

SetOrigin sets Origin field to given value.

### HasOrigin

`func (o *UniswapV3MintV3DTO) HasOrigin() bool`

HasOrigin returns a boolean if a field has been set.

### SetOriginNil

`func (o *UniswapV3MintV3DTO) SetOriginNil(b bool)`

 SetOriginNil sets the value for Origin to be an explicit nil

### UnsetOrigin
`func (o *UniswapV3MintV3DTO) UnsetOrigin()`

UnsetOrigin ensures that no value is present for Origin, not even an explicit nil
### GetAmount

`func (o *UniswapV3MintV3DTO) GetAmount() string`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *UniswapV3MintV3DTO) GetAmountOk() (*string, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *UniswapV3MintV3DTO) SetAmount(v string)`

SetAmount sets Amount field to given value.

### HasAmount

`func (o *UniswapV3MintV3DTO) HasAmount() bool`

HasAmount returns a boolean if a field has been set.

### SetAmountNil

`func (o *UniswapV3MintV3DTO) SetAmountNil(b bool)`

 SetAmountNil sets the value for Amount to be an explicit nil

### UnsetAmount
`func (o *UniswapV3MintV3DTO) UnsetAmount()`

UnsetAmount ensures that no value is present for Amount, not even an explicit nil
### GetAmount0

`func (o *UniswapV3MintV3DTO) GetAmount0() string`

GetAmount0 returns the Amount0 field if non-nil, zero value otherwise.

### GetAmount0Ok

`func (o *UniswapV3MintV3DTO) GetAmount0Ok() (*string, bool)`

GetAmount0Ok returns a tuple with the Amount0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount0

`func (o *UniswapV3MintV3DTO) SetAmount0(v string)`

SetAmount0 sets Amount0 field to given value.

### HasAmount0

`func (o *UniswapV3MintV3DTO) HasAmount0() bool`

HasAmount0 returns a boolean if a field has been set.

### SetAmount0Nil

`func (o *UniswapV3MintV3DTO) SetAmount0Nil(b bool)`

 SetAmount0Nil sets the value for Amount0 to be an explicit nil

### UnsetAmount0
`func (o *UniswapV3MintV3DTO) UnsetAmount0()`

UnsetAmount0 ensures that no value is present for Amount0, not even an explicit nil
### GetAmount1

`func (o *UniswapV3MintV3DTO) GetAmount1() string`

GetAmount1 returns the Amount1 field if non-nil, zero value otherwise.

### GetAmount1Ok

`func (o *UniswapV3MintV3DTO) GetAmount1Ok() (*string, bool)`

GetAmount1Ok returns a tuple with the Amount1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount1

`func (o *UniswapV3MintV3DTO) SetAmount1(v string)`

SetAmount1 sets Amount1 field to given value.

### HasAmount1

`func (o *UniswapV3MintV3DTO) HasAmount1() bool`

HasAmount1 returns a boolean if a field has been set.

### SetAmount1Nil

`func (o *UniswapV3MintV3DTO) SetAmount1Nil(b bool)`

 SetAmount1Nil sets the value for Amount1 to be an explicit nil

### UnsetAmount1
`func (o *UniswapV3MintV3DTO) UnsetAmount1()`

UnsetAmount1 ensures that no value is present for Amount1, not even an explicit nil
### GetAmountUsd

`func (o *UniswapV3MintV3DTO) GetAmountUsd() string`

GetAmountUsd returns the AmountUsd field if non-nil, zero value otherwise.

### GetAmountUsdOk

`func (o *UniswapV3MintV3DTO) GetAmountUsdOk() (*string, bool)`

GetAmountUsdOk returns a tuple with the AmountUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmountUsd

`func (o *UniswapV3MintV3DTO) SetAmountUsd(v string)`

SetAmountUsd sets AmountUsd field to given value.

### HasAmountUsd

`func (o *UniswapV3MintV3DTO) HasAmountUsd() bool`

HasAmountUsd returns a boolean if a field has been set.

### SetAmountUsdNil

`func (o *UniswapV3MintV3DTO) SetAmountUsdNil(b bool)`

 SetAmountUsdNil sets the value for AmountUsd to be an explicit nil

### UnsetAmountUsd
`func (o *UniswapV3MintV3DTO) UnsetAmountUsd()`

UnsetAmountUsd ensures that no value is present for AmountUsd, not even an explicit nil
### GetTickLower

`func (o *UniswapV3MintV3DTO) GetTickLower() string`

GetTickLower returns the TickLower field if non-nil, zero value otherwise.

### GetTickLowerOk

`func (o *UniswapV3MintV3DTO) GetTickLowerOk() (*string, bool)`

GetTickLowerOk returns a tuple with the TickLower field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTickLower

`func (o *UniswapV3MintV3DTO) SetTickLower(v string)`

SetTickLower sets TickLower field to given value.

### HasTickLower

`func (o *UniswapV3MintV3DTO) HasTickLower() bool`

HasTickLower returns a boolean if a field has been set.

### SetTickLowerNil

`func (o *UniswapV3MintV3DTO) SetTickLowerNil(b bool)`

 SetTickLowerNil sets the value for TickLower to be an explicit nil

### UnsetTickLower
`func (o *UniswapV3MintV3DTO) UnsetTickLower()`

UnsetTickLower ensures that no value is present for TickLower, not even an explicit nil
### GetTickUpper

`func (o *UniswapV3MintV3DTO) GetTickUpper() string`

GetTickUpper returns the TickUpper field if non-nil, zero value otherwise.

### GetTickUpperOk

`func (o *UniswapV3MintV3DTO) GetTickUpperOk() (*string, bool)`

GetTickUpperOk returns a tuple with the TickUpper field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTickUpper

`func (o *UniswapV3MintV3DTO) SetTickUpper(v string)`

SetTickUpper sets TickUpper field to given value.

### HasTickUpper

`func (o *UniswapV3MintV3DTO) HasTickUpper() bool`

HasTickUpper returns a boolean if a field has been set.

### SetTickUpperNil

`func (o *UniswapV3MintV3DTO) SetTickUpperNil(b bool)`

 SetTickUpperNil sets the value for TickUpper to be an explicit nil

### UnsetTickUpper
`func (o *UniswapV3MintV3DTO) UnsetTickUpper()`

UnsetTickUpper ensures that no value is present for TickUpper, not even an explicit nil
### GetLogIndex

`func (o *UniswapV3MintV3DTO) GetLogIndex() string`

GetLogIndex returns the LogIndex field if non-nil, zero value otherwise.

### GetLogIndexOk

`func (o *UniswapV3MintV3DTO) GetLogIndexOk() (*string, bool)`

GetLogIndexOk returns a tuple with the LogIndex field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLogIndex

`func (o *UniswapV3MintV3DTO) SetLogIndex(v string)`

SetLogIndex sets LogIndex field to given value.

### HasLogIndex

`func (o *UniswapV3MintV3DTO) HasLogIndex() bool`

HasLogIndex returns a boolean if a field has been set.

### SetLogIndexNil

`func (o *UniswapV3MintV3DTO) SetLogIndexNil(b bool)`

 SetLogIndexNil sets the value for LogIndex to be an explicit nil

### UnsetLogIndex
`func (o *UniswapV3MintV3DTO) UnsetLogIndex()`

UnsetLogIndex ensures that no value is present for LogIndex, not even an explicit nil
### GetVid

`func (o *UniswapV3MintV3DTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *UniswapV3MintV3DTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *UniswapV3MintV3DTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *UniswapV3MintV3DTO) HasVid() bool`

HasVid returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


