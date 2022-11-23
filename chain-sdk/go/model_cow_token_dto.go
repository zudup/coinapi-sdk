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

// CowTokenDTO Stores information for a specific token across all pairs that token is included in.
type CowTokenDTO struct {
	EntryTime *time.Time `json:"entry_time,omitempty"`
	RecvTime *time.Time `json:"recv_time,omitempty"`
	// Number of block in which entity was recorded.
	BlockNumber *int64 `json:"block_number,omitempty"`
	// Token's address.
	Id NullableString `json:"id,omitempty"`
	// Token's address.
	Address NullableString `json:"address,omitempty"`
	// First token trade block timestamp.
	FirstTradeTimestamp NullableString `json:"first_trade_timestamp,omitempty"`
	// Token name fetched by ERC20 contract call.
	Name NullableString `json:"name,omitempty"`
	// Token symbol fetched by contract call.
	Symbol NullableString `json:"symbol,omitempty"`
	// Token decimals fetched by contract call.
	Decimals *int32 `json:"decimals,omitempty"`
	// Sum of total amount traded for this token.
	TotalVolume NullableString `json:"total_volume,omitempty"`
	// 
	Vid *int64 `json:"vid,omitempty"`
	TokenSymbol NullableString `json:"token_symbol,omitempty"`
}

// NewCowTokenDTO instantiates a new CowTokenDTO object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewCowTokenDTO() *CowTokenDTO {
	this := CowTokenDTO{}
	return &this
}

// NewCowTokenDTOWithDefaults instantiates a new CowTokenDTO object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewCowTokenDTOWithDefaults() *CowTokenDTO {
	this := CowTokenDTO{}
	return &this
}

// GetEntryTime returns the EntryTime field value if set, zero value otherwise.
func (o *CowTokenDTO) GetEntryTime() time.Time {
	if o == nil || isNil(o.EntryTime) {
		var ret time.Time
		return ret
	}
	return *o.EntryTime
}

// GetEntryTimeOk returns a tuple with the EntryTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *CowTokenDTO) GetEntryTimeOk() (*time.Time, bool) {
	if o == nil || isNil(o.EntryTime) {
    return nil, false
	}
	return o.EntryTime, true
}

// HasEntryTime returns a boolean if a field has been set.
func (o *CowTokenDTO) HasEntryTime() bool {
	if o != nil && !isNil(o.EntryTime) {
		return true
	}

	return false
}

// SetEntryTime gets a reference to the given time.Time and assigns it to the EntryTime field.
func (o *CowTokenDTO) SetEntryTime(v time.Time) {
	o.EntryTime = &v
}

// GetRecvTime returns the RecvTime field value if set, zero value otherwise.
func (o *CowTokenDTO) GetRecvTime() time.Time {
	if o == nil || isNil(o.RecvTime) {
		var ret time.Time
		return ret
	}
	return *o.RecvTime
}

// GetRecvTimeOk returns a tuple with the RecvTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *CowTokenDTO) GetRecvTimeOk() (*time.Time, bool) {
	if o == nil || isNil(o.RecvTime) {
    return nil, false
	}
	return o.RecvTime, true
}

// HasRecvTime returns a boolean if a field has been set.
func (o *CowTokenDTO) HasRecvTime() bool {
	if o != nil && !isNil(o.RecvTime) {
		return true
	}

	return false
}

// SetRecvTime gets a reference to the given time.Time and assigns it to the RecvTime field.
func (o *CowTokenDTO) SetRecvTime(v time.Time) {
	o.RecvTime = &v
}

// GetBlockNumber returns the BlockNumber field value if set, zero value otherwise.
func (o *CowTokenDTO) GetBlockNumber() int64 {
	if o == nil || isNil(o.BlockNumber) {
		var ret int64
		return ret
	}
	return *o.BlockNumber
}

// GetBlockNumberOk returns a tuple with the BlockNumber field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *CowTokenDTO) GetBlockNumberOk() (*int64, bool) {
	if o == nil || isNil(o.BlockNumber) {
    return nil, false
	}
	return o.BlockNumber, true
}

// HasBlockNumber returns a boolean if a field has been set.
func (o *CowTokenDTO) HasBlockNumber() bool {
	if o != nil && !isNil(o.BlockNumber) {
		return true
	}

	return false
}

// SetBlockNumber gets a reference to the given int64 and assigns it to the BlockNumber field.
func (o *CowTokenDTO) SetBlockNumber(v int64) {
	o.BlockNumber = &v
}

// GetId returns the Id field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *CowTokenDTO) GetId() string {
	if o == nil || isNil(o.Id.Get()) {
		var ret string
		return ret
	}
	return *o.Id.Get()
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *CowTokenDTO) GetIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Id.Get(), o.Id.IsSet()
}

// HasId returns a boolean if a field has been set.
func (o *CowTokenDTO) HasId() bool {
	if o != nil && o.Id.IsSet() {
		return true
	}

	return false
}

// SetId gets a reference to the given NullableString and assigns it to the Id field.
func (o *CowTokenDTO) SetId(v string) {
	o.Id.Set(&v)
}
// SetIdNil sets the value for Id to be an explicit nil
func (o *CowTokenDTO) SetIdNil() {
	o.Id.Set(nil)
}

// UnsetId ensures that no value is present for Id, not even an explicit nil
func (o *CowTokenDTO) UnsetId() {
	o.Id.Unset()
}

// GetAddress returns the Address field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *CowTokenDTO) GetAddress() string {
	if o == nil || isNil(o.Address.Get()) {
		var ret string
		return ret
	}
	return *o.Address.Get()
}

// GetAddressOk returns a tuple with the Address field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *CowTokenDTO) GetAddressOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Address.Get(), o.Address.IsSet()
}

// HasAddress returns a boolean if a field has been set.
func (o *CowTokenDTO) HasAddress() bool {
	if o != nil && o.Address.IsSet() {
		return true
	}

	return false
}

// SetAddress gets a reference to the given NullableString and assigns it to the Address field.
func (o *CowTokenDTO) SetAddress(v string) {
	o.Address.Set(&v)
}
// SetAddressNil sets the value for Address to be an explicit nil
func (o *CowTokenDTO) SetAddressNil() {
	o.Address.Set(nil)
}

// UnsetAddress ensures that no value is present for Address, not even an explicit nil
func (o *CowTokenDTO) UnsetAddress() {
	o.Address.Unset()
}

// GetFirstTradeTimestamp returns the FirstTradeTimestamp field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *CowTokenDTO) GetFirstTradeTimestamp() string {
	if o == nil || isNil(o.FirstTradeTimestamp.Get()) {
		var ret string
		return ret
	}
	return *o.FirstTradeTimestamp.Get()
}

// GetFirstTradeTimestampOk returns a tuple with the FirstTradeTimestamp field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *CowTokenDTO) GetFirstTradeTimestampOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.FirstTradeTimestamp.Get(), o.FirstTradeTimestamp.IsSet()
}

// HasFirstTradeTimestamp returns a boolean if a field has been set.
func (o *CowTokenDTO) HasFirstTradeTimestamp() bool {
	if o != nil && o.FirstTradeTimestamp.IsSet() {
		return true
	}

	return false
}

// SetFirstTradeTimestamp gets a reference to the given NullableString and assigns it to the FirstTradeTimestamp field.
func (o *CowTokenDTO) SetFirstTradeTimestamp(v string) {
	o.FirstTradeTimestamp.Set(&v)
}
// SetFirstTradeTimestampNil sets the value for FirstTradeTimestamp to be an explicit nil
func (o *CowTokenDTO) SetFirstTradeTimestampNil() {
	o.FirstTradeTimestamp.Set(nil)
}

// UnsetFirstTradeTimestamp ensures that no value is present for FirstTradeTimestamp, not even an explicit nil
func (o *CowTokenDTO) UnsetFirstTradeTimestamp() {
	o.FirstTradeTimestamp.Unset()
}

// GetName returns the Name field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *CowTokenDTO) GetName() string {
	if o == nil || isNil(o.Name.Get()) {
		var ret string
		return ret
	}
	return *o.Name.Get()
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *CowTokenDTO) GetNameOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Name.Get(), o.Name.IsSet()
}

// HasName returns a boolean if a field has been set.
func (o *CowTokenDTO) HasName() bool {
	if o != nil && o.Name.IsSet() {
		return true
	}

	return false
}

// SetName gets a reference to the given NullableString and assigns it to the Name field.
func (o *CowTokenDTO) SetName(v string) {
	o.Name.Set(&v)
}
// SetNameNil sets the value for Name to be an explicit nil
func (o *CowTokenDTO) SetNameNil() {
	o.Name.Set(nil)
}

// UnsetName ensures that no value is present for Name, not even an explicit nil
func (o *CowTokenDTO) UnsetName() {
	o.Name.Unset()
}

// GetSymbol returns the Symbol field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *CowTokenDTO) GetSymbol() string {
	if o == nil || isNil(o.Symbol.Get()) {
		var ret string
		return ret
	}
	return *o.Symbol.Get()
}

// GetSymbolOk returns a tuple with the Symbol field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *CowTokenDTO) GetSymbolOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Symbol.Get(), o.Symbol.IsSet()
}

// HasSymbol returns a boolean if a field has been set.
func (o *CowTokenDTO) HasSymbol() bool {
	if o != nil && o.Symbol.IsSet() {
		return true
	}

	return false
}

// SetSymbol gets a reference to the given NullableString and assigns it to the Symbol field.
func (o *CowTokenDTO) SetSymbol(v string) {
	o.Symbol.Set(&v)
}
// SetSymbolNil sets the value for Symbol to be an explicit nil
func (o *CowTokenDTO) SetSymbolNil() {
	o.Symbol.Set(nil)
}

// UnsetSymbol ensures that no value is present for Symbol, not even an explicit nil
func (o *CowTokenDTO) UnsetSymbol() {
	o.Symbol.Unset()
}

// GetDecimals returns the Decimals field value if set, zero value otherwise.
func (o *CowTokenDTO) GetDecimals() int32 {
	if o == nil || isNil(o.Decimals) {
		var ret int32
		return ret
	}
	return *o.Decimals
}

// GetDecimalsOk returns a tuple with the Decimals field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *CowTokenDTO) GetDecimalsOk() (*int32, bool) {
	if o == nil || isNil(o.Decimals) {
    return nil, false
	}
	return o.Decimals, true
}

// HasDecimals returns a boolean if a field has been set.
func (o *CowTokenDTO) HasDecimals() bool {
	if o != nil && !isNil(o.Decimals) {
		return true
	}

	return false
}

// SetDecimals gets a reference to the given int32 and assigns it to the Decimals field.
func (o *CowTokenDTO) SetDecimals(v int32) {
	o.Decimals = &v
}

// GetTotalVolume returns the TotalVolume field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *CowTokenDTO) GetTotalVolume() string {
	if o == nil || isNil(o.TotalVolume.Get()) {
		var ret string
		return ret
	}
	return *o.TotalVolume.Get()
}

// GetTotalVolumeOk returns a tuple with the TotalVolume field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *CowTokenDTO) GetTotalVolumeOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.TotalVolume.Get(), o.TotalVolume.IsSet()
}

// HasTotalVolume returns a boolean if a field has been set.
func (o *CowTokenDTO) HasTotalVolume() bool {
	if o != nil && o.TotalVolume.IsSet() {
		return true
	}

	return false
}

// SetTotalVolume gets a reference to the given NullableString and assigns it to the TotalVolume field.
func (o *CowTokenDTO) SetTotalVolume(v string) {
	o.TotalVolume.Set(&v)
}
// SetTotalVolumeNil sets the value for TotalVolume to be an explicit nil
func (o *CowTokenDTO) SetTotalVolumeNil() {
	o.TotalVolume.Set(nil)
}

// UnsetTotalVolume ensures that no value is present for TotalVolume, not even an explicit nil
func (o *CowTokenDTO) UnsetTotalVolume() {
	o.TotalVolume.Unset()
}

// GetVid returns the Vid field value if set, zero value otherwise.
func (o *CowTokenDTO) GetVid() int64 {
	if o == nil || isNil(o.Vid) {
		var ret int64
		return ret
	}
	return *o.Vid
}

// GetVidOk returns a tuple with the Vid field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *CowTokenDTO) GetVidOk() (*int64, bool) {
	if o == nil || isNil(o.Vid) {
    return nil, false
	}
	return o.Vid, true
}

// HasVid returns a boolean if a field has been set.
func (o *CowTokenDTO) HasVid() bool {
	if o != nil && !isNil(o.Vid) {
		return true
	}

	return false
}

// SetVid gets a reference to the given int64 and assigns it to the Vid field.
func (o *CowTokenDTO) SetVid(v int64) {
	o.Vid = &v
}

// GetTokenSymbol returns the TokenSymbol field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *CowTokenDTO) GetTokenSymbol() string {
	if o == nil || isNil(o.TokenSymbol.Get()) {
		var ret string
		return ret
	}
	return *o.TokenSymbol.Get()
}

// GetTokenSymbolOk returns a tuple with the TokenSymbol field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *CowTokenDTO) GetTokenSymbolOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.TokenSymbol.Get(), o.TokenSymbol.IsSet()
}

// HasTokenSymbol returns a boolean if a field has been set.
func (o *CowTokenDTO) HasTokenSymbol() bool {
	if o != nil && o.TokenSymbol.IsSet() {
		return true
	}

	return false
}

// SetTokenSymbol gets a reference to the given NullableString and assigns it to the TokenSymbol field.
func (o *CowTokenDTO) SetTokenSymbol(v string) {
	o.TokenSymbol.Set(&v)
}
// SetTokenSymbolNil sets the value for TokenSymbol to be an explicit nil
func (o *CowTokenDTO) SetTokenSymbolNil() {
	o.TokenSymbol.Set(nil)
}

// UnsetTokenSymbol ensures that no value is present for TokenSymbol, not even an explicit nil
func (o *CowTokenDTO) UnsetTokenSymbol() {
	o.TokenSymbol.Unset()
}

func (o CowTokenDTO) MarshalJSON() ([]byte, error) {
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
	if o.FirstTradeTimestamp.IsSet() {
		toSerialize["first_trade_timestamp"] = o.FirstTradeTimestamp.Get()
	}
	if o.Name.IsSet() {
		toSerialize["name"] = o.Name.Get()
	}
	if o.Symbol.IsSet() {
		toSerialize["symbol"] = o.Symbol.Get()
	}
	if !isNil(o.Decimals) {
		toSerialize["decimals"] = o.Decimals
	}
	if o.TotalVolume.IsSet() {
		toSerialize["total_volume"] = o.TotalVolume.Get()
	}
	if !isNil(o.Vid) {
		toSerialize["vid"] = o.Vid
	}
	if o.TokenSymbol.IsSet() {
		toSerialize["token_symbol"] = o.TokenSymbol.Get()
	}
	return json.Marshal(toSerialize)
}

type NullableCowTokenDTO struct {
	value *CowTokenDTO
	isSet bool
}

func (v NullableCowTokenDTO) Get() *CowTokenDTO {
	return v.value
}

func (v *NullableCowTokenDTO) Set(val *CowTokenDTO) {
	v.value = val
	v.isSet = true
}

func (v NullableCowTokenDTO) IsSet() bool {
	return v.isSet
}

func (v *NullableCowTokenDTO) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableCowTokenDTO(val *CowTokenDTO) *NullableCowTokenDTO {
	return &NullableCowTokenDTO{value: val, isSet: true}
}

func (v NullableCowTokenDTO) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableCowTokenDTO) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


