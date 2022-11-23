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

// SushiswapPairDayDataDTO Tracks pair data across each day.
type SushiswapPairDayDataDTO struct {
	EntryTime *time.Time `json:"entry_time,omitempty"`
	RecvTime *time.Time `json:"recv_time,omitempty"`
	// Number of block in which entity was recorded.
	BlockNumber *int64 `json:"block_number,omitempty"`
	// Identifier, format: <pair id>-<day start timestamp>.
	Id NullableString `json:"id,omitempty"`
	// Unix timestamp for start of day.
	Date *int32 `json:"date,omitempty"`
	// Reference to pair.
	Pair NullableString `json:"pair,omitempty"`
	// Reference to token0.
	Token0 NullableString `json:"token_0,omitempty"`
	// Reference to token1.
	Token1 NullableString `json:"token_1,omitempty"`
	// Reserve of token0 (updated during each transaction on pair).
	Reserve0 NullableString `json:"reserve_0,omitempty"`
	// Reserve of token1 (updated during each transaction on pair).
	Reserve1 NullableString `json:"reserve_1,omitempty"`
	// Total supply of liquidity token distributed to LPs.
	TotalSupply NullableString `json:"total_supply,omitempty"`
	// Reserve of token0 plus token1 stored as a derived USD amount.
	ReserveUsd NullableString `json:"reserve_usd,omitempty"`
	// Total amount of token0 swapped throughout day.
	VolumeToken0 NullableString `json:"volume_token_0,omitempty"`
	// Total amount of token1 swapped throughout day.
	VolumeToken1 NullableString `json:"volume_token_1,omitempty"`
	// Total volume within pair throughout day.
	VolumeUsd NullableString `json:"volume_usd,omitempty"`
	// Amount of transactions on pair throughout day.
	TxCount NullableString `json:"tx_count,omitempty"`
	// 
	Vid *int64 `json:"vid,omitempty"`
}

// NewSushiswapPairDayDataDTO instantiates a new SushiswapPairDayDataDTO object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSushiswapPairDayDataDTO() *SushiswapPairDayDataDTO {
	this := SushiswapPairDayDataDTO{}
	return &this
}

// NewSushiswapPairDayDataDTOWithDefaults instantiates a new SushiswapPairDayDataDTO object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSushiswapPairDayDataDTOWithDefaults() *SushiswapPairDayDataDTO {
	this := SushiswapPairDayDataDTO{}
	return &this
}

// GetEntryTime returns the EntryTime field value if set, zero value otherwise.
func (o *SushiswapPairDayDataDTO) GetEntryTime() time.Time {
	if o == nil || isNil(o.EntryTime) {
		var ret time.Time
		return ret
	}
	return *o.EntryTime
}

// GetEntryTimeOk returns a tuple with the EntryTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SushiswapPairDayDataDTO) GetEntryTimeOk() (*time.Time, bool) {
	if o == nil || isNil(o.EntryTime) {
    return nil, false
	}
	return o.EntryTime, true
}

// HasEntryTime returns a boolean if a field has been set.
func (o *SushiswapPairDayDataDTO) HasEntryTime() bool {
	if o != nil && !isNil(o.EntryTime) {
		return true
	}

	return false
}

// SetEntryTime gets a reference to the given time.Time and assigns it to the EntryTime field.
func (o *SushiswapPairDayDataDTO) SetEntryTime(v time.Time) {
	o.EntryTime = &v
}

// GetRecvTime returns the RecvTime field value if set, zero value otherwise.
func (o *SushiswapPairDayDataDTO) GetRecvTime() time.Time {
	if o == nil || isNil(o.RecvTime) {
		var ret time.Time
		return ret
	}
	return *o.RecvTime
}

// GetRecvTimeOk returns a tuple with the RecvTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SushiswapPairDayDataDTO) GetRecvTimeOk() (*time.Time, bool) {
	if o == nil || isNil(o.RecvTime) {
    return nil, false
	}
	return o.RecvTime, true
}

// HasRecvTime returns a boolean if a field has been set.
func (o *SushiswapPairDayDataDTO) HasRecvTime() bool {
	if o != nil && !isNil(o.RecvTime) {
		return true
	}

	return false
}

// SetRecvTime gets a reference to the given time.Time and assigns it to the RecvTime field.
func (o *SushiswapPairDayDataDTO) SetRecvTime(v time.Time) {
	o.RecvTime = &v
}

// GetBlockNumber returns the BlockNumber field value if set, zero value otherwise.
func (o *SushiswapPairDayDataDTO) GetBlockNumber() int64 {
	if o == nil || isNil(o.BlockNumber) {
		var ret int64
		return ret
	}
	return *o.BlockNumber
}

// GetBlockNumberOk returns a tuple with the BlockNumber field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SushiswapPairDayDataDTO) GetBlockNumberOk() (*int64, bool) {
	if o == nil || isNil(o.BlockNumber) {
    return nil, false
	}
	return o.BlockNumber, true
}

// HasBlockNumber returns a boolean if a field has been set.
func (o *SushiswapPairDayDataDTO) HasBlockNumber() bool {
	if o != nil && !isNil(o.BlockNumber) {
		return true
	}

	return false
}

// SetBlockNumber gets a reference to the given int64 and assigns it to the BlockNumber field.
func (o *SushiswapPairDayDataDTO) SetBlockNumber(v int64) {
	o.BlockNumber = &v
}

// GetId returns the Id field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SushiswapPairDayDataDTO) GetId() string {
	if o == nil || isNil(o.Id.Get()) {
		var ret string
		return ret
	}
	return *o.Id.Get()
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SushiswapPairDayDataDTO) GetIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Id.Get(), o.Id.IsSet()
}

// HasId returns a boolean if a field has been set.
func (o *SushiswapPairDayDataDTO) HasId() bool {
	if o != nil && o.Id.IsSet() {
		return true
	}

	return false
}

// SetId gets a reference to the given NullableString and assigns it to the Id field.
func (o *SushiswapPairDayDataDTO) SetId(v string) {
	o.Id.Set(&v)
}
// SetIdNil sets the value for Id to be an explicit nil
func (o *SushiswapPairDayDataDTO) SetIdNil() {
	o.Id.Set(nil)
}

// UnsetId ensures that no value is present for Id, not even an explicit nil
func (o *SushiswapPairDayDataDTO) UnsetId() {
	o.Id.Unset()
}

// GetDate returns the Date field value if set, zero value otherwise.
func (o *SushiswapPairDayDataDTO) GetDate() int32 {
	if o == nil || isNil(o.Date) {
		var ret int32
		return ret
	}
	return *o.Date
}

// GetDateOk returns a tuple with the Date field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SushiswapPairDayDataDTO) GetDateOk() (*int32, bool) {
	if o == nil || isNil(o.Date) {
    return nil, false
	}
	return o.Date, true
}

// HasDate returns a boolean if a field has been set.
func (o *SushiswapPairDayDataDTO) HasDate() bool {
	if o != nil && !isNil(o.Date) {
		return true
	}

	return false
}

// SetDate gets a reference to the given int32 and assigns it to the Date field.
func (o *SushiswapPairDayDataDTO) SetDate(v int32) {
	o.Date = &v
}

// GetPair returns the Pair field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SushiswapPairDayDataDTO) GetPair() string {
	if o == nil || isNil(o.Pair.Get()) {
		var ret string
		return ret
	}
	return *o.Pair.Get()
}

// GetPairOk returns a tuple with the Pair field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SushiswapPairDayDataDTO) GetPairOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Pair.Get(), o.Pair.IsSet()
}

// HasPair returns a boolean if a field has been set.
func (o *SushiswapPairDayDataDTO) HasPair() bool {
	if o != nil && o.Pair.IsSet() {
		return true
	}

	return false
}

// SetPair gets a reference to the given NullableString and assigns it to the Pair field.
func (o *SushiswapPairDayDataDTO) SetPair(v string) {
	o.Pair.Set(&v)
}
// SetPairNil sets the value for Pair to be an explicit nil
func (o *SushiswapPairDayDataDTO) SetPairNil() {
	o.Pair.Set(nil)
}

// UnsetPair ensures that no value is present for Pair, not even an explicit nil
func (o *SushiswapPairDayDataDTO) UnsetPair() {
	o.Pair.Unset()
}

// GetToken0 returns the Token0 field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SushiswapPairDayDataDTO) GetToken0() string {
	if o == nil || isNil(o.Token0.Get()) {
		var ret string
		return ret
	}
	return *o.Token0.Get()
}

// GetToken0Ok returns a tuple with the Token0 field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SushiswapPairDayDataDTO) GetToken0Ok() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Token0.Get(), o.Token0.IsSet()
}

// HasToken0 returns a boolean if a field has been set.
func (o *SushiswapPairDayDataDTO) HasToken0() bool {
	if o != nil && o.Token0.IsSet() {
		return true
	}

	return false
}

// SetToken0 gets a reference to the given NullableString and assigns it to the Token0 field.
func (o *SushiswapPairDayDataDTO) SetToken0(v string) {
	o.Token0.Set(&v)
}
// SetToken0Nil sets the value for Token0 to be an explicit nil
func (o *SushiswapPairDayDataDTO) SetToken0Nil() {
	o.Token0.Set(nil)
}

// UnsetToken0 ensures that no value is present for Token0, not even an explicit nil
func (o *SushiswapPairDayDataDTO) UnsetToken0() {
	o.Token0.Unset()
}

// GetToken1 returns the Token1 field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SushiswapPairDayDataDTO) GetToken1() string {
	if o == nil || isNil(o.Token1.Get()) {
		var ret string
		return ret
	}
	return *o.Token1.Get()
}

// GetToken1Ok returns a tuple with the Token1 field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SushiswapPairDayDataDTO) GetToken1Ok() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Token1.Get(), o.Token1.IsSet()
}

// HasToken1 returns a boolean if a field has been set.
func (o *SushiswapPairDayDataDTO) HasToken1() bool {
	if o != nil && o.Token1.IsSet() {
		return true
	}

	return false
}

// SetToken1 gets a reference to the given NullableString and assigns it to the Token1 field.
func (o *SushiswapPairDayDataDTO) SetToken1(v string) {
	o.Token1.Set(&v)
}
// SetToken1Nil sets the value for Token1 to be an explicit nil
func (o *SushiswapPairDayDataDTO) SetToken1Nil() {
	o.Token1.Set(nil)
}

// UnsetToken1 ensures that no value is present for Token1, not even an explicit nil
func (o *SushiswapPairDayDataDTO) UnsetToken1() {
	o.Token1.Unset()
}

// GetReserve0 returns the Reserve0 field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SushiswapPairDayDataDTO) GetReserve0() string {
	if o == nil || isNil(o.Reserve0.Get()) {
		var ret string
		return ret
	}
	return *o.Reserve0.Get()
}

// GetReserve0Ok returns a tuple with the Reserve0 field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SushiswapPairDayDataDTO) GetReserve0Ok() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Reserve0.Get(), o.Reserve0.IsSet()
}

// HasReserve0 returns a boolean if a field has been set.
func (o *SushiswapPairDayDataDTO) HasReserve0() bool {
	if o != nil && o.Reserve0.IsSet() {
		return true
	}

	return false
}

// SetReserve0 gets a reference to the given NullableString and assigns it to the Reserve0 field.
func (o *SushiswapPairDayDataDTO) SetReserve0(v string) {
	o.Reserve0.Set(&v)
}
// SetReserve0Nil sets the value for Reserve0 to be an explicit nil
func (o *SushiswapPairDayDataDTO) SetReserve0Nil() {
	o.Reserve0.Set(nil)
}

// UnsetReserve0 ensures that no value is present for Reserve0, not even an explicit nil
func (o *SushiswapPairDayDataDTO) UnsetReserve0() {
	o.Reserve0.Unset()
}

// GetReserve1 returns the Reserve1 field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SushiswapPairDayDataDTO) GetReserve1() string {
	if o == nil || isNil(o.Reserve1.Get()) {
		var ret string
		return ret
	}
	return *o.Reserve1.Get()
}

// GetReserve1Ok returns a tuple with the Reserve1 field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SushiswapPairDayDataDTO) GetReserve1Ok() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Reserve1.Get(), o.Reserve1.IsSet()
}

// HasReserve1 returns a boolean if a field has been set.
func (o *SushiswapPairDayDataDTO) HasReserve1() bool {
	if o != nil && o.Reserve1.IsSet() {
		return true
	}

	return false
}

// SetReserve1 gets a reference to the given NullableString and assigns it to the Reserve1 field.
func (o *SushiswapPairDayDataDTO) SetReserve1(v string) {
	o.Reserve1.Set(&v)
}
// SetReserve1Nil sets the value for Reserve1 to be an explicit nil
func (o *SushiswapPairDayDataDTO) SetReserve1Nil() {
	o.Reserve1.Set(nil)
}

// UnsetReserve1 ensures that no value is present for Reserve1, not even an explicit nil
func (o *SushiswapPairDayDataDTO) UnsetReserve1() {
	o.Reserve1.Unset()
}

// GetTotalSupply returns the TotalSupply field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SushiswapPairDayDataDTO) GetTotalSupply() string {
	if o == nil || isNil(o.TotalSupply.Get()) {
		var ret string
		return ret
	}
	return *o.TotalSupply.Get()
}

// GetTotalSupplyOk returns a tuple with the TotalSupply field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SushiswapPairDayDataDTO) GetTotalSupplyOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.TotalSupply.Get(), o.TotalSupply.IsSet()
}

// HasTotalSupply returns a boolean if a field has been set.
func (o *SushiswapPairDayDataDTO) HasTotalSupply() bool {
	if o != nil && o.TotalSupply.IsSet() {
		return true
	}

	return false
}

// SetTotalSupply gets a reference to the given NullableString and assigns it to the TotalSupply field.
func (o *SushiswapPairDayDataDTO) SetTotalSupply(v string) {
	o.TotalSupply.Set(&v)
}
// SetTotalSupplyNil sets the value for TotalSupply to be an explicit nil
func (o *SushiswapPairDayDataDTO) SetTotalSupplyNil() {
	o.TotalSupply.Set(nil)
}

// UnsetTotalSupply ensures that no value is present for TotalSupply, not even an explicit nil
func (o *SushiswapPairDayDataDTO) UnsetTotalSupply() {
	o.TotalSupply.Unset()
}

// GetReserveUsd returns the ReserveUsd field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SushiswapPairDayDataDTO) GetReserveUsd() string {
	if o == nil || isNil(o.ReserveUsd.Get()) {
		var ret string
		return ret
	}
	return *o.ReserveUsd.Get()
}

// GetReserveUsdOk returns a tuple with the ReserveUsd field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SushiswapPairDayDataDTO) GetReserveUsdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.ReserveUsd.Get(), o.ReserveUsd.IsSet()
}

// HasReserveUsd returns a boolean if a field has been set.
func (o *SushiswapPairDayDataDTO) HasReserveUsd() bool {
	if o != nil && o.ReserveUsd.IsSet() {
		return true
	}

	return false
}

// SetReserveUsd gets a reference to the given NullableString and assigns it to the ReserveUsd field.
func (o *SushiswapPairDayDataDTO) SetReserveUsd(v string) {
	o.ReserveUsd.Set(&v)
}
// SetReserveUsdNil sets the value for ReserveUsd to be an explicit nil
func (o *SushiswapPairDayDataDTO) SetReserveUsdNil() {
	o.ReserveUsd.Set(nil)
}

// UnsetReserveUsd ensures that no value is present for ReserveUsd, not even an explicit nil
func (o *SushiswapPairDayDataDTO) UnsetReserveUsd() {
	o.ReserveUsd.Unset()
}

// GetVolumeToken0 returns the VolumeToken0 field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SushiswapPairDayDataDTO) GetVolumeToken0() string {
	if o == nil || isNil(o.VolumeToken0.Get()) {
		var ret string
		return ret
	}
	return *o.VolumeToken0.Get()
}

// GetVolumeToken0Ok returns a tuple with the VolumeToken0 field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SushiswapPairDayDataDTO) GetVolumeToken0Ok() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.VolumeToken0.Get(), o.VolumeToken0.IsSet()
}

// HasVolumeToken0 returns a boolean if a field has been set.
func (o *SushiswapPairDayDataDTO) HasVolumeToken0() bool {
	if o != nil && o.VolumeToken0.IsSet() {
		return true
	}

	return false
}

// SetVolumeToken0 gets a reference to the given NullableString and assigns it to the VolumeToken0 field.
func (o *SushiswapPairDayDataDTO) SetVolumeToken0(v string) {
	o.VolumeToken0.Set(&v)
}
// SetVolumeToken0Nil sets the value for VolumeToken0 to be an explicit nil
func (o *SushiswapPairDayDataDTO) SetVolumeToken0Nil() {
	o.VolumeToken0.Set(nil)
}

// UnsetVolumeToken0 ensures that no value is present for VolumeToken0, not even an explicit nil
func (o *SushiswapPairDayDataDTO) UnsetVolumeToken0() {
	o.VolumeToken0.Unset()
}

// GetVolumeToken1 returns the VolumeToken1 field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SushiswapPairDayDataDTO) GetVolumeToken1() string {
	if o == nil || isNil(o.VolumeToken1.Get()) {
		var ret string
		return ret
	}
	return *o.VolumeToken1.Get()
}

// GetVolumeToken1Ok returns a tuple with the VolumeToken1 field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SushiswapPairDayDataDTO) GetVolumeToken1Ok() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.VolumeToken1.Get(), o.VolumeToken1.IsSet()
}

// HasVolumeToken1 returns a boolean if a field has been set.
func (o *SushiswapPairDayDataDTO) HasVolumeToken1() bool {
	if o != nil && o.VolumeToken1.IsSet() {
		return true
	}

	return false
}

// SetVolumeToken1 gets a reference to the given NullableString and assigns it to the VolumeToken1 field.
func (o *SushiswapPairDayDataDTO) SetVolumeToken1(v string) {
	o.VolumeToken1.Set(&v)
}
// SetVolumeToken1Nil sets the value for VolumeToken1 to be an explicit nil
func (o *SushiswapPairDayDataDTO) SetVolumeToken1Nil() {
	o.VolumeToken1.Set(nil)
}

// UnsetVolumeToken1 ensures that no value is present for VolumeToken1, not even an explicit nil
func (o *SushiswapPairDayDataDTO) UnsetVolumeToken1() {
	o.VolumeToken1.Unset()
}

// GetVolumeUsd returns the VolumeUsd field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SushiswapPairDayDataDTO) GetVolumeUsd() string {
	if o == nil || isNil(o.VolumeUsd.Get()) {
		var ret string
		return ret
	}
	return *o.VolumeUsd.Get()
}

// GetVolumeUsdOk returns a tuple with the VolumeUsd field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SushiswapPairDayDataDTO) GetVolumeUsdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.VolumeUsd.Get(), o.VolumeUsd.IsSet()
}

// HasVolumeUsd returns a boolean if a field has been set.
func (o *SushiswapPairDayDataDTO) HasVolumeUsd() bool {
	if o != nil && o.VolumeUsd.IsSet() {
		return true
	}

	return false
}

// SetVolumeUsd gets a reference to the given NullableString and assigns it to the VolumeUsd field.
func (o *SushiswapPairDayDataDTO) SetVolumeUsd(v string) {
	o.VolumeUsd.Set(&v)
}
// SetVolumeUsdNil sets the value for VolumeUsd to be an explicit nil
func (o *SushiswapPairDayDataDTO) SetVolumeUsdNil() {
	o.VolumeUsd.Set(nil)
}

// UnsetVolumeUsd ensures that no value is present for VolumeUsd, not even an explicit nil
func (o *SushiswapPairDayDataDTO) UnsetVolumeUsd() {
	o.VolumeUsd.Unset()
}

// GetTxCount returns the TxCount field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SushiswapPairDayDataDTO) GetTxCount() string {
	if o == nil || isNil(o.TxCount.Get()) {
		var ret string
		return ret
	}
	return *o.TxCount.Get()
}

// GetTxCountOk returns a tuple with the TxCount field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SushiswapPairDayDataDTO) GetTxCountOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.TxCount.Get(), o.TxCount.IsSet()
}

// HasTxCount returns a boolean if a field has been set.
func (o *SushiswapPairDayDataDTO) HasTxCount() bool {
	if o != nil && o.TxCount.IsSet() {
		return true
	}

	return false
}

// SetTxCount gets a reference to the given NullableString and assigns it to the TxCount field.
func (o *SushiswapPairDayDataDTO) SetTxCount(v string) {
	o.TxCount.Set(&v)
}
// SetTxCountNil sets the value for TxCount to be an explicit nil
func (o *SushiswapPairDayDataDTO) SetTxCountNil() {
	o.TxCount.Set(nil)
}

// UnsetTxCount ensures that no value is present for TxCount, not even an explicit nil
func (o *SushiswapPairDayDataDTO) UnsetTxCount() {
	o.TxCount.Unset()
}

// GetVid returns the Vid field value if set, zero value otherwise.
func (o *SushiswapPairDayDataDTO) GetVid() int64 {
	if o == nil || isNil(o.Vid) {
		var ret int64
		return ret
	}
	return *o.Vid
}

// GetVidOk returns a tuple with the Vid field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SushiswapPairDayDataDTO) GetVidOk() (*int64, bool) {
	if o == nil || isNil(o.Vid) {
    return nil, false
	}
	return o.Vid, true
}

// HasVid returns a boolean if a field has been set.
func (o *SushiswapPairDayDataDTO) HasVid() bool {
	if o != nil && !isNil(o.Vid) {
		return true
	}

	return false
}

// SetVid gets a reference to the given int64 and assigns it to the Vid field.
func (o *SushiswapPairDayDataDTO) SetVid(v int64) {
	o.Vid = &v
}

func (o SushiswapPairDayDataDTO) MarshalJSON() ([]byte, error) {
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
	if !isNil(o.Date) {
		toSerialize["date"] = o.Date
	}
	if o.Pair.IsSet() {
		toSerialize["pair"] = o.Pair.Get()
	}
	if o.Token0.IsSet() {
		toSerialize["token_0"] = o.Token0.Get()
	}
	if o.Token1.IsSet() {
		toSerialize["token_1"] = o.Token1.Get()
	}
	if o.Reserve0.IsSet() {
		toSerialize["reserve_0"] = o.Reserve0.Get()
	}
	if o.Reserve1.IsSet() {
		toSerialize["reserve_1"] = o.Reserve1.Get()
	}
	if o.TotalSupply.IsSet() {
		toSerialize["total_supply"] = o.TotalSupply.Get()
	}
	if o.ReserveUsd.IsSet() {
		toSerialize["reserve_usd"] = o.ReserveUsd.Get()
	}
	if o.VolumeToken0.IsSet() {
		toSerialize["volume_token_0"] = o.VolumeToken0.Get()
	}
	if o.VolumeToken1.IsSet() {
		toSerialize["volume_token_1"] = o.VolumeToken1.Get()
	}
	if o.VolumeUsd.IsSet() {
		toSerialize["volume_usd"] = o.VolumeUsd.Get()
	}
	if o.TxCount.IsSet() {
		toSerialize["tx_count"] = o.TxCount.Get()
	}
	if !isNil(o.Vid) {
		toSerialize["vid"] = o.Vid
	}
	return json.Marshal(toSerialize)
}

type NullableSushiswapPairDayDataDTO struct {
	value *SushiswapPairDayDataDTO
	isSet bool
}

func (v NullableSushiswapPairDayDataDTO) Get() *SushiswapPairDayDataDTO {
	return v.value
}

func (v *NullableSushiswapPairDayDataDTO) Set(val *SushiswapPairDayDataDTO) {
	v.value = val
	v.isSet = true
}

func (v NullableSushiswapPairDayDataDTO) IsSet() bool {
	return v.isSet
}

func (v *NullableSushiswapPairDayDataDTO) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSushiswapPairDayDataDTO(val *SushiswapPairDayDataDTO) *NullableSushiswapPairDayDataDTO {
	return &NullableSushiswapPairDayDataDTO{value: val, isSet: true}
}

func (v NullableSushiswapPairDayDataDTO) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSushiswapPairDayDataDTO) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


