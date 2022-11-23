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

// CurveGaugeTypeWeightDTO struct for CurveGaugeTypeWeightDTO
type CurveGaugeTypeWeightDTO struct {
	EntryTime *time.Time `json:"entry_time,omitempty"`
	RecvTime *time.Time `json:"recv_time,omitempty"`
	// Number of block in which entity was recorded.
	BlockNumber *int64 `json:"block_number,omitempty"`
	// 
	Id NullableString `json:"id,omitempty"`
	// 
	Type NullableString `json:"type,omitempty"`
	// 
	Time NullableString `json:"time,omitempty"`
	// 
	Weight NullableString `json:"weight,omitempty"`
	// 
	Vid *int64 `json:"vid,omitempty"`
}

// NewCurveGaugeTypeWeightDTO instantiates a new CurveGaugeTypeWeightDTO object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewCurveGaugeTypeWeightDTO() *CurveGaugeTypeWeightDTO {
	this := CurveGaugeTypeWeightDTO{}
	return &this
}

// NewCurveGaugeTypeWeightDTOWithDefaults instantiates a new CurveGaugeTypeWeightDTO object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewCurveGaugeTypeWeightDTOWithDefaults() *CurveGaugeTypeWeightDTO {
	this := CurveGaugeTypeWeightDTO{}
	return &this
}

// GetEntryTime returns the EntryTime field value if set, zero value otherwise.
func (o *CurveGaugeTypeWeightDTO) GetEntryTime() time.Time {
	if o == nil || isNil(o.EntryTime) {
		var ret time.Time
		return ret
	}
	return *o.EntryTime
}

// GetEntryTimeOk returns a tuple with the EntryTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *CurveGaugeTypeWeightDTO) GetEntryTimeOk() (*time.Time, bool) {
	if o == nil || isNil(o.EntryTime) {
    return nil, false
	}
	return o.EntryTime, true
}

// HasEntryTime returns a boolean if a field has been set.
func (o *CurveGaugeTypeWeightDTO) HasEntryTime() bool {
	if o != nil && !isNil(o.EntryTime) {
		return true
	}

	return false
}

// SetEntryTime gets a reference to the given time.Time and assigns it to the EntryTime field.
func (o *CurveGaugeTypeWeightDTO) SetEntryTime(v time.Time) {
	o.EntryTime = &v
}

// GetRecvTime returns the RecvTime field value if set, zero value otherwise.
func (o *CurveGaugeTypeWeightDTO) GetRecvTime() time.Time {
	if o == nil || isNil(o.RecvTime) {
		var ret time.Time
		return ret
	}
	return *o.RecvTime
}

// GetRecvTimeOk returns a tuple with the RecvTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *CurveGaugeTypeWeightDTO) GetRecvTimeOk() (*time.Time, bool) {
	if o == nil || isNil(o.RecvTime) {
    return nil, false
	}
	return o.RecvTime, true
}

// HasRecvTime returns a boolean if a field has been set.
func (o *CurveGaugeTypeWeightDTO) HasRecvTime() bool {
	if o != nil && !isNil(o.RecvTime) {
		return true
	}

	return false
}

// SetRecvTime gets a reference to the given time.Time and assigns it to the RecvTime field.
func (o *CurveGaugeTypeWeightDTO) SetRecvTime(v time.Time) {
	o.RecvTime = &v
}

// GetBlockNumber returns the BlockNumber field value if set, zero value otherwise.
func (o *CurveGaugeTypeWeightDTO) GetBlockNumber() int64 {
	if o == nil || isNil(o.BlockNumber) {
		var ret int64
		return ret
	}
	return *o.BlockNumber
}

// GetBlockNumberOk returns a tuple with the BlockNumber field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *CurveGaugeTypeWeightDTO) GetBlockNumberOk() (*int64, bool) {
	if o == nil || isNil(o.BlockNumber) {
    return nil, false
	}
	return o.BlockNumber, true
}

// HasBlockNumber returns a boolean if a field has been set.
func (o *CurveGaugeTypeWeightDTO) HasBlockNumber() bool {
	if o != nil && !isNil(o.BlockNumber) {
		return true
	}

	return false
}

// SetBlockNumber gets a reference to the given int64 and assigns it to the BlockNumber field.
func (o *CurveGaugeTypeWeightDTO) SetBlockNumber(v int64) {
	o.BlockNumber = &v
}

// GetId returns the Id field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *CurveGaugeTypeWeightDTO) GetId() string {
	if o == nil || isNil(o.Id.Get()) {
		var ret string
		return ret
	}
	return *o.Id.Get()
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *CurveGaugeTypeWeightDTO) GetIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Id.Get(), o.Id.IsSet()
}

// HasId returns a boolean if a field has been set.
func (o *CurveGaugeTypeWeightDTO) HasId() bool {
	if o != nil && o.Id.IsSet() {
		return true
	}

	return false
}

// SetId gets a reference to the given NullableString and assigns it to the Id field.
func (o *CurveGaugeTypeWeightDTO) SetId(v string) {
	o.Id.Set(&v)
}
// SetIdNil sets the value for Id to be an explicit nil
func (o *CurveGaugeTypeWeightDTO) SetIdNil() {
	o.Id.Set(nil)
}

// UnsetId ensures that no value is present for Id, not even an explicit nil
func (o *CurveGaugeTypeWeightDTO) UnsetId() {
	o.Id.Unset()
}

// GetType returns the Type field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *CurveGaugeTypeWeightDTO) GetType() string {
	if o == nil || isNil(o.Type.Get()) {
		var ret string
		return ret
	}
	return *o.Type.Get()
}

// GetTypeOk returns a tuple with the Type field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *CurveGaugeTypeWeightDTO) GetTypeOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Type.Get(), o.Type.IsSet()
}

// HasType returns a boolean if a field has been set.
func (o *CurveGaugeTypeWeightDTO) HasType() bool {
	if o != nil && o.Type.IsSet() {
		return true
	}

	return false
}

// SetType gets a reference to the given NullableString and assigns it to the Type field.
func (o *CurveGaugeTypeWeightDTO) SetType(v string) {
	o.Type.Set(&v)
}
// SetTypeNil sets the value for Type to be an explicit nil
func (o *CurveGaugeTypeWeightDTO) SetTypeNil() {
	o.Type.Set(nil)
}

// UnsetType ensures that no value is present for Type, not even an explicit nil
func (o *CurveGaugeTypeWeightDTO) UnsetType() {
	o.Type.Unset()
}

// GetTime returns the Time field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *CurveGaugeTypeWeightDTO) GetTime() string {
	if o == nil || isNil(o.Time.Get()) {
		var ret string
		return ret
	}
	return *o.Time.Get()
}

// GetTimeOk returns a tuple with the Time field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *CurveGaugeTypeWeightDTO) GetTimeOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Time.Get(), o.Time.IsSet()
}

// HasTime returns a boolean if a field has been set.
func (o *CurveGaugeTypeWeightDTO) HasTime() bool {
	if o != nil && o.Time.IsSet() {
		return true
	}

	return false
}

// SetTime gets a reference to the given NullableString and assigns it to the Time field.
func (o *CurveGaugeTypeWeightDTO) SetTime(v string) {
	o.Time.Set(&v)
}
// SetTimeNil sets the value for Time to be an explicit nil
func (o *CurveGaugeTypeWeightDTO) SetTimeNil() {
	o.Time.Set(nil)
}

// UnsetTime ensures that no value is present for Time, not even an explicit nil
func (o *CurveGaugeTypeWeightDTO) UnsetTime() {
	o.Time.Unset()
}

// GetWeight returns the Weight field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *CurveGaugeTypeWeightDTO) GetWeight() string {
	if o == nil || isNil(o.Weight.Get()) {
		var ret string
		return ret
	}
	return *o.Weight.Get()
}

// GetWeightOk returns a tuple with the Weight field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *CurveGaugeTypeWeightDTO) GetWeightOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Weight.Get(), o.Weight.IsSet()
}

// HasWeight returns a boolean if a field has been set.
func (o *CurveGaugeTypeWeightDTO) HasWeight() bool {
	if o != nil && o.Weight.IsSet() {
		return true
	}

	return false
}

// SetWeight gets a reference to the given NullableString and assigns it to the Weight field.
func (o *CurveGaugeTypeWeightDTO) SetWeight(v string) {
	o.Weight.Set(&v)
}
// SetWeightNil sets the value for Weight to be an explicit nil
func (o *CurveGaugeTypeWeightDTO) SetWeightNil() {
	o.Weight.Set(nil)
}

// UnsetWeight ensures that no value is present for Weight, not even an explicit nil
func (o *CurveGaugeTypeWeightDTO) UnsetWeight() {
	o.Weight.Unset()
}

// GetVid returns the Vid field value if set, zero value otherwise.
func (o *CurveGaugeTypeWeightDTO) GetVid() int64 {
	if o == nil || isNil(o.Vid) {
		var ret int64
		return ret
	}
	return *o.Vid
}

// GetVidOk returns a tuple with the Vid field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *CurveGaugeTypeWeightDTO) GetVidOk() (*int64, bool) {
	if o == nil || isNil(o.Vid) {
    return nil, false
	}
	return o.Vid, true
}

// HasVid returns a boolean if a field has been set.
func (o *CurveGaugeTypeWeightDTO) HasVid() bool {
	if o != nil && !isNil(o.Vid) {
		return true
	}

	return false
}

// SetVid gets a reference to the given int64 and assigns it to the Vid field.
func (o *CurveGaugeTypeWeightDTO) SetVid(v int64) {
	o.Vid = &v
}

func (o CurveGaugeTypeWeightDTO) MarshalJSON() ([]byte, error) {
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
	if o.Type.IsSet() {
		toSerialize["type"] = o.Type.Get()
	}
	if o.Time.IsSet() {
		toSerialize["time"] = o.Time.Get()
	}
	if o.Weight.IsSet() {
		toSerialize["weight"] = o.Weight.Get()
	}
	if !isNil(o.Vid) {
		toSerialize["vid"] = o.Vid
	}
	return json.Marshal(toSerialize)
}

type NullableCurveGaugeTypeWeightDTO struct {
	value *CurveGaugeTypeWeightDTO
	isSet bool
}

func (v NullableCurveGaugeTypeWeightDTO) Get() *CurveGaugeTypeWeightDTO {
	return v.value
}

func (v *NullableCurveGaugeTypeWeightDTO) Set(val *CurveGaugeTypeWeightDTO) {
	v.value = val
	v.isSet = true
}

func (v NullableCurveGaugeTypeWeightDTO) IsSet() bool {
	return v.isSet
}

func (v *NullableCurveGaugeTypeWeightDTO) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableCurveGaugeTypeWeightDTO(val *CurveGaugeTypeWeightDTO) *NullableCurveGaugeTypeWeightDTO {
	return &NullableCurveGaugeTypeWeightDTO{value: val, isSet: true}
}

func (v NullableCurveGaugeTypeWeightDTO) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableCurveGaugeTypeWeightDTO) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


