# SwapV2DTO

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
**Pair** | Pointer to **NullableString** |  | [optional] 
**Sender** | Pointer to **NullableString** |  | [optional] 
**From** | Pointer to **NullableString** |  | [optional] 
**Amount0In** | Pointer to **NullableString** |  | [optional] 
**Amount1In** | Pointer to **NullableString** |  | [optional] 
**Amount0Out** | Pointer to **NullableString** |  | [optional] 
**Amount1Out** | Pointer to **NullableString** |  | [optional] 
**To** | Pointer to **NullableString** |  | [optional] 
**LogIndex** | Pointer to [**BigInteger**](BigInteger.md) |  | [optional] 
**AmountUsd** | Pointer to **NullableString** |  | [optional] 
**EvaluatedPrice** | Pointer to **float64** |  | [optional] [readonly] 
**EvaluatedAmount** | Pointer to **float64** |  | [optional] [readonly] 
**EvaluatedAggressor** | Pointer to [**ETradeAggressiveSide**](ETradeAggressiveSide.md) |  | [optional] 
**PoolId** | Pointer to **NullableString** |  | [optional] [readonly] 
**TransactionId** | Pointer to **NullableString** |  | [optional] [readonly] 

## Methods

### NewSwapV2DTO

`func NewSwapV2DTO() *SwapV2DTO`

NewSwapV2DTO instantiates a new SwapV2DTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSwapV2DTOWithDefaults

`func NewSwapV2DTOWithDefaults() *SwapV2DTO`

NewSwapV2DTOWithDefaults instantiates a new SwapV2DTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *SwapV2DTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *SwapV2DTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *SwapV2DTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *SwapV2DTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *SwapV2DTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *SwapV2DTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *SwapV2DTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *SwapV2DTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *SwapV2DTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *SwapV2DTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *SwapV2DTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *SwapV2DTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetVid

`func (o *SwapV2DTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *SwapV2DTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *SwapV2DTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *SwapV2DTO) HasVid() bool`

HasVid returns a boolean if a field has been set.

### GetId

`func (o *SwapV2DTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SwapV2DTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SwapV2DTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *SwapV2DTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *SwapV2DTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *SwapV2DTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetTransaction

`func (o *SwapV2DTO) GetTransaction() string`

GetTransaction returns the Transaction field if non-nil, zero value otherwise.

### GetTransactionOk

`func (o *SwapV2DTO) GetTransactionOk() (*string, bool)`

GetTransactionOk returns a tuple with the Transaction field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransaction

`func (o *SwapV2DTO) SetTransaction(v string)`

SetTransaction sets Transaction field to given value.

### HasTransaction

`func (o *SwapV2DTO) HasTransaction() bool`

HasTransaction returns a boolean if a field has been set.

### SetTransactionNil

`func (o *SwapV2DTO) SetTransactionNil(b bool)`

 SetTransactionNil sets the value for Transaction to be an explicit nil

### UnsetTransaction
`func (o *SwapV2DTO) UnsetTransaction()`

UnsetTransaction ensures that no value is present for Transaction, not even an explicit nil
### GetTimestamp

`func (o *SwapV2DTO) GetTimestamp() time.Time`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *SwapV2DTO) GetTimestampOk() (*time.Time, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *SwapV2DTO) SetTimestamp(v time.Time)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *SwapV2DTO) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### GetPair

`func (o *SwapV2DTO) GetPair() string`

GetPair returns the Pair field if non-nil, zero value otherwise.

### GetPairOk

`func (o *SwapV2DTO) GetPairOk() (*string, bool)`

GetPairOk returns a tuple with the Pair field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPair

`func (o *SwapV2DTO) SetPair(v string)`

SetPair sets Pair field to given value.

### HasPair

`func (o *SwapV2DTO) HasPair() bool`

HasPair returns a boolean if a field has been set.

### SetPairNil

`func (o *SwapV2DTO) SetPairNil(b bool)`

 SetPairNil sets the value for Pair to be an explicit nil

### UnsetPair
`func (o *SwapV2DTO) UnsetPair()`

UnsetPair ensures that no value is present for Pair, not even an explicit nil
### GetSender

`func (o *SwapV2DTO) GetSender() string`

GetSender returns the Sender field if non-nil, zero value otherwise.

### GetSenderOk

`func (o *SwapV2DTO) GetSenderOk() (*string, bool)`

GetSenderOk returns a tuple with the Sender field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSender

`func (o *SwapV2DTO) SetSender(v string)`

SetSender sets Sender field to given value.

### HasSender

`func (o *SwapV2DTO) HasSender() bool`

HasSender returns a boolean if a field has been set.

### SetSenderNil

`func (o *SwapV2DTO) SetSenderNil(b bool)`

 SetSenderNil sets the value for Sender to be an explicit nil

### UnsetSender
`func (o *SwapV2DTO) UnsetSender()`

UnsetSender ensures that no value is present for Sender, not even an explicit nil
### GetFrom

`func (o *SwapV2DTO) GetFrom() string`

GetFrom returns the From field if non-nil, zero value otherwise.

### GetFromOk

`func (o *SwapV2DTO) GetFromOk() (*string, bool)`

GetFromOk returns a tuple with the From field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFrom

`func (o *SwapV2DTO) SetFrom(v string)`

SetFrom sets From field to given value.

### HasFrom

`func (o *SwapV2DTO) HasFrom() bool`

HasFrom returns a boolean if a field has been set.

### SetFromNil

`func (o *SwapV2DTO) SetFromNil(b bool)`

 SetFromNil sets the value for From to be an explicit nil

### UnsetFrom
`func (o *SwapV2DTO) UnsetFrom()`

UnsetFrom ensures that no value is present for From, not even an explicit nil
### GetAmount0In

`func (o *SwapV2DTO) GetAmount0In() string`

GetAmount0In returns the Amount0In field if non-nil, zero value otherwise.

### GetAmount0InOk

`func (o *SwapV2DTO) GetAmount0InOk() (*string, bool)`

GetAmount0InOk returns a tuple with the Amount0In field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount0In

`func (o *SwapV2DTO) SetAmount0In(v string)`

SetAmount0In sets Amount0In field to given value.

### HasAmount0In

`func (o *SwapV2DTO) HasAmount0In() bool`

HasAmount0In returns a boolean if a field has been set.

### SetAmount0InNil

`func (o *SwapV2DTO) SetAmount0InNil(b bool)`

 SetAmount0InNil sets the value for Amount0In to be an explicit nil

### UnsetAmount0In
`func (o *SwapV2DTO) UnsetAmount0In()`

UnsetAmount0In ensures that no value is present for Amount0In, not even an explicit nil
### GetAmount1In

`func (o *SwapV2DTO) GetAmount1In() string`

GetAmount1In returns the Amount1In field if non-nil, zero value otherwise.

### GetAmount1InOk

`func (o *SwapV2DTO) GetAmount1InOk() (*string, bool)`

GetAmount1InOk returns a tuple with the Amount1In field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount1In

`func (o *SwapV2DTO) SetAmount1In(v string)`

SetAmount1In sets Amount1In field to given value.

### HasAmount1In

`func (o *SwapV2DTO) HasAmount1In() bool`

HasAmount1In returns a boolean if a field has been set.

### SetAmount1InNil

`func (o *SwapV2DTO) SetAmount1InNil(b bool)`

 SetAmount1InNil sets the value for Amount1In to be an explicit nil

### UnsetAmount1In
`func (o *SwapV2DTO) UnsetAmount1In()`

UnsetAmount1In ensures that no value is present for Amount1In, not even an explicit nil
### GetAmount0Out

`func (o *SwapV2DTO) GetAmount0Out() string`

GetAmount0Out returns the Amount0Out field if non-nil, zero value otherwise.

### GetAmount0OutOk

`func (o *SwapV2DTO) GetAmount0OutOk() (*string, bool)`

GetAmount0OutOk returns a tuple with the Amount0Out field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount0Out

`func (o *SwapV2DTO) SetAmount0Out(v string)`

SetAmount0Out sets Amount0Out field to given value.

### HasAmount0Out

`func (o *SwapV2DTO) HasAmount0Out() bool`

HasAmount0Out returns a boolean if a field has been set.

### SetAmount0OutNil

`func (o *SwapV2DTO) SetAmount0OutNil(b bool)`

 SetAmount0OutNil sets the value for Amount0Out to be an explicit nil

### UnsetAmount0Out
`func (o *SwapV2DTO) UnsetAmount0Out()`

UnsetAmount0Out ensures that no value is present for Amount0Out, not even an explicit nil
### GetAmount1Out

`func (o *SwapV2DTO) GetAmount1Out() string`

GetAmount1Out returns the Amount1Out field if non-nil, zero value otherwise.

### GetAmount1OutOk

`func (o *SwapV2DTO) GetAmount1OutOk() (*string, bool)`

GetAmount1OutOk returns a tuple with the Amount1Out field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount1Out

`func (o *SwapV2DTO) SetAmount1Out(v string)`

SetAmount1Out sets Amount1Out field to given value.

### HasAmount1Out

`func (o *SwapV2DTO) HasAmount1Out() bool`

HasAmount1Out returns a boolean if a field has been set.

### SetAmount1OutNil

`func (o *SwapV2DTO) SetAmount1OutNil(b bool)`

 SetAmount1OutNil sets the value for Amount1Out to be an explicit nil

### UnsetAmount1Out
`func (o *SwapV2DTO) UnsetAmount1Out()`

UnsetAmount1Out ensures that no value is present for Amount1Out, not even an explicit nil
### GetTo

`func (o *SwapV2DTO) GetTo() string`

GetTo returns the To field if non-nil, zero value otherwise.

### GetToOk

`func (o *SwapV2DTO) GetToOk() (*string, bool)`

GetToOk returns a tuple with the To field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTo

`func (o *SwapV2DTO) SetTo(v string)`

SetTo sets To field to given value.

### HasTo

`func (o *SwapV2DTO) HasTo() bool`

HasTo returns a boolean if a field has been set.

### SetToNil

`func (o *SwapV2DTO) SetToNil(b bool)`

 SetToNil sets the value for To to be an explicit nil

### UnsetTo
`func (o *SwapV2DTO) UnsetTo()`

UnsetTo ensures that no value is present for To, not even an explicit nil
### GetLogIndex

`func (o *SwapV2DTO) GetLogIndex() BigInteger`

GetLogIndex returns the LogIndex field if non-nil, zero value otherwise.

### GetLogIndexOk

`func (o *SwapV2DTO) GetLogIndexOk() (*BigInteger, bool)`

GetLogIndexOk returns a tuple with the LogIndex field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLogIndex

`func (o *SwapV2DTO) SetLogIndex(v BigInteger)`

SetLogIndex sets LogIndex field to given value.

### HasLogIndex

`func (o *SwapV2DTO) HasLogIndex() bool`

HasLogIndex returns a boolean if a field has been set.

### GetAmountUsd

`func (o *SwapV2DTO) GetAmountUsd() string`

GetAmountUsd returns the AmountUsd field if non-nil, zero value otherwise.

### GetAmountUsdOk

`func (o *SwapV2DTO) GetAmountUsdOk() (*string, bool)`

GetAmountUsdOk returns a tuple with the AmountUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmountUsd

`func (o *SwapV2DTO) SetAmountUsd(v string)`

SetAmountUsd sets AmountUsd field to given value.

### HasAmountUsd

`func (o *SwapV2DTO) HasAmountUsd() bool`

HasAmountUsd returns a boolean if a field has been set.

### SetAmountUsdNil

`func (o *SwapV2DTO) SetAmountUsdNil(b bool)`

 SetAmountUsdNil sets the value for AmountUsd to be an explicit nil

### UnsetAmountUsd
`func (o *SwapV2DTO) UnsetAmountUsd()`

UnsetAmountUsd ensures that no value is present for AmountUsd, not even an explicit nil
### GetEvaluatedPrice

`func (o *SwapV2DTO) GetEvaluatedPrice() float64`

GetEvaluatedPrice returns the EvaluatedPrice field if non-nil, zero value otherwise.

### GetEvaluatedPriceOk

`func (o *SwapV2DTO) GetEvaluatedPriceOk() (*float64, bool)`

GetEvaluatedPriceOk returns a tuple with the EvaluatedPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvaluatedPrice

`func (o *SwapV2DTO) SetEvaluatedPrice(v float64)`

SetEvaluatedPrice sets EvaluatedPrice field to given value.

### HasEvaluatedPrice

`func (o *SwapV2DTO) HasEvaluatedPrice() bool`

HasEvaluatedPrice returns a boolean if a field has been set.

### GetEvaluatedAmount

`func (o *SwapV2DTO) GetEvaluatedAmount() float64`

GetEvaluatedAmount returns the EvaluatedAmount field if non-nil, zero value otherwise.

### GetEvaluatedAmountOk

`func (o *SwapV2DTO) GetEvaluatedAmountOk() (*float64, bool)`

GetEvaluatedAmountOk returns a tuple with the EvaluatedAmount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvaluatedAmount

`func (o *SwapV2DTO) SetEvaluatedAmount(v float64)`

SetEvaluatedAmount sets EvaluatedAmount field to given value.

### HasEvaluatedAmount

`func (o *SwapV2DTO) HasEvaluatedAmount() bool`

HasEvaluatedAmount returns a boolean if a field has been set.

### GetEvaluatedAggressor

`func (o *SwapV2DTO) GetEvaluatedAggressor() ETradeAggressiveSide`

GetEvaluatedAggressor returns the EvaluatedAggressor field if non-nil, zero value otherwise.

### GetEvaluatedAggressorOk

`func (o *SwapV2DTO) GetEvaluatedAggressorOk() (*ETradeAggressiveSide, bool)`

GetEvaluatedAggressorOk returns a tuple with the EvaluatedAggressor field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvaluatedAggressor

`func (o *SwapV2DTO) SetEvaluatedAggressor(v ETradeAggressiveSide)`

SetEvaluatedAggressor sets EvaluatedAggressor field to given value.

### HasEvaluatedAggressor

`func (o *SwapV2DTO) HasEvaluatedAggressor() bool`

HasEvaluatedAggressor returns a boolean if a field has been set.

### GetPoolId

`func (o *SwapV2DTO) GetPoolId() string`

GetPoolId returns the PoolId field if non-nil, zero value otherwise.

### GetPoolIdOk

`func (o *SwapV2DTO) GetPoolIdOk() (*string, bool)`

GetPoolIdOk returns a tuple with the PoolId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPoolId

`func (o *SwapV2DTO) SetPoolId(v string)`

SetPoolId sets PoolId field to given value.

### HasPoolId

`func (o *SwapV2DTO) HasPoolId() bool`

HasPoolId returns a boolean if a field has been set.

### SetPoolIdNil

`func (o *SwapV2DTO) SetPoolIdNil(b bool)`

 SetPoolIdNil sets the value for PoolId to be an explicit nil

### UnsetPoolId
`func (o *SwapV2DTO) UnsetPoolId()`

UnsetPoolId ensures that no value is present for PoolId, not even an explicit nil
### GetTransactionId

`func (o *SwapV2DTO) GetTransactionId() string`

GetTransactionId returns the TransactionId field if non-nil, zero value otherwise.

### GetTransactionIdOk

`func (o *SwapV2DTO) GetTransactionIdOk() (*string, bool)`

GetTransactionIdOk returns a tuple with the TransactionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransactionId

`func (o *SwapV2DTO) SetTransactionId(v string)`

SetTransactionId sets TransactionId field to given value.

### HasTransactionId

`func (o *SwapV2DTO) HasTransactionId() bool`

HasTransactionId returns a boolean if a field has been set.

### SetTransactionIdNil

`func (o *SwapV2DTO) SetTransactionIdNil(b bool)`

 SetTransactionIdNil sets the value for TransactionId to be an explicit nil

### UnsetTransactionId
`func (o *SwapV2DTO) UnsetTransactionId()`

UnsetTransactionId ensures that no value is present for TransactionId, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

