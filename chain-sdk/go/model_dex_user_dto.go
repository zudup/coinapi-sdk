/*
On Chain - REST API

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

// DexUserDTO User of the protocol. Any ethereum account that deposited tokens or traded.
type DexUserDTO struct {
	EntryTime *time.Time `json:"entry_time,omitempty"`
	RecvTime *time.Time `json:"recv_time,omitempty"`
	// Number of block in which entity was recorded.
	BlockNumber *int64 `json:"block_number,omitempty"`
	// 
	Id NullableString `json:"id,omitempty"`
	// 
	FromBatchId NullableString `json:"from_batch_id,omitempty"`
	// 
	CreateEpoch NullableString `json:"create_epoch,omitempty"`
	// 
	TxHash NullableString `json:"tx_hash,omitempty"`
	// 
	Vid *int64 `json:"vid,omitempty"`
}

// NewDexUserDTO instantiates a new DexUserDTO object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewDexUserDTO() *DexUserDTO {
	this := DexUserDTO{}
	return &this
}

// NewDexUserDTOWithDefaults instantiates a new DexUserDTO object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewDexUserDTOWithDefaults() *DexUserDTO {
	this := DexUserDTO{}
	return &this
}

// GetEntryTime returns the EntryTime field value if set, zero value otherwise.
func (o *DexUserDTO) GetEntryTime() time.Time {
	if o == nil || isNil(o.EntryTime) {
		var ret time.Time
		return ret
	}
	return *o.EntryTime
}

// GetEntryTimeOk returns a tuple with the EntryTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DexUserDTO) GetEntryTimeOk() (*time.Time, bool) {
	if o == nil || isNil(o.EntryTime) {
    return nil, false
	}
	return o.EntryTime, true
}

// HasEntryTime returns a boolean if a field has been set.
func (o *DexUserDTO) HasEntryTime() bool {
	if o != nil && !isNil(o.EntryTime) {
		return true
	}

	return false
}

// SetEntryTime gets a reference to the given time.Time and assigns it to the EntryTime field.
func (o *DexUserDTO) SetEntryTime(v time.Time) {
	o.EntryTime = &v
}

// GetRecvTime returns the RecvTime field value if set, zero value otherwise.
func (o *DexUserDTO) GetRecvTime() time.Time {
	if o == nil || isNil(o.RecvTime) {
		var ret time.Time
		return ret
	}
	return *o.RecvTime
}

// GetRecvTimeOk returns a tuple with the RecvTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DexUserDTO) GetRecvTimeOk() (*time.Time, bool) {
	if o == nil || isNil(o.RecvTime) {
    return nil, false
	}
	return o.RecvTime, true
}

// HasRecvTime returns a boolean if a field has been set.
func (o *DexUserDTO) HasRecvTime() bool {
	if o != nil && !isNil(o.RecvTime) {
		return true
	}

	return false
}

// SetRecvTime gets a reference to the given time.Time and assigns it to the RecvTime field.
func (o *DexUserDTO) SetRecvTime(v time.Time) {
	o.RecvTime = &v
}

// GetBlockNumber returns the BlockNumber field value if set, zero value otherwise.
func (o *DexUserDTO) GetBlockNumber() int64 {
	if o == nil || isNil(o.BlockNumber) {
		var ret int64
		return ret
	}
	return *o.BlockNumber
}

// GetBlockNumberOk returns a tuple with the BlockNumber field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DexUserDTO) GetBlockNumberOk() (*int64, bool) {
	if o == nil || isNil(o.BlockNumber) {
    return nil, false
	}
	return o.BlockNumber, true
}

// HasBlockNumber returns a boolean if a field has been set.
func (o *DexUserDTO) HasBlockNumber() bool {
	if o != nil && !isNil(o.BlockNumber) {
		return true
	}

	return false
}

// SetBlockNumber gets a reference to the given int64 and assigns it to the BlockNumber field.
func (o *DexUserDTO) SetBlockNumber(v int64) {
	o.BlockNumber = &v
}

// GetId returns the Id field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *DexUserDTO) GetId() string {
	if o == nil || isNil(o.Id.Get()) {
		var ret string
		return ret
	}
	return *o.Id.Get()
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *DexUserDTO) GetIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Id.Get(), o.Id.IsSet()
}

// HasId returns a boolean if a field has been set.
func (o *DexUserDTO) HasId() bool {
	if o != nil && o.Id.IsSet() {
		return true
	}

	return false
}

// SetId gets a reference to the given NullableString and assigns it to the Id field.
func (o *DexUserDTO) SetId(v string) {
	o.Id.Set(&v)
}
// SetIdNil sets the value for Id to be an explicit nil
func (o *DexUserDTO) SetIdNil() {
	o.Id.Set(nil)
}

// UnsetId ensures that no value is present for Id, not even an explicit nil
func (o *DexUserDTO) UnsetId() {
	o.Id.Unset()
}

// GetFromBatchId returns the FromBatchId field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *DexUserDTO) GetFromBatchId() string {
	if o == nil || isNil(o.FromBatchId.Get()) {
		var ret string
		return ret
	}
	return *o.FromBatchId.Get()
}

// GetFromBatchIdOk returns a tuple with the FromBatchId field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *DexUserDTO) GetFromBatchIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.FromBatchId.Get(), o.FromBatchId.IsSet()
}

// HasFromBatchId returns a boolean if a field has been set.
func (o *DexUserDTO) HasFromBatchId() bool {
	if o != nil && o.FromBatchId.IsSet() {
		return true
	}

	return false
}

// SetFromBatchId gets a reference to the given NullableString and assigns it to the FromBatchId field.
func (o *DexUserDTO) SetFromBatchId(v string) {
	o.FromBatchId.Set(&v)
}
// SetFromBatchIdNil sets the value for FromBatchId to be an explicit nil
func (o *DexUserDTO) SetFromBatchIdNil() {
	o.FromBatchId.Set(nil)
}

// UnsetFromBatchId ensures that no value is present for FromBatchId, not even an explicit nil
func (o *DexUserDTO) UnsetFromBatchId() {
	o.FromBatchId.Unset()
}

// GetCreateEpoch returns the CreateEpoch field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *DexUserDTO) GetCreateEpoch() string {
	if o == nil || isNil(o.CreateEpoch.Get()) {
		var ret string
		return ret
	}
	return *o.CreateEpoch.Get()
}

// GetCreateEpochOk returns a tuple with the CreateEpoch field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *DexUserDTO) GetCreateEpochOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.CreateEpoch.Get(), o.CreateEpoch.IsSet()
}

// HasCreateEpoch returns a boolean if a field has been set.
func (o *DexUserDTO) HasCreateEpoch() bool {
	if o != nil && o.CreateEpoch.IsSet() {
		return true
	}

	return false
}

// SetCreateEpoch gets a reference to the given NullableString and assigns it to the CreateEpoch field.
func (o *DexUserDTO) SetCreateEpoch(v string) {
	o.CreateEpoch.Set(&v)
}
// SetCreateEpochNil sets the value for CreateEpoch to be an explicit nil
func (o *DexUserDTO) SetCreateEpochNil() {
	o.CreateEpoch.Set(nil)
}

// UnsetCreateEpoch ensures that no value is present for CreateEpoch, not even an explicit nil
func (o *DexUserDTO) UnsetCreateEpoch() {
	o.CreateEpoch.Unset()
}

// GetTxHash returns the TxHash field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *DexUserDTO) GetTxHash() string {
	if o == nil || isNil(o.TxHash.Get()) {
		var ret string
		return ret
	}
	return *o.TxHash.Get()
}

// GetTxHashOk returns a tuple with the TxHash field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *DexUserDTO) GetTxHashOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.TxHash.Get(), o.TxHash.IsSet()
}

// HasTxHash returns a boolean if a field has been set.
func (o *DexUserDTO) HasTxHash() bool {
	if o != nil && o.TxHash.IsSet() {
		return true
	}

	return false
}

// SetTxHash gets a reference to the given NullableString and assigns it to the TxHash field.
func (o *DexUserDTO) SetTxHash(v string) {
	o.TxHash.Set(&v)
}
// SetTxHashNil sets the value for TxHash to be an explicit nil
func (o *DexUserDTO) SetTxHashNil() {
	o.TxHash.Set(nil)
}

// UnsetTxHash ensures that no value is present for TxHash, not even an explicit nil
func (o *DexUserDTO) UnsetTxHash() {
	o.TxHash.Unset()
}

// GetVid returns the Vid field value if set, zero value otherwise.
func (o *DexUserDTO) GetVid() int64 {
	if o == nil || isNil(o.Vid) {
		var ret int64
		return ret
	}
	return *o.Vid
}

// GetVidOk returns a tuple with the Vid field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DexUserDTO) GetVidOk() (*int64, bool) {
	if o == nil || isNil(o.Vid) {
    return nil, false
	}
	return o.Vid, true
}

// HasVid returns a boolean if a field has been set.
func (o *DexUserDTO) HasVid() bool {
	if o != nil && !isNil(o.Vid) {
		return true
	}

	return false
}

// SetVid gets a reference to the given int64 and assigns it to the Vid field.
func (o *DexUserDTO) SetVid(v int64) {
	o.Vid = &v
}

func (o DexUserDTO) MarshalJSON() ([]byte, error) {
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
	if o.FromBatchId.IsSet() {
		toSerialize["from_batch_id"] = o.FromBatchId.Get()
	}
	if o.CreateEpoch.IsSet() {
		toSerialize["create_epoch"] = o.CreateEpoch.Get()
	}
	if o.TxHash.IsSet() {
		toSerialize["tx_hash"] = o.TxHash.Get()
	}
	if !isNil(o.Vid) {
		toSerialize["vid"] = o.Vid
	}
	return json.Marshal(toSerialize)
}

type NullableDexUserDTO struct {
	value *DexUserDTO
	isSet bool
}

func (v NullableDexUserDTO) Get() *DexUserDTO {
	return v.value
}

func (v *NullableDexUserDTO) Set(val *DexUserDTO) {
	v.value = val
	v.isSet = true
}

func (v NullableDexUserDTO) IsSet() bool {
	return v.isSet
}

func (v *NullableDexUserDTO) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableDexUserDTO(val *DexUserDTO) *NullableDexUserDTO {
	return &NullableDexUserDTO{value: val, isSet: true}
}

func (v NullableDexUserDTO) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableDexUserDTO) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


