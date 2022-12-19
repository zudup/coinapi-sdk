/*
On Chain Dapps - REST API

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

// UniswapV3FactoryDTO The Uniswap Factory entity is responsible for storing aggregate information across all Uniswap pairs. It can be used to view stats about total liquidity, volume, amount of pairs and more.
type UniswapV3FactoryDTO struct {
	EntryTime *time.Time `json:"entry_time,omitempty"`
	RecvTime *time.Time `json:"recv_time,omitempty"`
	// Number of block in which entity was recorded.
	BlockNumber *int64 `json:"block_number,omitempty"`
	// Factory address.
	Id NullableString `json:"id,omitempty"`
	// Amount of pools created.
	PoolCount NullableString `json:"pool_count,omitempty"`
	// Amount of transactions all time.
	TxCount NullableString `json:"tx_count,omitempty"`
	// Total volume all time in derived USD.
	TotalVolumeUsd NullableString `json:"total_volume_usd,omitempty"`
	// Total volume all time in derived ETH.
	TotalVolumeEth NullableString `json:"total_volume_eth,omitempty"`
	// Total swap fees all time in USD.
	TotalFeesUsd NullableString `json:"total_fees_usd,omitempty"`
	// All volume even through less reliable USD values.
	TotalFeesEth NullableString `json:"total_fees_eth,omitempty"`
	// All volume even through less reliable USD values.
	UntrackedVolumeUsd NullableString `json:"untracked_volume_usd,omitempty"`
	// Total value locked derived in USD.
	TotalValueLockedUsd NullableString `json:"total_value_locked_usd,omitempty"`
	// Total value locked derived in ETH.
	TotalValueLockedEth NullableString `json:"total_value_locked_eth,omitempty"`
	// Total value locked derived in USD untracked.
	TotalValueLockedUsdUntracked NullableString `json:"total_value_locked_usd_untracked,omitempty"`
	// Total value locked derived in ETH untracked.
	TotalValueLockedEthUntracked NullableString `json:"total_value_locked_eth_untracked,omitempty"`
	// Current owner of the factory.
	Owner NullableString `json:"owner,omitempty"`
	// 
	Vid *int64 `json:"vid,omitempty"`
}

// NewUniswapV3FactoryDTO instantiates a new UniswapV3FactoryDTO object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewUniswapV3FactoryDTO() *UniswapV3FactoryDTO {
	this := UniswapV3FactoryDTO{}
	return &this
}

// NewUniswapV3FactoryDTOWithDefaults instantiates a new UniswapV3FactoryDTO object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewUniswapV3FactoryDTOWithDefaults() *UniswapV3FactoryDTO {
	this := UniswapV3FactoryDTO{}
	return &this
}

// GetEntryTime returns the EntryTime field value if set, zero value otherwise.
func (o *UniswapV3FactoryDTO) GetEntryTime() time.Time {
	if o == nil || isNil(o.EntryTime) {
		var ret time.Time
		return ret
	}
	return *o.EntryTime
}

// GetEntryTimeOk returns a tuple with the EntryTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UniswapV3FactoryDTO) GetEntryTimeOk() (*time.Time, bool) {
	if o == nil || isNil(o.EntryTime) {
    return nil, false
	}
	return o.EntryTime, true
}

// HasEntryTime returns a boolean if a field has been set.
func (o *UniswapV3FactoryDTO) HasEntryTime() bool {
	if o != nil && !isNil(o.EntryTime) {
		return true
	}

	return false
}

// SetEntryTime gets a reference to the given time.Time and assigns it to the EntryTime field.
func (o *UniswapV3FactoryDTO) SetEntryTime(v time.Time) {
	o.EntryTime = &v
}

// GetRecvTime returns the RecvTime field value if set, zero value otherwise.
func (o *UniswapV3FactoryDTO) GetRecvTime() time.Time {
	if o == nil || isNil(o.RecvTime) {
		var ret time.Time
		return ret
	}
	return *o.RecvTime
}

// GetRecvTimeOk returns a tuple with the RecvTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UniswapV3FactoryDTO) GetRecvTimeOk() (*time.Time, bool) {
	if o == nil || isNil(o.RecvTime) {
    return nil, false
	}
	return o.RecvTime, true
}

// HasRecvTime returns a boolean if a field has been set.
func (o *UniswapV3FactoryDTO) HasRecvTime() bool {
	if o != nil && !isNil(o.RecvTime) {
		return true
	}

	return false
}

// SetRecvTime gets a reference to the given time.Time and assigns it to the RecvTime field.
func (o *UniswapV3FactoryDTO) SetRecvTime(v time.Time) {
	o.RecvTime = &v
}

// GetBlockNumber returns the BlockNumber field value if set, zero value otherwise.
func (o *UniswapV3FactoryDTO) GetBlockNumber() int64 {
	if o == nil || isNil(o.BlockNumber) {
		var ret int64
		return ret
	}
	return *o.BlockNumber
}

// GetBlockNumberOk returns a tuple with the BlockNumber field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UniswapV3FactoryDTO) GetBlockNumberOk() (*int64, bool) {
	if o == nil || isNil(o.BlockNumber) {
    return nil, false
	}
	return o.BlockNumber, true
}

// HasBlockNumber returns a boolean if a field has been set.
func (o *UniswapV3FactoryDTO) HasBlockNumber() bool {
	if o != nil && !isNil(o.BlockNumber) {
		return true
	}

	return false
}

// SetBlockNumber gets a reference to the given int64 and assigns it to the BlockNumber field.
func (o *UniswapV3FactoryDTO) SetBlockNumber(v int64) {
	o.BlockNumber = &v
}

// GetId returns the Id field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3FactoryDTO) GetId() string {
	if o == nil || isNil(o.Id.Get()) {
		var ret string
		return ret
	}
	return *o.Id.Get()
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3FactoryDTO) GetIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Id.Get(), o.Id.IsSet()
}

// HasId returns a boolean if a field has been set.
func (o *UniswapV3FactoryDTO) HasId() bool {
	if o != nil && o.Id.IsSet() {
		return true
	}

	return false
}

// SetId gets a reference to the given NullableString and assigns it to the Id field.
func (o *UniswapV3FactoryDTO) SetId(v string) {
	o.Id.Set(&v)
}
// SetIdNil sets the value for Id to be an explicit nil
func (o *UniswapV3FactoryDTO) SetIdNil() {
	o.Id.Set(nil)
}

// UnsetId ensures that no value is present for Id, not even an explicit nil
func (o *UniswapV3FactoryDTO) UnsetId() {
	o.Id.Unset()
}

// GetPoolCount returns the PoolCount field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3FactoryDTO) GetPoolCount() string {
	if o == nil || isNil(o.PoolCount.Get()) {
		var ret string
		return ret
	}
	return *o.PoolCount.Get()
}

// GetPoolCountOk returns a tuple with the PoolCount field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3FactoryDTO) GetPoolCountOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.PoolCount.Get(), o.PoolCount.IsSet()
}

// HasPoolCount returns a boolean if a field has been set.
func (o *UniswapV3FactoryDTO) HasPoolCount() bool {
	if o != nil && o.PoolCount.IsSet() {
		return true
	}

	return false
}

// SetPoolCount gets a reference to the given NullableString and assigns it to the PoolCount field.
func (o *UniswapV3FactoryDTO) SetPoolCount(v string) {
	o.PoolCount.Set(&v)
}
// SetPoolCountNil sets the value for PoolCount to be an explicit nil
func (o *UniswapV3FactoryDTO) SetPoolCountNil() {
	o.PoolCount.Set(nil)
}

// UnsetPoolCount ensures that no value is present for PoolCount, not even an explicit nil
func (o *UniswapV3FactoryDTO) UnsetPoolCount() {
	o.PoolCount.Unset()
}

// GetTxCount returns the TxCount field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3FactoryDTO) GetTxCount() string {
	if o == nil || isNil(o.TxCount.Get()) {
		var ret string
		return ret
	}
	return *o.TxCount.Get()
}

// GetTxCountOk returns a tuple with the TxCount field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3FactoryDTO) GetTxCountOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.TxCount.Get(), o.TxCount.IsSet()
}

// HasTxCount returns a boolean if a field has been set.
func (o *UniswapV3FactoryDTO) HasTxCount() bool {
	if o != nil && o.TxCount.IsSet() {
		return true
	}

	return false
}

// SetTxCount gets a reference to the given NullableString and assigns it to the TxCount field.
func (o *UniswapV3FactoryDTO) SetTxCount(v string) {
	o.TxCount.Set(&v)
}
// SetTxCountNil sets the value for TxCount to be an explicit nil
func (o *UniswapV3FactoryDTO) SetTxCountNil() {
	o.TxCount.Set(nil)
}

// UnsetTxCount ensures that no value is present for TxCount, not even an explicit nil
func (o *UniswapV3FactoryDTO) UnsetTxCount() {
	o.TxCount.Unset()
}

// GetTotalVolumeUsd returns the TotalVolumeUsd field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3FactoryDTO) GetTotalVolumeUsd() string {
	if o == nil || isNil(o.TotalVolumeUsd.Get()) {
		var ret string
		return ret
	}
	return *o.TotalVolumeUsd.Get()
}

// GetTotalVolumeUsdOk returns a tuple with the TotalVolumeUsd field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3FactoryDTO) GetTotalVolumeUsdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.TotalVolumeUsd.Get(), o.TotalVolumeUsd.IsSet()
}

// HasTotalVolumeUsd returns a boolean if a field has been set.
func (o *UniswapV3FactoryDTO) HasTotalVolumeUsd() bool {
	if o != nil && o.TotalVolumeUsd.IsSet() {
		return true
	}

	return false
}

// SetTotalVolumeUsd gets a reference to the given NullableString and assigns it to the TotalVolumeUsd field.
func (o *UniswapV3FactoryDTO) SetTotalVolumeUsd(v string) {
	o.TotalVolumeUsd.Set(&v)
}
// SetTotalVolumeUsdNil sets the value for TotalVolumeUsd to be an explicit nil
func (o *UniswapV3FactoryDTO) SetTotalVolumeUsdNil() {
	o.TotalVolumeUsd.Set(nil)
}

// UnsetTotalVolumeUsd ensures that no value is present for TotalVolumeUsd, not even an explicit nil
func (o *UniswapV3FactoryDTO) UnsetTotalVolumeUsd() {
	o.TotalVolumeUsd.Unset()
}

// GetTotalVolumeEth returns the TotalVolumeEth field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3FactoryDTO) GetTotalVolumeEth() string {
	if o == nil || isNil(o.TotalVolumeEth.Get()) {
		var ret string
		return ret
	}
	return *o.TotalVolumeEth.Get()
}

// GetTotalVolumeEthOk returns a tuple with the TotalVolumeEth field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3FactoryDTO) GetTotalVolumeEthOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.TotalVolumeEth.Get(), o.TotalVolumeEth.IsSet()
}

// HasTotalVolumeEth returns a boolean if a field has been set.
func (o *UniswapV3FactoryDTO) HasTotalVolumeEth() bool {
	if o != nil && o.TotalVolumeEth.IsSet() {
		return true
	}

	return false
}

// SetTotalVolumeEth gets a reference to the given NullableString and assigns it to the TotalVolumeEth field.
func (o *UniswapV3FactoryDTO) SetTotalVolumeEth(v string) {
	o.TotalVolumeEth.Set(&v)
}
// SetTotalVolumeEthNil sets the value for TotalVolumeEth to be an explicit nil
func (o *UniswapV3FactoryDTO) SetTotalVolumeEthNil() {
	o.TotalVolumeEth.Set(nil)
}

// UnsetTotalVolumeEth ensures that no value is present for TotalVolumeEth, not even an explicit nil
func (o *UniswapV3FactoryDTO) UnsetTotalVolumeEth() {
	o.TotalVolumeEth.Unset()
}

// GetTotalFeesUsd returns the TotalFeesUsd field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3FactoryDTO) GetTotalFeesUsd() string {
	if o == nil || isNil(o.TotalFeesUsd.Get()) {
		var ret string
		return ret
	}
	return *o.TotalFeesUsd.Get()
}

// GetTotalFeesUsdOk returns a tuple with the TotalFeesUsd field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3FactoryDTO) GetTotalFeesUsdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.TotalFeesUsd.Get(), o.TotalFeesUsd.IsSet()
}

// HasTotalFeesUsd returns a boolean if a field has been set.
func (o *UniswapV3FactoryDTO) HasTotalFeesUsd() bool {
	if o != nil && o.TotalFeesUsd.IsSet() {
		return true
	}

	return false
}

// SetTotalFeesUsd gets a reference to the given NullableString and assigns it to the TotalFeesUsd field.
func (o *UniswapV3FactoryDTO) SetTotalFeesUsd(v string) {
	o.TotalFeesUsd.Set(&v)
}
// SetTotalFeesUsdNil sets the value for TotalFeesUsd to be an explicit nil
func (o *UniswapV3FactoryDTO) SetTotalFeesUsdNil() {
	o.TotalFeesUsd.Set(nil)
}

// UnsetTotalFeesUsd ensures that no value is present for TotalFeesUsd, not even an explicit nil
func (o *UniswapV3FactoryDTO) UnsetTotalFeesUsd() {
	o.TotalFeesUsd.Unset()
}

// GetTotalFeesEth returns the TotalFeesEth field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3FactoryDTO) GetTotalFeesEth() string {
	if o == nil || isNil(o.TotalFeesEth.Get()) {
		var ret string
		return ret
	}
	return *o.TotalFeesEth.Get()
}

// GetTotalFeesEthOk returns a tuple with the TotalFeesEth field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3FactoryDTO) GetTotalFeesEthOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.TotalFeesEth.Get(), o.TotalFeesEth.IsSet()
}

// HasTotalFeesEth returns a boolean if a field has been set.
func (o *UniswapV3FactoryDTO) HasTotalFeesEth() bool {
	if o != nil && o.TotalFeesEth.IsSet() {
		return true
	}

	return false
}

// SetTotalFeesEth gets a reference to the given NullableString and assigns it to the TotalFeesEth field.
func (o *UniswapV3FactoryDTO) SetTotalFeesEth(v string) {
	o.TotalFeesEth.Set(&v)
}
// SetTotalFeesEthNil sets the value for TotalFeesEth to be an explicit nil
func (o *UniswapV3FactoryDTO) SetTotalFeesEthNil() {
	o.TotalFeesEth.Set(nil)
}

// UnsetTotalFeesEth ensures that no value is present for TotalFeesEth, not even an explicit nil
func (o *UniswapV3FactoryDTO) UnsetTotalFeesEth() {
	o.TotalFeesEth.Unset()
}

// GetUntrackedVolumeUsd returns the UntrackedVolumeUsd field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3FactoryDTO) GetUntrackedVolumeUsd() string {
	if o == nil || isNil(o.UntrackedVolumeUsd.Get()) {
		var ret string
		return ret
	}
	return *o.UntrackedVolumeUsd.Get()
}

// GetUntrackedVolumeUsdOk returns a tuple with the UntrackedVolumeUsd field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3FactoryDTO) GetUntrackedVolumeUsdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.UntrackedVolumeUsd.Get(), o.UntrackedVolumeUsd.IsSet()
}

// HasUntrackedVolumeUsd returns a boolean if a field has been set.
func (o *UniswapV3FactoryDTO) HasUntrackedVolumeUsd() bool {
	if o != nil && o.UntrackedVolumeUsd.IsSet() {
		return true
	}

	return false
}

// SetUntrackedVolumeUsd gets a reference to the given NullableString and assigns it to the UntrackedVolumeUsd field.
func (o *UniswapV3FactoryDTO) SetUntrackedVolumeUsd(v string) {
	o.UntrackedVolumeUsd.Set(&v)
}
// SetUntrackedVolumeUsdNil sets the value for UntrackedVolumeUsd to be an explicit nil
func (o *UniswapV3FactoryDTO) SetUntrackedVolumeUsdNil() {
	o.UntrackedVolumeUsd.Set(nil)
}

// UnsetUntrackedVolumeUsd ensures that no value is present for UntrackedVolumeUsd, not even an explicit nil
func (o *UniswapV3FactoryDTO) UnsetUntrackedVolumeUsd() {
	o.UntrackedVolumeUsd.Unset()
}

// GetTotalValueLockedUsd returns the TotalValueLockedUsd field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3FactoryDTO) GetTotalValueLockedUsd() string {
	if o == nil || isNil(o.TotalValueLockedUsd.Get()) {
		var ret string
		return ret
	}
	return *o.TotalValueLockedUsd.Get()
}

// GetTotalValueLockedUsdOk returns a tuple with the TotalValueLockedUsd field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3FactoryDTO) GetTotalValueLockedUsdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.TotalValueLockedUsd.Get(), o.TotalValueLockedUsd.IsSet()
}

// HasTotalValueLockedUsd returns a boolean if a field has been set.
func (o *UniswapV3FactoryDTO) HasTotalValueLockedUsd() bool {
	if o != nil && o.TotalValueLockedUsd.IsSet() {
		return true
	}

	return false
}

// SetTotalValueLockedUsd gets a reference to the given NullableString and assigns it to the TotalValueLockedUsd field.
func (o *UniswapV3FactoryDTO) SetTotalValueLockedUsd(v string) {
	o.TotalValueLockedUsd.Set(&v)
}
// SetTotalValueLockedUsdNil sets the value for TotalValueLockedUsd to be an explicit nil
func (o *UniswapV3FactoryDTO) SetTotalValueLockedUsdNil() {
	o.TotalValueLockedUsd.Set(nil)
}

// UnsetTotalValueLockedUsd ensures that no value is present for TotalValueLockedUsd, not even an explicit nil
func (o *UniswapV3FactoryDTO) UnsetTotalValueLockedUsd() {
	o.TotalValueLockedUsd.Unset()
}

// GetTotalValueLockedEth returns the TotalValueLockedEth field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3FactoryDTO) GetTotalValueLockedEth() string {
	if o == nil || isNil(o.TotalValueLockedEth.Get()) {
		var ret string
		return ret
	}
	return *o.TotalValueLockedEth.Get()
}

// GetTotalValueLockedEthOk returns a tuple with the TotalValueLockedEth field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3FactoryDTO) GetTotalValueLockedEthOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.TotalValueLockedEth.Get(), o.TotalValueLockedEth.IsSet()
}

// HasTotalValueLockedEth returns a boolean if a field has been set.
func (o *UniswapV3FactoryDTO) HasTotalValueLockedEth() bool {
	if o != nil && o.TotalValueLockedEth.IsSet() {
		return true
	}

	return false
}

// SetTotalValueLockedEth gets a reference to the given NullableString and assigns it to the TotalValueLockedEth field.
func (o *UniswapV3FactoryDTO) SetTotalValueLockedEth(v string) {
	o.TotalValueLockedEth.Set(&v)
}
// SetTotalValueLockedEthNil sets the value for TotalValueLockedEth to be an explicit nil
func (o *UniswapV3FactoryDTO) SetTotalValueLockedEthNil() {
	o.TotalValueLockedEth.Set(nil)
}

// UnsetTotalValueLockedEth ensures that no value is present for TotalValueLockedEth, not even an explicit nil
func (o *UniswapV3FactoryDTO) UnsetTotalValueLockedEth() {
	o.TotalValueLockedEth.Unset()
}

// GetTotalValueLockedUsdUntracked returns the TotalValueLockedUsdUntracked field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3FactoryDTO) GetTotalValueLockedUsdUntracked() string {
	if o == nil || isNil(o.TotalValueLockedUsdUntracked.Get()) {
		var ret string
		return ret
	}
	return *o.TotalValueLockedUsdUntracked.Get()
}

// GetTotalValueLockedUsdUntrackedOk returns a tuple with the TotalValueLockedUsdUntracked field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3FactoryDTO) GetTotalValueLockedUsdUntrackedOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.TotalValueLockedUsdUntracked.Get(), o.TotalValueLockedUsdUntracked.IsSet()
}

// HasTotalValueLockedUsdUntracked returns a boolean if a field has been set.
func (o *UniswapV3FactoryDTO) HasTotalValueLockedUsdUntracked() bool {
	if o != nil && o.TotalValueLockedUsdUntracked.IsSet() {
		return true
	}

	return false
}

// SetTotalValueLockedUsdUntracked gets a reference to the given NullableString and assigns it to the TotalValueLockedUsdUntracked field.
func (o *UniswapV3FactoryDTO) SetTotalValueLockedUsdUntracked(v string) {
	o.TotalValueLockedUsdUntracked.Set(&v)
}
// SetTotalValueLockedUsdUntrackedNil sets the value for TotalValueLockedUsdUntracked to be an explicit nil
func (o *UniswapV3FactoryDTO) SetTotalValueLockedUsdUntrackedNil() {
	o.TotalValueLockedUsdUntracked.Set(nil)
}

// UnsetTotalValueLockedUsdUntracked ensures that no value is present for TotalValueLockedUsdUntracked, not even an explicit nil
func (o *UniswapV3FactoryDTO) UnsetTotalValueLockedUsdUntracked() {
	o.TotalValueLockedUsdUntracked.Unset()
}

// GetTotalValueLockedEthUntracked returns the TotalValueLockedEthUntracked field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3FactoryDTO) GetTotalValueLockedEthUntracked() string {
	if o == nil || isNil(o.TotalValueLockedEthUntracked.Get()) {
		var ret string
		return ret
	}
	return *o.TotalValueLockedEthUntracked.Get()
}

// GetTotalValueLockedEthUntrackedOk returns a tuple with the TotalValueLockedEthUntracked field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3FactoryDTO) GetTotalValueLockedEthUntrackedOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.TotalValueLockedEthUntracked.Get(), o.TotalValueLockedEthUntracked.IsSet()
}

// HasTotalValueLockedEthUntracked returns a boolean if a field has been set.
func (o *UniswapV3FactoryDTO) HasTotalValueLockedEthUntracked() bool {
	if o != nil && o.TotalValueLockedEthUntracked.IsSet() {
		return true
	}

	return false
}

// SetTotalValueLockedEthUntracked gets a reference to the given NullableString and assigns it to the TotalValueLockedEthUntracked field.
func (o *UniswapV3FactoryDTO) SetTotalValueLockedEthUntracked(v string) {
	o.TotalValueLockedEthUntracked.Set(&v)
}
// SetTotalValueLockedEthUntrackedNil sets the value for TotalValueLockedEthUntracked to be an explicit nil
func (o *UniswapV3FactoryDTO) SetTotalValueLockedEthUntrackedNil() {
	o.TotalValueLockedEthUntracked.Set(nil)
}

// UnsetTotalValueLockedEthUntracked ensures that no value is present for TotalValueLockedEthUntracked, not even an explicit nil
func (o *UniswapV3FactoryDTO) UnsetTotalValueLockedEthUntracked() {
	o.TotalValueLockedEthUntracked.Unset()
}

// GetOwner returns the Owner field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3FactoryDTO) GetOwner() string {
	if o == nil || isNil(o.Owner.Get()) {
		var ret string
		return ret
	}
	return *o.Owner.Get()
}

// GetOwnerOk returns a tuple with the Owner field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3FactoryDTO) GetOwnerOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Owner.Get(), o.Owner.IsSet()
}

// HasOwner returns a boolean if a field has been set.
func (o *UniswapV3FactoryDTO) HasOwner() bool {
	if o != nil && o.Owner.IsSet() {
		return true
	}

	return false
}

// SetOwner gets a reference to the given NullableString and assigns it to the Owner field.
func (o *UniswapV3FactoryDTO) SetOwner(v string) {
	o.Owner.Set(&v)
}
// SetOwnerNil sets the value for Owner to be an explicit nil
func (o *UniswapV3FactoryDTO) SetOwnerNil() {
	o.Owner.Set(nil)
}

// UnsetOwner ensures that no value is present for Owner, not even an explicit nil
func (o *UniswapV3FactoryDTO) UnsetOwner() {
	o.Owner.Unset()
}

// GetVid returns the Vid field value if set, zero value otherwise.
func (o *UniswapV3FactoryDTO) GetVid() int64 {
	if o == nil || isNil(o.Vid) {
		var ret int64
		return ret
	}
	return *o.Vid
}

// GetVidOk returns a tuple with the Vid field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UniswapV3FactoryDTO) GetVidOk() (*int64, bool) {
	if o == nil || isNil(o.Vid) {
    return nil, false
	}
	return o.Vid, true
}

// HasVid returns a boolean if a field has been set.
func (o *UniswapV3FactoryDTO) HasVid() bool {
	if o != nil && !isNil(o.Vid) {
		return true
	}

	return false
}

// SetVid gets a reference to the given int64 and assigns it to the Vid field.
func (o *UniswapV3FactoryDTO) SetVid(v int64) {
	o.Vid = &v
}

func (o UniswapV3FactoryDTO) MarshalJSON() ([]byte, error) {
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
	if o.PoolCount.IsSet() {
		toSerialize["pool_count"] = o.PoolCount.Get()
	}
	if o.TxCount.IsSet() {
		toSerialize["tx_count"] = o.TxCount.Get()
	}
	if o.TotalVolumeUsd.IsSet() {
		toSerialize["total_volume_usd"] = o.TotalVolumeUsd.Get()
	}
	if o.TotalVolumeEth.IsSet() {
		toSerialize["total_volume_eth"] = o.TotalVolumeEth.Get()
	}
	if o.TotalFeesUsd.IsSet() {
		toSerialize["total_fees_usd"] = o.TotalFeesUsd.Get()
	}
	if o.TotalFeesEth.IsSet() {
		toSerialize["total_fees_eth"] = o.TotalFeesEth.Get()
	}
	if o.UntrackedVolumeUsd.IsSet() {
		toSerialize["untracked_volume_usd"] = o.UntrackedVolumeUsd.Get()
	}
	if o.TotalValueLockedUsd.IsSet() {
		toSerialize["total_value_locked_usd"] = o.TotalValueLockedUsd.Get()
	}
	if o.TotalValueLockedEth.IsSet() {
		toSerialize["total_value_locked_eth"] = o.TotalValueLockedEth.Get()
	}
	if o.TotalValueLockedUsdUntracked.IsSet() {
		toSerialize["total_value_locked_usd_untracked"] = o.TotalValueLockedUsdUntracked.Get()
	}
	if o.TotalValueLockedEthUntracked.IsSet() {
		toSerialize["total_value_locked_eth_untracked"] = o.TotalValueLockedEthUntracked.Get()
	}
	if o.Owner.IsSet() {
		toSerialize["owner"] = o.Owner.Get()
	}
	if !isNil(o.Vid) {
		toSerialize["vid"] = o.Vid
	}
	return json.Marshal(toSerialize)
}

type NullableUniswapV3FactoryDTO struct {
	value *UniswapV3FactoryDTO
	isSet bool
}

func (v NullableUniswapV3FactoryDTO) Get() *UniswapV3FactoryDTO {
	return v.value
}

func (v *NullableUniswapV3FactoryDTO) Set(val *UniswapV3FactoryDTO) {
	v.value = val
	v.isSet = true
}

func (v NullableUniswapV3FactoryDTO) IsSet() bool {
	return v.isSet
}

func (v *NullableUniswapV3FactoryDTO) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableUniswapV3FactoryDTO(val *UniswapV3FactoryDTO) *NullableUniswapV3FactoryDTO {
	return &NullableUniswapV3FactoryDTO{value: val, isSet: true}
}

func (v NullableUniswapV3FactoryDTO) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableUniswapV3FactoryDTO) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

