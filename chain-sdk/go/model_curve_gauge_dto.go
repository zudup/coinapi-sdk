/*
OnChain API

 This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

API version: v1
Contact: support@coinapi.io
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
	"time"
)

// CurveGaugeDTO struct for CurveGaugeDTO
type CurveGaugeDTO struct {
	EntryTime *time.Time `json:"entry_time,omitempty"`
	RecvTime *time.Time `json:"recv_time,omitempty"`
	// Number of block in which entity was recorded.
	BlockNumber *int64 `json:"block_number,omitempty"`
	// 
	Id NullableString `json:"id,omitempty"`
	// 
	Address NullableString `json:"address,omitempty"`
	// 
	Type NullableString `json:"type,omitempty"`
	// 
	Pool NullableString `json:"pool,omitempty"`
	// 
	Created NullableString `json:"created,omitempty"`
	// 
	CreatedAtBlock NullableString `json:"created_at_block,omitempty"`
	// 
	CreatedAtTransaction NullableString `json:"created_at_transaction,omitempty"`
	// 
	Vid *int64 `json:"vid,omitempty"`
}

// NewCurveGaugeDTO instantiates a new CurveGaugeDTO object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewCurveGaugeDTO() *CurveGaugeDTO {
	this := CurveGaugeDTO{}
	return &this
}

// NewCurveGaugeDTOWithDefaults instantiates a new CurveGaugeDTO object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewCurveGaugeDTOWithDefaults() *CurveGaugeDTO {
	this := CurveGaugeDTO{}
	return &this
}

// GetEntryTime returns the EntryTime field value if set, zero value otherwise.
func (o *CurveGaugeDTO) GetEntryTime() time.Time {
	if o == nil || isNil(o.EntryTime) {
		var ret time.Time
		return ret
	}
	return *o.EntryTime
}

// GetEntryTimeOk returns a tuple with the EntryTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *CurveGaugeDTO) GetEntryTimeOk() (*time.Time, bool) {
	if o == nil || isNil(o.EntryTime) {
    return nil, false
	}
	return o.EntryTime, true
}

// HasEntryTime returns a boolean if a field has been set.
func (o *CurveGaugeDTO) HasEntryTime() bool {
	if o != nil && !isNil(o.EntryTime) {
		return true
	}

	return false
}

// SetEntryTime gets a reference to the given time.Time and assigns it to the EntryTime field.
func (o *CurveGaugeDTO) SetEntryTime(v time.Time) {
	o.EntryTime = &v
}

// GetRecvTime returns the RecvTime field value if set, zero value otherwise.
func (o *CurveGaugeDTO) GetRecvTime() time.Time {
	if o == nil || isNil(o.RecvTime) {
		var ret time.Time
		return ret
	}
	return *o.RecvTime
}

// GetRecvTimeOk returns a tuple with the RecvTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *CurveGaugeDTO) GetRecvTimeOk() (*time.Time, bool) {
	if o == nil || isNil(o.RecvTime) {
    return nil, false
	}
	return o.RecvTime, true
}

// HasRecvTime returns a boolean if a field has been set.
func (o *CurveGaugeDTO) HasRecvTime() bool {
	if o != nil && !isNil(o.RecvTime) {
		return true
	}

	return false
}

// SetRecvTime gets a reference to the given time.Time and assigns it to the RecvTime field.
func (o *CurveGaugeDTO) SetRecvTime(v time.Time) {
	o.RecvTime = &v
}

// GetBlockNumber returns the BlockNumber field value if set, zero value otherwise.
func (o *CurveGaugeDTO) GetBlockNumber() int64 {
	if o == nil || isNil(o.BlockNumber) {
		var ret int64
		return ret
	}
	return *o.BlockNumber
}

// GetBlockNumberOk returns a tuple with the BlockNumber field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *CurveGaugeDTO) GetBlockNumberOk() (*int64, bool) {
	if o == nil || isNil(o.BlockNumber) {
    return nil, false
	}
	return o.BlockNumber, true
}

// HasBlockNumber returns a boolean if a field has been set.
func (o *CurveGaugeDTO) HasBlockNumber() bool {
	if o != nil && !isNil(o.BlockNumber) {
		return true
	}

	return false
}

// SetBlockNumber gets a reference to the given int64 and assigns it to the BlockNumber field.
func (o *CurveGaugeDTO) SetBlockNumber(v int64) {
	o.BlockNumber = &v
}

// GetId returns the Id field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *CurveGaugeDTO) GetId() string {
	if o == nil || isNil(o.Id.Get()) {
		var ret string
		return ret
	}
	return *o.Id.Get()
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *CurveGaugeDTO) GetIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Id.Get(), o.Id.IsSet()
}

// HasId returns a boolean if a field has been set.
func (o *CurveGaugeDTO) HasId() bool {
	if o != nil && o.Id.IsSet() {
		return true
	}

	return false
}

// SetId gets a reference to the given NullableString and assigns it to the Id field.
func (o *CurveGaugeDTO) SetId(v string) {
	o.Id.Set(&v)
}
// SetIdNil sets the value for Id to be an explicit nil
func (o *CurveGaugeDTO) SetIdNil() {
	o.Id.Set(nil)
}

// UnsetId ensures that no value is present for Id, not even an explicit nil
func (o *CurveGaugeDTO) UnsetId() {
	o.Id.Unset()
}

// GetAddress returns the Address field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *CurveGaugeDTO) GetAddress() string {
	if o == nil || isNil(o.Address.Get()) {
		var ret string
		return ret
	}
	return *o.Address.Get()
}

// GetAddressOk returns a tuple with the Address field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *CurveGaugeDTO) GetAddressOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Address.Get(), o.Address.IsSet()
}

// HasAddress returns a boolean if a field has been set.
func (o *CurveGaugeDTO) HasAddress() bool {
	if o != nil && o.Address.IsSet() {
		return true
	}

	return false
}

// SetAddress gets a reference to the given NullableString and assigns it to the Address field.
func (o *CurveGaugeDTO) SetAddress(v string) {
	o.Address.Set(&v)
}
// SetAddressNil sets the value for Address to be an explicit nil
func (o *CurveGaugeDTO) SetAddressNil() {
	o.Address.Set(nil)
}

// UnsetAddress ensures that no value is present for Address, not even an explicit nil
func (o *CurveGaugeDTO) UnsetAddress() {
	o.Address.Unset()
}

// GetType returns the Type field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *CurveGaugeDTO) GetType() string {
	if o == nil || isNil(o.Type.Get()) {
		var ret string
		return ret
	}
	return *o.Type.Get()
}

// GetTypeOk returns a tuple with the Type field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *CurveGaugeDTO) GetTypeOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Type.Get(), o.Type.IsSet()
}

// HasType returns a boolean if a field has been set.
func (o *CurveGaugeDTO) HasType() bool {
	if o != nil && o.Type.IsSet() {
		return true
	}

	return false
}

// SetType gets a reference to the given NullableString and assigns it to the Type field.
func (o *CurveGaugeDTO) SetType(v string) {
	o.Type.Set(&v)
}
// SetTypeNil sets the value for Type to be an explicit nil
func (o *CurveGaugeDTO) SetTypeNil() {
	o.Type.Set(nil)
}

// UnsetType ensures that no value is present for Type, not even an explicit nil
func (o *CurveGaugeDTO) UnsetType() {
	o.Type.Unset()
}

// GetPool returns the Pool field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *CurveGaugeDTO) GetPool() string {
	if o == nil || isNil(o.Pool.Get()) {
		var ret string
		return ret
	}
	return *o.Pool.Get()
}

// GetPoolOk returns a tuple with the Pool field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *CurveGaugeDTO) GetPoolOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Pool.Get(), o.Pool.IsSet()
}

// HasPool returns a boolean if a field has been set.
func (o *CurveGaugeDTO) HasPool() bool {
	if o != nil && o.Pool.IsSet() {
		return true
	}

	return false
}

// SetPool gets a reference to the given NullableString and assigns it to the Pool field.
func (o *CurveGaugeDTO) SetPool(v string) {
	o.Pool.Set(&v)
}
// SetPoolNil sets the value for Pool to be an explicit nil
func (o *CurveGaugeDTO) SetPoolNil() {
	o.Pool.Set(nil)
}

// UnsetPool ensures that no value is present for Pool, not even an explicit nil
func (o *CurveGaugeDTO) UnsetPool() {
	o.Pool.Unset()
}

// GetCreated returns the Created field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *CurveGaugeDTO) GetCreated() string {
	if o == nil || isNil(o.Created.Get()) {
		var ret string
		return ret
	}
	return *o.Created.Get()
}

// GetCreatedOk returns a tuple with the Created field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *CurveGaugeDTO) GetCreatedOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Created.Get(), o.Created.IsSet()
}

// HasCreated returns a boolean if a field has been set.
func (o *CurveGaugeDTO) HasCreated() bool {
	if o != nil && o.Created.IsSet() {
		return true
	}

	return false
}

// SetCreated gets a reference to the given NullableString and assigns it to the Created field.
func (o *CurveGaugeDTO) SetCreated(v string) {
	o.Created.Set(&v)
}
// SetCreatedNil sets the value for Created to be an explicit nil
func (o *CurveGaugeDTO) SetCreatedNil() {
	o.Created.Set(nil)
}

// UnsetCreated ensures that no value is present for Created, not even an explicit nil
func (o *CurveGaugeDTO) UnsetCreated() {
	o.Created.Unset()
}

// GetCreatedAtBlock returns the CreatedAtBlock field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *CurveGaugeDTO) GetCreatedAtBlock() string {
	if o == nil || isNil(o.CreatedAtBlock.Get()) {
		var ret string
		return ret
	}
	return *o.CreatedAtBlock.Get()
}

// GetCreatedAtBlockOk returns a tuple with the CreatedAtBlock field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *CurveGaugeDTO) GetCreatedAtBlockOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.CreatedAtBlock.Get(), o.CreatedAtBlock.IsSet()
}

// HasCreatedAtBlock returns a boolean if a field has been set.
func (o *CurveGaugeDTO) HasCreatedAtBlock() bool {
	if o != nil && o.CreatedAtBlock.IsSet() {
		return true
	}

	return false
}

// SetCreatedAtBlock gets a reference to the given NullableString and assigns it to the CreatedAtBlock field.
func (o *CurveGaugeDTO) SetCreatedAtBlock(v string) {
	o.CreatedAtBlock.Set(&v)
}
// SetCreatedAtBlockNil sets the value for CreatedAtBlock to be an explicit nil
func (o *CurveGaugeDTO) SetCreatedAtBlockNil() {
	o.CreatedAtBlock.Set(nil)
}

// UnsetCreatedAtBlock ensures that no value is present for CreatedAtBlock, not even an explicit nil
func (o *CurveGaugeDTO) UnsetCreatedAtBlock() {
	o.CreatedAtBlock.Unset()
}

// GetCreatedAtTransaction returns the CreatedAtTransaction field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *CurveGaugeDTO) GetCreatedAtTransaction() string {
	if o == nil || isNil(o.CreatedAtTransaction.Get()) {
		var ret string
		return ret
	}
	return *o.CreatedAtTransaction.Get()
}

// GetCreatedAtTransactionOk returns a tuple with the CreatedAtTransaction field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *CurveGaugeDTO) GetCreatedAtTransactionOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.CreatedAtTransaction.Get(), o.CreatedAtTransaction.IsSet()
}

// HasCreatedAtTransaction returns a boolean if a field has been set.
func (o *CurveGaugeDTO) HasCreatedAtTransaction() bool {
	if o != nil && o.CreatedAtTransaction.IsSet() {
		return true
	}

	return false
}

// SetCreatedAtTransaction gets a reference to the given NullableString and assigns it to the CreatedAtTransaction field.
func (o *CurveGaugeDTO) SetCreatedAtTransaction(v string) {
	o.CreatedAtTransaction.Set(&v)
}
// SetCreatedAtTransactionNil sets the value for CreatedAtTransaction to be an explicit nil
func (o *CurveGaugeDTO) SetCreatedAtTransactionNil() {
	o.CreatedAtTransaction.Set(nil)
}

// UnsetCreatedAtTransaction ensures that no value is present for CreatedAtTransaction, not even an explicit nil
func (o *CurveGaugeDTO) UnsetCreatedAtTransaction() {
	o.CreatedAtTransaction.Unset()
}

// GetVid returns the Vid field value if set, zero value otherwise.
func (o *CurveGaugeDTO) GetVid() int64 {
	if o == nil || isNil(o.Vid) {
		var ret int64
		return ret
	}
	return *o.Vid
}

// GetVidOk returns a tuple with the Vid field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *CurveGaugeDTO) GetVidOk() (*int64, bool) {
	if o == nil || isNil(o.Vid) {
    return nil, false
	}
	return o.Vid, true
}

// HasVid returns a boolean if a field has been set.
func (o *CurveGaugeDTO) HasVid() bool {
	if o != nil && !isNil(o.Vid) {
		return true
	}

	return false
}

// SetVid gets a reference to the given int64 and assigns it to the Vid field.
func (o *CurveGaugeDTO) SetVid(v int64) {
	o.Vid = &v
}

func (o CurveGaugeDTO) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.EntryTime) {
		toSerialize["entry_time"] = o.EntryTime
	}
	if !isNil(o.RecvTime) {
		toSerialize["recv_time"] = o.RecvTime
	}
	if !isNil(o.BlockNumber) {
		toSerialize["block_number"] = o.BlockNumber
	}
	if o.Id.IsSet() {
		toSerialize["id"] = o.Id.Get()
	}
	if o.Address.IsSet() {
		toSerialize["address"] = o.Address.Get()
	}
	if o.Type.IsSet() {
		toSerialize["type"] = o.Type.Get()
	}
	if o.Pool.IsSet() {
		toSerialize["pool"] = o.Pool.Get()
	}
	if o.Created.IsSet() {
		toSerialize["created"] = o.Created.Get()
	}
	if o.CreatedAtBlock.IsSet() {
		toSerialize["created_at_block"] = o.CreatedAtBlock.Get()
	}
	if o.CreatedAtTransaction.IsSet() {
		toSerialize["created_at_transaction"] = o.CreatedAtTransaction.Get()
	}
	if !isNil(o.Vid) {
		toSerialize["vid"] = o.Vid
	}
	return json.Marshal(toSerialize)
}

type NullableCurveGaugeDTO struct {
	value *CurveGaugeDTO
	isSet bool
}

func (v NullableCurveGaugeDTO) Get() *CurveGaugeDTO {
	return v.value
}

func (v *NullableCurveGaugeDTO) Set(val *CurveGaugeDTO) {
	v.value = val
	v.isSet = true
}

func (v NullableCurveGaugeDTO) IsSet() bool {
	return v.isSet
}

func (v *NullableCurveGaugeDTO) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableCurveGaugeDTO(val *CurveGaugeDTO) *NullableCurveGaugeDTO {
	return &NullableCurveGaugeDTO{value: val, isSet: true}
}

func (v NullableCurveGaugeDTO) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableCurveGaugeDTO) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

