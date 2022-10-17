# SwapV3DTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** |  | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 
**Id** | Pointer to **NullableString** |  | [optional] 
**Transaction** | Pointer to **NullableString** |  | [optional] 
**Timestamp** | Pointer to **time.Time** |  | [optional] 
**Pool** | Pointer to **NullableString** |  | [optional] 
**Token0** | Pointer to **NullableString** |  | [optional] 
**Token1** | Pointer to **NullableString** |  | [optional] 
**Sender** | Pointer to **NullableString** |  | [optional] 
**Recipient** | Pointer to **NullableString** |  | [optional] 
**Origin** | Pointer to **NullableString** |  | [optional] 
**Amount0** | Pointer to **NullableString** |  | [optional] 
**Amount1** | Pointer to **NullableString** |  | [optional] 
**AmountUsd** | Pointer to **NullableString** |  | [optional] 
**SqrtPriceX96** | Pointer to [**BigInteger**](BigInteger.md) |  | [optional] 
**Tick** | Pointer to [**BigInteger**](BigInteger.md) |  | [optional] 
**LogIndex** | Pointer to [**BigInteger**](BigInteger.md) |  | [optional] 
**EvaluatedPrice** | Pointer to **float64** |  | [optional] [readonly] 
**EvaluatedAmount** | Pointer to **float64** |  | [optional] [readonly] 
**EvaluatedAggressor** | Pointer to [**ETradeAggressiveSide**](ETradeAggressiveSide.md) |  | [optional] 
**PoolId** | Pointer to **NullableString** |  | [optional] [readonly] 
**TransactionId** | Pointer to **NullableString** |  | [optional] [readonly] 

## Methods

### NewSwapV3DTO

`func NewSwapV3DTO() *SwapV3DTO`

NewSwapV3DTO instantiates a new SwapV3DTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSwapV3DTOWithDefaults

`func NewSwapV3DTOWithDefaults() *SwapV3DTO`

NewSwapV3DTOWithDefaults instantiates a new SwapV3DTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *SwapV3DTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *SwapV3DTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *SwapV3DTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *SwapV3DTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *SwapV3DTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *SwapV3DTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *SwapV3DTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *SwapV3DTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *SwapV3DTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *SwapV3DTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *SwapV3DTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *SwapV3DTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetVid

`func (o *SwapV3DTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *SwapV3DTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *SwapV3DTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *SwapV3DTO) HasVid() bool`

HasVid returns a boolean if a field has been set.

### GetId

`func (o *SwapV3DTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SwapV3DTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SwapV3DTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *SwapV3DTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *SwapV3DTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *SwapV3DTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetTransaction

`func (o *SwapV3DTO) GetTransaction() string`

GetTransaction returns the Transaction field if non-nil, zero value otherwise.

### GetTransactionOk

`func (o *SwapV3DTO) GetTransactionOk() (*string, bool)`

GetTransactionOk returns a tuple with the Transaction field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransaction

`func (o *SwapV3DTO) SetTransaction(v string)`

SetTransaction sets Transaction field to given value.

### HasTransaction

`func (o *SwapV3DTO) HasTransaction() bool`

HasTransaction returns a boolean if a field has been set.

### SetTransactionNil

`func (o *SwapV3DTO) SetTransactionNil(b bool)`

 SetTransactionNil sets the value for Transaction to be an explicit nil

### UnsetTransaction
`func (o *SwapV3DTO) UnsetTransaction()`

UnsetTransaction ensures that no value is present for Transaction, not even an explicit nil
### GetTimestamp

`func (o *SwapV3DTO) GetTimestamp() time.Time`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *SwapV3DTO) GetTimestampOk() (*time.Time, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *SwapV3DTO) SetTimestamp(v time.Time)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *SwapV3DTO) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### GetPool

`func (o *SwapV3DTO) GetPool() string`

GetPool returns the Pool field if non-nil, zero value otherwise.

### GetPoolOk

`func (o *SwapV3DTO) GetPoolOk() (*string, bool)`

GetPoolOk returns a tuple with the Pool field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPool

`func (o *SwapV3DTO) SetPool(v string)`

SetPool sets Pool field to given value.

### HasPool

`func (o *SwapV3DTO) HasPool() bool`

HasPool returns a boolean if a field has been set.

### SetPoolNil

`func (o *SwapV3DTO) SetPoolNil(b bool)`

 SetPoolNil sets the value for Pool to be an explicit nil

### UnsetPool
`func (o *SwapV3DTO) UnsetPool()`

UnsetPool ensures that no value is present for Pool, not even an explicit nil
### GetToken0

`func (o *SwapV3DTO) GetToken0() string`

GetToken0 returns the Token0 field if non-nil, zero value otherwise.

### GetToken0Ok

`func (o *SwapV3DTO) GetToken0Ok() (*string, bool)`

GetToken0Ok returns a tuple with the Token0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken0

`func (o *SwapV3DTO) SetToken0(v string)`

SetToken0 sets Token0 field to given value.

### HasToken0

`func (o *SwapV3DTO) HasToken0() bool`

HasToken0 returns a boolean if a field has been set.

### SetToken0Nil

`func (o *SwapV3DTO) SetToken0Nil(b bool)`

 SetToken0Nil sets the value for Token0 to be an explicit nil

### UnsetToken0
`func (o *SwapV3DTO) UnsetToken0()`

UnsetToken0 ensures that no value is present for Token0, not even an explicit nil
### GetToken1

`func (o *SwapV3DTO) GetToken1() string`

GetToken1 returns the Token1 field if non-nil, zero value otherwise.

### GetToken1Ok

`func (o *SwapV3DTO) GetToken1Ok() (*string, bool)`

GetToken1Ok returns a tuple with the Token1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken1

`func (o *SwapV3DTO) SetToken1(v string)`

SetToken1 sets Token1 field to given value.

### HasToken1

`func (o *SwapV3DTO) HasToken1() bool`

HasToken1 returns a boolean if a field has been set.

### SetToken1Nil

`func (o *SwapV3DTO) SetToken1Nil(b bool)`

 SetToken1Nil sets the value for Token1 to be an explicit nil

### UnsetToken1
`func (o *SwapV3DTO) UnsetToken1()`

UnsetToken1 ensures that no value is present for Token1, not even an explicit nil
### GetSender

`func (o *SwapV3DTO) GetSender() string`

GetSender returns the Sender field if non-nil, zero value otherwise.

### GetSenderOk

`func (o *SwapV3DTO) GetSenderOk() (*string, bool)`

GetSenderOk returns a tuple with the Sender field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSender

`func (o *SwapV3DTO) SetSender(v string)`

SetSender sets Sender field to given value.

### HasSender

`func (o *SwapV3DTO) HasSender() bool`

HasSender returns a boolean if a field has been set.

### SetSenderNil

`func (o *SwapV3DTO) SetSenderNil(b bool)`

 SetSenderNil sets the value for Sender to be an explicit nil

### UnsetSender
`func (o *SwapV3DTO) UnsetSender()`

UnsetSender ensures that no value is present for Sender, not even an explicit nil
### GetRecipient

`func (o *SwapV3DTO) GetRecipient() string`

GetRecipient returns the Recipient field if non-nil, zero value otherwise.

### GetRecipientOk

`func (o *SwapV3DTO) GetRecipientOk() (*string, bool)`

GetRecipientOk returns a tuple with the Recipient field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecipient

`func (o *SwapV3DTO) SetRecipient(v string)`

SetRecipient sets Recipient field to given value.

### HasRecipient

`func (o *SwapV3DTO) HasRecipient() bool`

HasRecipient returns a boolean if a field has been set.

### SetRecipientNil

`func (o *SwapV3DTO) SetRecipientNil(b bool)`

 SetRecipientNil sets the value for Recipient to be an explicit nil

### UnsetRecipient
`func (o *SwapV3DTO) UnsetRecipient()`

UnsetRecipient ensures that no value is present for Recipient, not even an explicit nil
### GetOrigin

`func (o *SwapV3DTO) GetOrigin() string`

GetOrigin returns the Origin field if non-nil, zero value otherwise.

### GetOriginOk

`func (o *SwapV3DTO) GetOriginOk() (*string, bool)`

GetOriginOk returns a tuple with the Origin field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrigin

`func (o *SwapV3DTO) SetOrigin(v string)`

SetOrigin sets Origin field to given value.

### HasOrigin

`func (o *SwapV3DTO) HasOrigin() bool`

HasOrigin returns a boolean if a field has been set.

### SetOriginNil

`func (o *SwapV3DTO) SetOriginNil(b bool)`

 SetOriginNil sets the value for Origin to be an explicit nil

### UnsetOrigin
`func (o *SwapV3DTO) UnsetOrigin()`

UnsetOrigin ensures that no value is present for Origin, not even an explicit nil
### GetAmount0

`func (o *SwapV3DTO) GetAmount0() string`

GetAmount0 returns the Amount0 field if non-nil, zero value otherwise.

### GetAmount0Ok

`func (o *SwapV3DTO) GetAmount0Ok() (*string, bool)`

GetAmount0Ok returns a tuple with the Amount0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount0

`func (o *SwapV3DTO) SetAmount0(v string)`

SetAmount0 sets Amount0 field to given value.

### HasAmount0

`func (o *SwapV3DTO) HasAmount0() bool`

HasAmount0 returns a boolean if a field has been set.

### SetAmount0Nil

`func (o *SwapV3DTO) SetAmount0Nil(b bool)`

 SetAmount0Nil sets the value for Amount0 to be an explicit nil

### UnsetAmount0
`func (o *SwapV3DTO) UnsetAmount0()`

UnsetAmount0 ensures that no value is present for Amount0, not even an explicit nil
### GetAmount1

`func (o *SwapV3DTO) GetAmount1() string`

GetAmount1 returns the Amount1 field if non-nil, zero value otherwise.

### GetAmount1Ok

`func (o *SwapV3DTO) GetAmount1Ok() (*string, bool)`

GetAmount1Ok returns a tuple with the Amount1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount1

`func (o *SwapV3DTO) SetAmount1(v string)`

SetAmount1 sets Amount1 field to given value.

### HasAmount1

`func (o *SwapV3DTO) HasAmount1() bool`

HasAmount1 returns a boolean if a field has been set.

### SetAmount1Nil

`func (o *SwapV3DTO) SetAmount1Nil(b bool)`

 SetAmount1Nil sets the value for Amount1 to be an explicit nil

### UnsetAmount1
`func (o *SwapV3DTO) UnsetAmount1()`

UnsetAmount1 ensures that no value is present for Amount1, not even an explicit nil
### GetAmountUsd

`func (o *SwapV3DTO) GetAmountUsd() string`

GetAmountUsd returns the AmountUsd field if non-nil, zero value otherwise.

### GetAmountUsdOk

`func (o *SwapV3DTO) GetAmountUsdOk() (*string, bool)`

GetAmountUsdOk returns a tuple with the AmountUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmountUsd

`func (o *SwapV3DTO) SetAmountUsd(v string)`

SetAmountUsd sets AmountUsd field to given value.

### HasAmountUsd

`func (o *SwapV3DTO) HasAmountUsd() bool`

HasAmountUsd returns a boolean if a field has been set.

### SetAmountUsdNil

`func (o *SwapV3DTO) SetAmountUsdNil(b bool)`

 SetAmountUsdNil sets the value for AmountUsd to be an explicit nil

### UnsetAmountUsd
`func (o *SwapV3DTO) UnsetAmountUsd()`

UnsetAmountUsd ensures that no value is present for AmountUsd, not even an explicit nil
### GetSqrtPriceX96

`func (o *SwapV3DTO) GetSqrtPriceX96() BigInteger`

GetSqrtPriceX96 returns the SqrtPriceX96 field if non-nil, zero value otherwise.

### GetSqrtPriceX96Ok

`func (o *SwapV3DTO) GetSqrtPriceX96Ok() (*BigInteger, bool)`

GetSqrtPriceX96Ok returns a tuple with the SqrtPriceX96 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSqrtPriceX96

`func (o *SwapV3DTO) SetSqrtPriceX96(v BigInteger)`

SetSqrtPriceX96 sets SqrtPriceX96 field to given value.

### HasSqrtPriceX96

`func (o *SwapV3DTO) HasSqrtPriceX96() bool`

HasSqrtPriceX96 returns a boolean if a field has been set.

### GetTick

`func (o *SwapV3DTO) GetTick() BigInteger`

GetTick returns the Tick field if non-nil, zero value otherwise.

### GetTickOk

`func (o *SwapV3DTO) GetTickOk() (*BigInteger, bool)`

GetTickOk returns a tuple with the Tick field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTick

`func (o *SwapV3DTO) SetTick(v BigInteger)`

SetTick sets Tick field to given value.

### HasTick

`func (o *SwapV3DTO) HasTick() bool`

HasTick returns a boolean if a field has been set.

### GetLogIndex

`func (o *SwapV3DTO) GetLogIndex() BigInteger`

GetLogIndex returns the LogIndex field if non-nil, zero value otherwise.

### GetLogIndexOk

`func (o *SwapV3DTO) GetLogIndexOk() (*BigInteger, bool)`

GetLogIndexOk returns a tuple with the LogIndex field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLogIndex

`func (o *SwapV3DTO) SetLogIndex(v BigInteger)`

SetLogIndex sets LogIndex field to given value.

### HasLogIndex

`func (o *SwapV3DTO) HasLogIndex() bool`

HasLogIndex returns a boolean if a field has been set.

### GetEvaluatedPrice

`func (o *SwapV3DTO) GetEvaluatedPrice() float64`

GetEvaluatedPrice returns the EvaluatedPrice field if non-nil, zero value otherwise.

### GetEvaluatedPriceOk

`func (o *SwapV3DTO) GetEvaluatedPriceOk() (*float64, bool)`

GetEvaluatedPriceOk returns a tuple with the EvaluatedPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvaluatedPrice

`func (o *SwapV3DTO) SetEvaluatedPrice(v float64)`

SetEvaluatedPrice sets EvaluatedPrice field to given value.

### HasEvaluatedPrice

`func (o *SwapV3DTO) HasEvaluatedPrice() bool`

HasEvaluatedPrice returns a boolean if a field has been set.

### GetEvaluatedAmount

`func (o *SwapV3DTO) GetEvaluatedAmount() float64`

GetEvaluatedAmount returns the EvaluatedAmount field if non-nil, zero value otherwise.

### GetEvaluatedAmountOk

`func (o *SwapV3DTO) GetEvaluatedAmountOk() (*float64, bool)`

GetEvaluatedAmountOk returns a tuple with the EvaluatedAmount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvaluatedAmount

`func (o *SwapV3DTO) SetEvaluatedAmount(v float64)`

SetEvaluatedAmount sets EvaluatedAmount field to given value.

### HasEvaluatedAmount

`func (o *SwapV3DTO) HasEvaluatedAmount() bool`

HasEvaluatedAmount returns a boolean if a field has been set.

### GetEvaluatedAggressor

`func (o *SwapV3DTO) GetEvaluatedAggressor() ETradeAggressiveSide`

GetEvaluatedAggressor returns the EvaluatedAggressor field if non-nil, zero value otherwise.

### GetEvaluatedAggressorOk

`func (o *SwapV3DTO) GetEvaluatedAggressorOk() (*ETradeAggressiveSide, bool)`

GetEvaluatedAggressorOk returns a tuple with the EvaluatedAggressor field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvaluatedAggressor

`func (o *SwapV3DTO) SetEvaluatedAggressor(v ETradeAggressiveSide)`

SetEvaluatedAggressor sets EvaluatedAggressor field to given value.

### HasEvaluatedAggressor

`func (o *SwapV3DTO) HasEvaluatedAggressor() bool`

HasEvaluatedAggressor returns a boolean if a field has been set.

### GetPoolId

`func (o *SwapV3DTO) GetPoolId() string`

GetPoolId returns the PoolId field if non-nil, zero value otherwise.

### GetPoolIdOk

`func (o *SwapV3DTO) GetPoolIdOk() (*string, bool)`

GetPoolIdOk returns a tuple with the PoolId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPoolId

`func (o *SwapV3DTO) SetPoolId(v string)`

SetPoolId sets PoolId field to given value.

### HasPoolId

`func (o *SwapV3DTO) HasPoolId() bool`

HasPoolId returns a boolean if a field has been set.

### SetPoolIdNil

`func (o *SwapV3DTO) SetPoolIdNil(b bool)`

 SetPoolIdNil sets the value for PoolId to be an explicit nil

### UnsetPoolId
`func (o *SwapV3DTO) UnsetPoolId()`

UnsetPoolId ensures that no value is present for PoolId, not even an explicit nil
### GetTransactionId

`func (o *SwapV3DTO) GetTransactionId() string`

GetTransactionId returns the TransactionId field if non-nil, zero value otherwise.

### GetTransactionIdOk

`func (o *SwapV3DTO) GetTransactionIdOk() (*string, bool)`

GetTransactionIdOk returns a tuple with the TransactionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransactionId

`func (o *SwapV3DTO) SetTransactionId(v string)`

SetTransactionId sets TransactionId field to given value.

### HasTransactionId

`func (o *SwapV3DTO) HasTransactionId() bool`

HasTransactionId returns a boolean if a field has been set.

### SetTransactionIdNil

`func (o *SwapV3DTO) SetTransactionIdNil(b bool)`

 SetTransactionIdNil sets the value for TransactionId to be an explicit nil

### UnsetTransactionId
`func (o *SwapV3DTO) UnsetTransactionId()`

UnsetTransactionId ensures that no value is present for TransactionId, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


