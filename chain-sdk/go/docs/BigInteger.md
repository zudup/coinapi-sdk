# BigInteger

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsPowerOfTwo** | Pointer to **bool** |  | [optional] [readonly] 
**IsZero** | Pointer to **bool** |  | [optional] [readonly] 
**IsOne** | Pointer to **bool** |  | [optional] [readonly] 
**IsEven** | Pointer to **bool** |  | [optional] [readonly] 
**Sign** | Pointer to **int32** |  | [optional] [readonly] 

## Methods

### NewBigInteger

`func NewBigInteger() *BigInteger`

NewBigInteger instantiates a new BigInteger object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBigIntegerWithDefaults

`func NewBigIntegerWithDefaults() *BigInteger`

NewBigIntegerWithDefaults instantiates a new BigInteger object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetIsPowerOfTwo

`func (o *BigInteger) GetIsPowerOfTwo() bool`

GetIsPowerOfTwo returns the IsPowerOfTwo field if non-nil, zero value otherwise.

### GetIsPowerOfTwoOk

`func (o *BigInteger) GetIsPowerOfTwoOk() (*bool, bool)`

GetIsPowerOfTwoOk returns a tuple with the IsPowerOfTwo field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsPowerOfTwo

`func (o *BigInteger) SetIsPowerOfTwo(v bool)`

SetIsPowerOfTwo sets IsPowerOfTwo field to given value.

### HasIsPowerOfTwo

`func (o *BigInteger) HasIsPowerOfTwo() bool`

HasIsPowerOfTwo returns a boolean if a field has been set.

### GetIsZero

`func (o *BigInteger) GetIsZero() bool`

GetIsZero returns the IsZero field if non-nil, zero value otherwise.

### GetIsZeroOk

`func (o *BigInteger) GetIsZeroOk() (*bool, bool)`

GetIsZeroOk returns a tuple with the IsZero field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsZero

`func (o *BigInteger) SetIsZero(v bool)`

SetIsZero sets IsZero field to given value.

### HasIsZero

`func (o *BigInteger) HasIsZero() bool`

HasIsZero returns a boolean if a field has been set.

### GetIsOne

`func (o *BigInteger) GetIsOne() bool`

GetIsOne returns the IsOne field if non-nil, zero value otherwise.

### GetIsOneOk

`func (o *BigInteger) GetIsOneOk() (*bool, bool)`

GetIsOneOk returns a tuple with the IsOne field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsOne

`func (o *BigInteger) SetIsOne(v bool)`

SetIsOne sets IsOne field to given value.

### HasIsOne

`func (o *BigInteger) HasIsOne() bool`

HasIsOne returns a boolean if a field has been set.

### GetIsEven

`func (o *BigInteger) GetIsEven() bool`

GetIsEven returns the IsEven field if non-nil, zero value otherwise.

### GetIsEvenOk

`func (o *BigInteger) GetIsEvenOk() (*bool, bool)`

GetIsEvenOk returns a tuple with the IsEven field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsEven

`func (o *BigInteger) SetIsEven(v bool)`

SetIsEven sets IsEven field to given value.

### HasIsEven

`func (o *BigInteger) HasIsEven() bool`

HasIsEven returns a boolean if a field has been set.

### GetSign

`func (o *BigInteger) GetSign() int32`

GetSign returns the Sign field if non-nil, zero value otherwise.

### GetSignOk

`func (o *BigInteger) GetSignOk() (*int32, bool)`

GetSignOk returns a tuple with the Sign field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSign

`func (o *BigInteger) SetSign(v int32)`

SetSign sets Sign field to given value.

### HasSign

`func (o *BigInteger) HasSign() bool`

HasSign returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


