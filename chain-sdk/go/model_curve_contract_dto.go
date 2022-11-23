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

// CurveContractDTO struct for CurveContractDTO
type CurveContractDTO struct {
	EntryTime *time.Time `json:"entry_time,omitempty"`
	RecvTime *time.Time `json:"recv_time,omitempty"`
	// Number of block in which entity was recorded.
	BlockNumber *int64 `json:"block_number,omitempty"`
	// 
	Id NullableString `json:"id,omitempty"`
	// Human-readable description.
	Description NullableString `json:"description,omitempty"`
	// 
	Added NullableString `json:"added,omitempty"`
	// 
	AddedAtBlock NullableString `json:"added_at_block,omitempty"`
	// 
	AddedAtTransaction NullableString `json:"added_at_transaction,omitempty"`
	// 
	Modified NullableString `json:"modified,omitempty"`
	// 
	ModifiedAtBlock NullableString `json:"modified_at_block,omitempty"`
	// 
	ModifiedAtTransaction NullableString `json:"modified_at_transaction,omitempty"`
	// 
	Vid *int64 `json:"vid,omitempty"`
}

// NewCurveContractDTO instantiates a new CurveContractDTO object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewCurveContractDTO() *CurveContractDTO {
	this := CurveContractDTO{}
	return &this
}

// NewCurveContractDTOWithDefaults instantiates a new CurveContractDTO object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewCurveContractDTOWithDefaults() *CurveContractDTO {
	this := CurveContractDTO{}
	return &this
}

// GetEntryTime returns the EntryTime field value if set, zero value otherwise.
func (o *CurveContractDTO) GetEntryTime() time.Time {
	if o == nil || isNil(o.EntryTime) {
		var ret time.Time
		return ret
	}
	return *o.EntryTime
}

// GetEntryTimeOk returns a tuple with the EntryTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *CurveContractDTO) GetEntryTimeOk() (*time.Time, bool) {
	if o == nil || isNil(o.EntryTime) {
    return nil, false
	}
	return o.EntryTime, true
}

// HasEntryTime returns a boolean if a field has been set.
func (o *CurveContractDTO) HasEntryTime() bool {
	if o != nil && !isNil(o.EntryTime) {
		return true
	}

	return false
}

// SetEntryTime gets a reference to the given time.Time and assigns it to the EntryTime field.
func (o *CurveContractDTO) SetEntryTime(v time.Time) {
	o.EntryTime = &v
}

// GetRecvTime returns the RecvTime field value if set, zero value otherwise.
func (o *CurveContractDTO) GetRecvTime() time.Time {
	if o == nil || isNil(o.RecvTime) {
		var ret time.Time
		return ret
	}
	return *o.RecvTime
}

// GetRecvTimeOk returns a tuple with the RecvTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *CurveContractDTO) GetRecvTimeOk() (*time.Time, bool) {
	if o == nil || isNil(o.RecvTime) {
    return nil, false
	}
	return o.RecvTime, true
}

// HasRecvTime returns a boolean if a field has been set.
func (o *CurveContractDTO) HasRecvTime() bool {
	if o != nil && !isNil(o.RecvTime) {
		return true
	}

	return false
}

// SetRecvTime gets a reference to the given time.Time and assigns it to the RecvTime field.
func (o *CurveContractDTO) SetRecvTime(v time.Time) {
	o.RecvTime = &v
}

// GetBlockNumber returns the BlockNumber field value if set, zero value otherwise.
func (o *CurveContractDTO) GetBlockNumber() int64 {
	if o == nil || isNil(o.BlockNumber) {
		var ret int64
		return ret
	}
	return *o.BlockNumber
}

// GetBlockNumberOk returns a tuple with the BlockNumber field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *CurveContractDTO) GetBlockNumberOk() (*int64, bool) {
	if o == nil || isNil(o.BlockNumber) {
    return nil, false
	}
	return o.BlockNumber, true
}

// HasBlockNumber returns a boolean if a field has been set.
func (o *CurveContractDTO) HasBlockNumber() bool {
	if o != nil && !isNil(o.BlockNumber) {
		return true
	}

	return false
}

// SetBlockNumber gets a reference to the given int64 and assigns it to the BlockNumber field.
func (o *CurveContractDTO) SetBlockNumber(v int64) {
	o.BlockNumber = &v
}

// GetId returns the Id field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *CurveContractDTO) GetId() string {
	if o == nil || isNil(o.Id.Get()) {
		var ret string
		return ret
	}
	return *o.Id.Get()
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *CurveContractDTO) GetIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Id.Get(), o.Id.IsSet()
}

// HasId returns a boolean if a field has been set.
func (o *CurveContractDTO) HasId() bool {
	if o != nil && o.Id.IsSet() {
		return true
	}

	return false
}

// SetId gets a reference to the given NullableString and assigns it to the Id field.
func (o *CurveContractDTO) SetId(v string) {
	o.Id.Set(&v)
}
// SetIdNil sets the value for Id to be an explicit nil
func (o *CurveContractDTO) SetIdNil() {
	o.Id.Set(nil)
}

// UnsetId ensures that no value is present for Id, not even an explicit nil
func (o *CurveContractDTO) UnsetId() {
	o.Id.Unset()
}

// GetDescription returns the Description field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *CurveContractDTO) GetDescription() string {
	if o == nil || isNil(o.Description.Get()) {
		var ret string
		return ret
	}
	return *o.Description.Get()
}

// GetDescriptionOk returns a tuple with the Description field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *CurveContractDTO) GetDescriptionOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Description.Get(), o.Description.IsSet()
}

// HasDescription returns a boolean if a field has been set.
func (o *CurveContractDTO) HasDescription() bool {
	if o != nil && o.Description.IsSet() {
		return true
	}

	return false
}

// SetDescription gets a reference to the given NullableString and assigns it to the Description field.
func (o *CurveContractDTO) SetDescription(v string) {
	o.Description.Set(&v)
}
// SetDescriptionNil sets the value for Description to be an explicit nil
func (o *CurveContractDTO) SetDescriptionNil() {
	o.Description.Set(nil)
}

// UnsetDescription ensures that no value is present for Description, not even an explicit nil
func (o *CurveContractDTO) UnsetDescription() {
	o.Description.Unset()
}

// GetAdded returns the Added field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *CurveContractDTO) GetAdded() string {
	if o == nil || isNil(o.Added.Get()) {
		var ret string
		return ret
	}
	return *o.Added.Get()
}

// GetAddedOk returns a tuple with the Added field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *CurveContractDTO) GetAddedOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Added.Get(), o.Added.IsSet()
}

// HasAdded returns a boolean if a field has been set.
func (o *CurveContractDTO) HasAdded() bool {
	if o != nil && o.Added.IsSet() {
		return true
	}

	return false
}

// SetAdded gets a reference to the given NullableString and assigns it to the Added field.
func (o *CurveContractDTO) SetAdded(v string) {
	o.Added.Set(&v)
}
// SetAddedNil sets the value for Added to be an explicit nil
func (o *CurveContractDTO) SetAddedNil() {
	o.Added.Set(nil)
}

// UnsetAdded ensures that no value is present for Added, not even an explicit nil
func (o *CurveContractDTO) UnsetAdded() {
	o.Added.Unset()
}

// GetAddedAtBlock returns the AddedAtBlock field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *CurveContractDTO) GetAddedAtBlock() string {
	if o == nil || isNil(o.AddedAtBlock.Get()) {
		var ret string
		return ret
	}
	return *o.AddedAtBlock.Get()
}

// GetAddedAtBlockOk returns a tuple with the AddedAtBlock field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *CurveContractDTO) GetAddedAtBlockOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.AddedAtBlock.Get(), o.AddedAtBlock.IsSet()
}

// HasAddedAtBlock returns a boolean if a field has been set.
func (o *CurveContractDTO) HasAddedAtBlock() bool {
	if o != nil && o.AddedAtBlock.IsSet() {
		return true
	}

	return false
}

// SetAddedAtBlock gets a reference to the given NullableString and assigns it to the AddedAtBlock field.
func (o *CurveContractDTO) SetAddedAtBlock(v string) {
	o.AddedAtBlock.Set(&v)
}
// SetAddedAtBlockNil sets the value for AddedAtBlock to be an explicit nil
func (o *CurveContractDTO) SetAddedAtBlockNil() {
	o.AddedAtBlock.Set(nil)
}

// UnsetAddedAtBlock ensures that no value is present for AddedAtBlock, not even an explicit nil
func (o *CurveContractDTO) UnsetAddedAtBlock() {
	o.AddedAtBlock.Unset()
}

// GetAddedAtTransaction returns the AddedAtTransaction field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *CurveContractDTO) GetAddedAtTransaction() string {
	if o == nil || isNil(o.AddedAtTransaction.Get()) {
		var ret string
		return ret
	}
	return *o.AddedAtTransaction.Get()
}

// GetAddedAtTransactionOk returns a tuple with the AddedAtTransaction field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *CurveContractDTO) GetAddedAtTransactionOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.AddedAtTransaction.Get(), o.AddedAtTransaction.IsSet()
}

// HasAddedAtTransaction returns a boolean if a field has been set.
func (o *CurveContractDTO) HasAddedAtTransaction() bool {
	if o != nil && o.AddedAtTransaction.IsSet() {
		return true
	}

	return false
}

// SetAddedAtTransaction gets a reference to the given NullableString and assigns it to the AddedAtTransaction field.
func (o *CurveContractDTO) SetAddedAtTransaction(v string) {
	o.AddedAtTransaction.Set(&v)
}
// SetAddedAtTransactionNil sets the value for AddedAtTransaction to be an explicit nil
func (o *CurveContractDTO) SetAddedAtTransactionNil() {
	o.AddedAtTransaction.Set(nil)
}

// UnsetAddedAtTransaction ensures that no value is present for AddedAtTransaction, not even an explicit nil
func (o *CurveContractDTO) UnsetAddedAtTransaction() {
	o.AddedAtTransaction.Unset()
}

// GetModified returns the Modified field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *CurveContractDTO) GetModified() string {
	if o == nil || isNil(o.Modified.Get()) {
		var ret string
		return ret
	}
	return *o.Modified.Get()
}

// GetModifiedOk returns a tuple with the Modified field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *CurveContractDTO) GetModifiedOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Modified.Get(), o.Modified.IsSet()
}

// HasModified returns a boolean if a field has been set.
func (o *CurveContractDTO) HasModified() bool {
	if o != nil && o.Modified.IsSet() {
		return true
	}

	return false
}

// SetModified gets a reference to the given NullableString and assigns it to the Modified field.
func (o *CurveContractDTO) SetModified(v string) {
	o.Modified.Set(&v)
}
// SetModifiedNil sets the value for Modified to be an explicit nil
func (o *CurveContractDTO) SetModifiedNil() {
	o.Modified.Set(nil)
}

// UnsetModified ensures that no value is present for Modified, not even an explicit nil
func (o *CurveContractDTO) UnsetModified() {
	o.Modified.Unset()
}

// GetModifiedAtBlock returns the ModifiedAtBlock field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *CurveContractDTO) GetModifiedAtBlock() string {
	if o == nil || isNil(o.ModifiedAtBlock.Get()) {
		var ret string
		return ret
	}
	return *o.ModifiedAtBlock.Get()
}

// GetModifiedAtBlockOk returns a tuple with the ModifiedAtBlock field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *CurveContractDTO) GetModifiedAtBlockOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.ModifiedAtBlock.Get(), o.ModifiedAtBlock.IsSet()
}

// HasModifiedAtBlock returns a boolean if a field has been set.
func (o *CurveContractDTO) HasModifiedAtBlock() bool {
	if o != nil && o.ModifiedAtBlock.IsSet() {
		return true
	}

	return false
}

// SetModifiedAtBlock gets a reference to the given NullableString and assigns it to the ModifiedAtBlock field.
func (o *CurveContractDTO) SetModifiedAtBlock(v string) {
	o.ModifiedAtBlock.Set(&v)
}
// SetModifiedAtBlockNil sets the value for ModifiedAtBlock to be an explicit nil
func (o *CurveContractDTO) SetModifiedAtBlockNil() {
	o.ModifiedAtBlock.Set(nil)
}

// UnsetModifiedAtBlock ensures that no value is present for ModifiedAtBlock, not even an explicit nil
func (o *CurveContractDTO) UnsetModifiedAtBlock() {
	o.ModifiedAtBlock.Unset()
}

// GetModifiedAtTransaction returns the ModifiedAtTransaction field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *CurveContractDTO) GetModifiedAtTransaction() string {
	if o == nil || isNil(o.ModifiedAtTransaction.Get()) {
		var ret string
		return ret
	}
	return *o.ModifiedAtTransaction.Get()
}

// GetModifiedAtTransactionOk returns a tuple with the ModifiedAtTransaction field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *CurveContractDTO) GetModifiedAtTransactionOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.ModifiedAtTransaction.Get(), o.ModifiedAtTransaction.IsSet()
}

// HasModifiedAtTransaction returns a boolean if a field has been set.
func (o *CurveContractDTO) HasModifiedAtTransaction() bool {
	if o != nil && o.ModifiedAtTransaction.IsSet() {
		return true
	}

	return false
}

// SetModifiedAtTransaction gets a reference to the given NullableString and assigns it to the ModifiedAtTransaction field.
func (o *CurveContractDTO) SetModifiedAtTransaction(v string) {
	o.ModifiedAtTransaction.Set(&v)
}
// SetModifiedAtTransactionNil sets the value for ModifiedAtTransaction to be an explicit nil
func (o *CurveContractDTO) SetModifiedAtTransactionNil() {
	o.ModifiedAtTransaction.Set(nil)
}

// UnsetModifiedAtTransaction ensures that no value is present for ModifiedAtTransaction, not even an explicit nil
func (o *CurveContractDTO) UnsetModifiedAtTransaction() {
	o.ModifiedAtTransaction.Unset()
}

// GetVid returns the Vid field value if set, zero value otherwise.
func (o *CurveContractDTO) GetVid() int64 {
	if o == nil || isNil(o.Vid) {
		var ret int64
		return ret
	}
	return *o.Vid
}

// GetVidOk returns a tuple with the Vid field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *CurveContractDTO) GetVidOk() (*int64, bool) {
	if o == nil || isNil(o.Vid) {
    return nil, false
	}
	return o.Vid, true
}

// HasVid returns a boolean if a field has been set.
func (o *CurveContractDTO) HasVid() bool {
	if o != nil && !isNil(o.Vid) {
		return true
	}

	return false
}

// SetVid gets a reference to the given int64 and assigns it to the Vid field.
func (o *CurveContractDTO) SetVid(v int64) {
	o.Vid = &v
}

func (o CurveContractDTO) MarshalJSON() ([]byte, error) {
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
	if o.Description.IsSet() {
		toSerialize["description"] = o.Description.Get()
	}
	if o.Added.IsSet() {
		toSerialize["added"] = o.Added.Get()
	}
	if o.AddedAtBlock.IsSet() {
		toSerialize["added_at_block"] = o.AddedAtBlock.Get()
	}
	if o.AddedAtTransaction.IsSet() {
		toSerialize["added_at_transaction"] = o.AddedAtTransaction.Get()
	}
	if o.Modified.IsSet() {
		toSerialize["modified"] = o.Modified.Get()
	}
	if o.ModifiedAtBlock.IsSet() {
		toSerialize["modified_at_block"] = o.ModifiedAtBlock.Get()
	}
	if o.ModifiedAtTransaction.IsSet() {
		toSerialize["modified_at_transaction"] = o.ModifiedAtTransaction.Get()
	}
	if !isNil(o.Vid) {
		toSerialize["vid"] = o.Vid
	}
	return json.Marshal(toSerialize)
}

type NullableCurveContractDTO struct {
	value *CurveContractDTO
	isSet bool
}

func (v NullableCurveContractDTO) Get() *CurveContractDTO {
	return v.value
}

func (v *NullableCurveContractDTO) Set(val *CurveContractDTO) {
	v.value = val
	v.isSet = true
}

func (v NullableCurveContractDTO) IsSet() bool {
	return v.isSet
}

func (v *NullableCurveContractDTO) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableCurveContractDTO(val *CurveContractDTO) *NullableCurveContractDTO {
	return &NullableCurveContractDTO{value: val, isSet: true}
}

func (v NullableCurveContractDTO) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableCurveContractDTO) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


