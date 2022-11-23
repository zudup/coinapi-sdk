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

// UniswapV3TickDTO Ticks are the boundaries between discrete areas in price space.
type UniswapV3TickDTO struct {
	EntryTime *time.Time `json:"entry_time,omitempty"`
	RecvTime *time.Time `json:"recv_time,omitempty"`
	// Number of block in which entity was recorded.
	BlockNumber *int64 `json:"block_number,omitempty"`
	// 
	Vid *int64 `json:"vid,omitempty"`
	// Identifier, format: <pool address>#<tick index>
	Id NullableString `json:"id,omitempty"`
	// Pool address.
	PoolAddress NullableString `json:"pool_address,omitempty"`
	TickIdx *NumericsBigInteger `json:"tick_idx,omitempty"`
	// Pool address.
	Pool NullableString `json:"pool,omitempty"`
	LiquidityGross *NumericsBigInteger `json:"liquidity_gross,omitempty"`
	LiquidityNet *NumericsBigInteger `json:"liquidity_net,omitempty"`
	// Calculated price of token0 of tick within this pool - constant.
	Price0 NullableString `json:"price_0,omitempty"`
	// Calculated price of token1 of tick within this pool - constant.
	Price1 NullableString `json:"price_1,omitempty"`
	// Lifetime volume of token0 with this tick in range.
	VolumeToken0 NullableString `json:"volume_token_0,omitempty"`
	// Lifetime volume of token1 with this tick in range.
	VolumeToken1 NullableString `json:"volume_token_1,omitempty"`
	// Lifetime volume in derived USD with this tick in range.
	VolumeUsd NullableString `json:"volume_usd,omitempty"`
	// Lifetime volume in untracked USD with this tick in range.
	UntrackedVolumeUsd NullableString `json:"untracked_volume_usd,omitempty"`
	// Fees in USD.
	FeesUsd NullableString `json:"fees_usd,omitempty"`
	// All time collected fees in token0.
	CollectedFeesToken0 NullableString `json:"collected_fees_token_0,omitempty"`
	// All time collected fees in token1.
	CollectedFeesToken1 NullableString `json:"collected_fees_token_1,omitempty"`
	// All time collected fees in USD.
	CollectedFeesUsd NullableString `json:"collected_fees_usd,omitempty"`
	// Created time.
	CreatedAtTimestamp *time.Time `json:"created_at_timestamp,omitempty"`
	LiquidityProviderCount *NumericsBigInteger `json:"liquidity_provider_count,omitempty"`
	FeeGrowthOutside0x128 *NumericsBigInteger `json:"fee_growth_outside_0x128,omitempty"`
	FeeGrowthOutside1x128 *NumericsBigInteger `json:"fee_growth_outside_1x128,omitempty"`
}

// NewUniswapV3TickDTO instantiates a new UniswapV3TickDTO object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewUniswapV3TickDTO() *UniswapV3TickDTO {
	this := UniswapV3TickDTO{}
	return &this
}

// NewUniswapV3TickDTOWithDefaults instantiates a new UniswapV3TickDTO object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewUniswapV3TickDTOWithDefaults() *UniswapV3TickDTO {
	this := UniswapV3TickDTO{}
	return &this
}

// GetEntryTime returns the EntryTime field value if set, zero value otherwise.
func (o *UniswapV3TickDTO) GetEntryTime() time.Time {
	if o == nil || isNil(o.EntryTime) {
		var ret time.Time
		return ret
	}
	return *o.EntryTime
}

// GetEntryTimeOk returns a tuple with the EntryTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UniswapV3TickDTO) GetEntryTimeOk() (*time.Time, bool) {
	if o == nil || isNil(o.EntryTime) {
    return nil, false
	}
	return o.EntryTime, true
}

// HasEntryTime returns a boolean if a field has been set.
func (o *UniswapV3TickDTO) HasEntryTime() bool {
	if o != nil && !isNil(o.EntryTime) {
		return true
	}

	return false
}

// SetEntryTime gets a reference to the given time.Time and assigns it to the EntryTime field.
func (o *UniswapV3TickDTO) SetEntryTime(v time.Time) {
	o.EntryTime = &v
}

// GetRecvTime returns the RecvTime field value if set, zero value otherwise.
func (o *UniswapV3TickDTO) GetRecvTime() time.Time {
	if o == nil || isNil(o.RecvTime) {
		var ret time.Time
		return ret
	}
	return *o.RecvTime
}

// GetRecvTimeOk returns a tuple with the RecvTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UniswapV3TickDTO) GetRecvTimeOk() (*time.Time, bool) {
	if o == nil || isNil(o.RecvTime) {
    return nil, false
	}
	return o.RecvTime, true
}

// HasRecvTime returns a boolean if a field has been set.
func (o *UniswapV3TickDTO) HasRecvTime() bool {
	if o != nil && !isNil(o.RecvTime) {
		return true
	}

	return false
}

// SetRecvTime gets a reference to the given time.Time and assigns it to the RecvTime field.
func (o *UniswapV3TickDTO) SetRecvTime(v time.Time) {
	o.RecvTime = &v
}

// GetBlockNumber returns the BlockNumber field value if set, zero value otherwise.
func (o *UniswapV3TickDTO) GetBlockNumber() int64 {
	if o == nil || isNil(o.BlockNumber) {
		var ret int64
		return ret
	}
	return *o.BlockNumber
}

// GetBlockNumberOk returns a tuple with the BlockNumber field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UniswapV3TickDTO) GetBlockNumberOk() (*int64, bool) {
	if o == nil || isNil(o.BlockNumber) {
    return nil, false
	}
	return o.BlockNumber, true
}

// HasBlockNumber returns a boolean if a field has been set.
func (o *UniswapV3TickDTO) HasBlockNumber() bool {
	if o != nil && !isNil(o.BlockNumber) {
		return true
	}

	return false
}

// SetBlockNumber gets a reference to the given int64 and assigns it to the BlockNumber field.
func (o *UniswapV3TickDTO) SetBlockNumber(v int64) {
	o.BlockNumber = &v
}

// GetVid returns the Vid field value if set, zero value otherwise.
func (o *UniswapV3TickDTO) GetVid() int64 {
	if o == nil || isNil(o.Vid) {
		var ret int64
		return ret
	}
	return *o.Vid
}

// GetVidOk returns a tuple with the Vid field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UniswapV3TickDTO) GetVidOk() (*int64, bool) {
	if o == nil || isNil(o.Vid) {
    return nil, false
	}
	return o.Vid, true
}

// HasVid returns a boolean if a field has been set.
func (o *UniswapV3TickDTO) HasVid() bool {
	if o != nil && !isNil(o.Vid) {
		return true
	}

	return false
}

// SetVid gets a reference to the given int64 and assigns it to the Vid field.
func (o *UniswapV3TickDTO) SetVid(v int64) {
	o.Vid = &v
}

// GetId returns the Id field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3TickDTO) GetId() string {
	if o == nil || isNil(o.Id.Get()) {
		var ret string
		return ret
	}
	return *o.Id.Get()
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3TickDTO) GetIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Id.Get(), o.Id.IsSet()
}

// HasId returns a boolean if a field has been set.
func (o *UniswapV3TickDTO) HasId() bool {
	if o != nil && o.Id.IsSet() {
		return true
	}

	return false
}

// SetId gets a reference to the given NullableString and assigns it to the Id field.
func (o *UniswapV3TickDTO) SetId(v string) {
	o.Id.Set(&v)
}
// SetIdNil sets the value for Id to be an explicit nil
func (o *UniswapV3TickDTO) SetIdNil() {
	o.Id.Set(nil)
}

// UnsetId ensures that no value is present for Id, not even an explicit nil
func (o *UniswapV3TickDTO) UnsetId() {
	o.Id.Unset()
}

// GetPoolAddress returns the PoolAddress field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3TickDTO) GetPoolAddress() string {
	if o == nil || isNil(o.PoolAddress.Get()) {
		var ret string
		return ret
	}
	return *o.PoolAddress.Get()
}

// GetPoolAddressOk returns a tuple with the PoolAddress field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3TickDTO) GetPoolAddressOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.PoolAddress.Get(), o.PoolAddress.IsSet()
}

// HasPoolAddress returns a boolean if a field has been set.
func (o *UniswapV3TickDTO) HasPoolAddress() bool {
	if o != nil && o.PoolAddress.IsSet() {
		return true
	}

	return false
}

// SetPoolAddress gets a reference to the given NullableString and assigns it to the PoolAddress field.
func (o *UniswapV3TickDTO) SetPoolAddress(v string) {
	o.PoolAddress.Set(&v)
}
// SetPoolAddressNil sets the value for PoolAddress to be an explicit nil
func (o *UniswapV3TickDTO) SetPoolAddressNil() {
	o.PoolAddress.Set(nil)
}

// UnsetPoolAddress ensures that no value is present for PoolAddress, not even an explicit nil
func (o *UniswapV3TickDTO) UnsetPoolAddress() {
	o.PoolAddress.Unset()
}

// GetTickIdx returns the TickIdx field value if set, zero value otherwise.
func (o *UniswapV3TickDTO) GetTickIdx() NumericsBigInteger {
	if o == nil || isNil(o.TickIdx) {
		var ret NumericsBigInteger
		return ret
	}
	return *o.TickIdx
}

// GetTickIdxOk returns a tuple with the TickIdx field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UniswapV3TickDTO) GetTickIdxOk() (*NumericsBigInteger, bool) {
	if o == nil || isNil(o.TickIdx) {
    return nil, false
	}
	return o.TickIdx, true
}

// HasTickIdx returns a boolean if a field has been set.
func (o *UniswapV3TickDTO) HasTickIdx() bool {
	if o != nil && !isNil(o.TickIdx) {
		return true
	}

	return false
}

// SetTickIdx gets a reference to the given NumericsBigInteger and assigns it to the TickIdx field.
func (o *UniswapV3TickDTO) SetTickIdx(v NumericsBigInteger) {
	o.TickIdx = &v
}

// GetPool returns the Pool field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3TickDTO) GetPool() string {
	if o == nil || isNil(o.Pool.Get()) {
		var ret string
		return ret
	}
	return *o.Pool.Get()
}

// GetPoolOk returns a tuple with the Pool field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3TickDTO) GetPoolOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Pool.Get(), o.Pool.IsSet()
}

// HasPool returns a boolean if a field has been set.
func (o *UniswapV3TickDTO) HasPool() bool {
	if o != nil && o.Pool.IsSet() {
		return true
	}

	return false
}

// SetPool gets a reference to the given NullableString and assigns it to the Pool field.
func (o *UniswapV3TickDTO) SetPool(v string) {
	o.Pool.Set(&v)
}
// SetPoolNil sets the value for Pool to be an explicit nil
func (o *UniswapV3TickDTO) SetPoolNil() {
	o.Pool.Set(nil)
}

// UnsetPool ensures that no value is present for Pool, not even an explicit nil
func (o *UniswapV3TickDTO) UnsetPool() {
	o.Pool.Unset()
}

// GetLiquidityGross returns the LiquidityGross field value if set, zero value otherwise.
func (o *UniswapV3TickDTO) GetLiquidityGross() NumericsBigInteger {
	if o == nil || isNil(o.LiquidityGross) {
		var ret NumericsBigInteger
		return ret
	}
	return *o.LiquidityGross
}

// GetLiquidityGrossOk returns a tuple with the LiquidityGross field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UniswapV3TickDTO) GetLiquidityGrossOk() (*NumericsBigInteger, bool) {
	if o == nil || isNil(o.LiquidityGross) {
    return nil, false
	}
	return o.LiquidityGross, true
}

// HasLiquidityGross returns a boolean if a field has been set.
func (o *UniswapV3TickDTO) HasLiquidityGross() bool {
	if o != nil && !isNil(o.LiquidityGross) {
		return true
	}

	return false
}

// SetLiquidityGross gets a reference to the given NumericsBigInteger and assigns it to the LiquidityGross field.
func (o *UniswapV3TickDTO) SetLiquidityGross(v NumericsBigInteger) {
	o.LiquidityGross = &v
}

// GetLiquidityNet returns the LiquidityNet field value if set, zero value otherwise.
func (o *UniswapV3TickDTO) GetLiquidityNet() NumericsBigInteger {
	if o == nil || isNil(o.LiquidityNet) {
		var ret NumericsBigInteger
		return ret
	}
	return *o.LiquidityNet
}

// GetLiquidityNetOk returns a tuple with the LiquidityNet field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UniswapV3TickDTO) GetLiquidityNetOk() (*NumericsBigInteger, bool) {
	if o == nil || isNil(o.LiquidityNet) {
    return nil, false
	}
	return o.LiquidityNet, true
}

// HasLiquidityNet returns a boolean if a field has been set.
func (o *UniswapV3TickDTO) HasLiquidityNet() bool {
	if o != nil && !isNil(o.LiquidityNet) {
		return true
	}

	return false
}

// SetLiquidityNet gets a reference to the given NumericsBigInteger and assigns it to the LiquidityNet field.
func (o *UniswapV3TickDTO) SetLiquidityNet(v NumericsBigInteger) {
	o.LiquidityNet = &v
}

// GetPrice0 returns the Price0 field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3TickDTO) GetPrice0() string {
	if o == nil || isNil(o.Price0.Get()) {
		var ret string
		return ret
	}
	return *o.Price0.Get()
}

// GetPrice0Ok returns a tuple with the Price0 field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3TickDTO) GetPrice0Ok() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Price0.Get(), o.Price0.IsSet()
}

// HasPrice0 returns a boolean if a field has been set.
func (o *UniswapV3TickDTO) HasPrice0() bool {
	if o != nil && o.Price0.IsSet() {
		return true
	}

	return false
}

// SetPrice0 gets a reference to the given NullableString and assigns it to the Price0 field.
func (o *UniswapV3TickDTO) SetPrice0(v string) {
	o.Price0.Set(&v)
}
// SetPrice0Nil sets the value for Price0 to be an explicit nil
func (o *UniswapV3TickDTO) SetPrice0Nil() {
	o.Price0.Set(nil)
}

// UnsetPrice0 ensures that no value is present for Price0, not even an explicit nil
func (o *UniswapV3TickDTO) UnsetPrice0() {
	o.Price0.Unset()
}

// GetPrice1 returns the Price1 field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3TickDTO) GetPrice1() string {
	if o == nil || isNil(o.Price1.Get()) {
		var ret string
		return ret
	}
	return *o.Price1.Get()
}

// GetPrice1Ok returns a tuple with the Price1 field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3TickDTO) GetPrice1Ok() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Price1.Get(), o.Price1.IsSet()
}

// HasPrice1 returns a boolean if a field has been set.
func (o *UniswapV3TickDTO) HasPrice1() bool {
	if o != nil && o.Price1.IsSet() {
		return true
	}

	return false
}

// SetPrice1 gets a reference to the given NullableString and assigns it to the Price1 field.
func (o *UniswapV3TickDTO) SetPrice1(v string) {
	o.Price1.Set(&v)
}
// SetPrice1Nil sets the value for Price1 to be an explicit nil
func (o *UniswapV3TickDTO) SetPrice1Nil() {
	o.Price1.Set(nil)
}

// UnsetPrice1 ensures that no value is present for Price1, not even an explicit nil
func (o *UniswapV3TickDTO) UnsetPrice1() {
	o.Price1.Unset()
}

// GetVolumeToken0 returns the VolumeToken0 field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3TickDTO) GetVolumeToken0() string {
	if o == nil || isNil(o.VolumeToken0.Get()) {
		var ret string
		return ret
	}
	return *o.VolumeToken0.Get()
}

// GetVolumeToken0Ok returns a tuple with the VolumeToken0 field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3TickDTO) GetVolumeToken0Ok() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.VolumeToken0.Get(), o.VolumeToken0.IsSet()
}

// HasVolumeToken0 returns a boolean if a field has been set.
func (o *UniswapV3TickDTO) HasVolumeToken0() bool {
	if o != nil && o.VolumeToken0.IsSet() {
		return true
	}

	return false
}

// SetVolumeToken0 gets a reference to the given NullableString and assigns it to the VolumeToken0 field.
func (o *UniswapV3TickDTO) SetVolumeToken0(v string) {
	o.VolumeToken0.Set(&v)
}
// SetVolumeToken0Nil sets the value for VolumeToken0 to be an explicit nil
func (o *UniswapV3TickDTO) SetVolumeToken0Nil() {
	o.VolumeToken0.Set(nil)
}

// UnsetVolumeToken0 ensures that no value is present for VolumeToken0, not even an explicit nil
func (o *UniswapV3TickDTO) UnsetVolumeToken0() {
	o.VolumeToken0.Unset()
}

// GetVolumeToken1 returns the VolumeToken1 field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3TickDTO) GetVolumeToken1() string {
	if o == nil || isNil(o.VolumeToken1.Get()) {
		var ret string
		return ret
	}
	return *o.VolumeToken1.Get()
}

// GetVolumeToken1Ok returns a tuple with the VolumeToken1 field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3TickDTO) GetVolumeToken1Ok() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.VolumeToken1.Get(), o.VolumeToken1.IsSet()
}

// HasVolumeToken1 returns a boolean if a field has been set.
func (o *UniswapV3TickDTO) HasVolumeToken1() bool {
	if o != nil && o.VolumeToken1.IsSet() {
		return true
	}

	return false
}

// SetVolumeToken1 gets a reference to the given NullableString and assigns it to the VolumeToken1 field.
func (o *UniswapV3TickDTO) SetVolumeToken1(v string) {
	o.VolumeToken1.Set(&v)
}
// SetVolumeToken1Nil sets the value for VolumeToken1 to be an explicit nil
func (o *UniswapV3TickDTO) SetVolumeToken1Nil() {
	o.VolumeToken1.Set(nil)
}

// UnsetVolumeToken1 ensures that no value is present for VolumeToken1, not even an explicit nil
func (o *UniswapV3TickDTO) UnsetVolumeToken1() {
	o.VolumeToken1.Unset()
}

// GetVolumeUsd returns the VolumeUsd field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3TickDTO) GetVolumeUsd() string {
	if o == nil || isNil(o.VolumeUsd.Get()) {
		var ret string
		return ret
	}
	return *o.VolumeUsd.Get()
}

// GetVolumeUsdOk returns a tuple with the VolumeUsd field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3TickDTO) GetVolumeUsdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.VolumeUsd.Get(), o.VolumeUsd.IsSet()
}

// HasVolumeUsd returns a boolean if a field has been set.
func (o *UniswapV3TickDTO) HasVolumeUsd() bool {
	if o != nil && o.VolumeUsd.IsSet() {
		return true
	}

	return false
}

// SetVolumeUsd gets a reference to the given NullableString and assigns it to the VolumeUsd field.
func (o *UniswapV3TickDTO) SetVolumeUsd(v string) {
	o.VolumeUsd.Set(&v)
}
// SetVolumeUsdNil sets the value for VolumeUsd to be an explicit nil
func (o *UniswapV3TickDTO) SetVolumeUsdNil() {
	o.VolumeUsd.Set(nil)
}

// UnsetVolumeUsd ensures that no value is present for VolumeUsd, not even an explicit nil
func (o *UniswapV3TickDTO) UnsetVolumeUsd() {
	o.VolumeUsd.Unset()
}

// GetUntrackedVolumeUsd returns the UntrackedVolumeUsd field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3TickDTO) GetUntrackedVolumeUsd() string {
	if o == nil || isNil(o.UntrackedVolumeUsd.Get()) {
		var ret string
		return ret
	}
	return *o.UntrackedVolumeUsd.Get()
}

// GetUntrackedVolumeUsdOk returns a tuple with the UntrackedVolumeUsd field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3TickDTO) GetUntrackedVolumeUsdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.UntrackedVolumeUsd.Get(), o.UntrackedVolumeUsd.IsSet()
}

// HasUntrackedVolumeUsd returns a boolean if a field has been set.
func (o *UniswapV3TickDTO) HasUntrackedVolumeUsd() bool {
	if o != nil && o.UntrackedVolumeUsd.IsSet() {
		return true
	}

	return false
}

// SetUntrackedVolumeUsd gets a reference to the given NullableString and assigns it to the UntrackedVolumeUsd field.
func (o *UniswapV3TickDTO) SetUntrackedVolumeUsd(v string) {
	o.UntrackedVolumeUsd.Set(&v)
}
// SetUntrackedVolumeUsdNil sets the value for UntrackedVolumeUsd to be an explicit nil
func (o *UniswapV3TickDTO) SetUntrackedVolumeUsdNil() {
	o.UntrackedVolumeUsd.Set(nil)
}

// UnsetUntrackedVolumeUsd ensures that no value is present for UntrackedVolumeUsd, not even an explicit nil
func (o *UniswapV3TickDTO) UnsetUntrackedVolumeUsd() {
	o.UntrackedVolumeUsd.Unset()
}

// GetFeesUsd returns the FeesUsd field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3TickDTO) GetFeesUsd() string {
	if o == nil || isNil(o.FeesUsd.Get()) {
		var ret string
		return ret
	}
	return *o.FeesUsd.Get()
}

// GetFeesUsdOk returns a tuple with the FeesUsd field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3TickDTO) GetFeesUsdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.FeesUsd.Get(), o.FeesUsd.IsSet()
}

// HasFeesUsd returns a boolean if a field has been set.
func (o *UniswapV3TickDTO) HasFeesUsd() bool {
	if o != nil && o.FeesUsd.IsSet() {
		return true
	}

	return false
}

// SetFeesUsd gets a reference to the given NullableString and assigns it to the FeesUsd field.
func (o *UniswapV3TickDTO) SetFeesUsd(v string) {
	o.FeesUsd.Set(&v)
}
// SetFeesUsdNil sets the value for FeesUsd to be an explicit nil
func (o *UniswapV3TickDTO) SetFeesUsdNil() {
	o.FeesUsd.Set(nil)
}

// UnsetFeesUsd ensures that no value is present for FeesUsd, not even an explicit nil
func (o *UniswapV3TickDTO) UnsetFeesUsd() {
	o.FeesUsd.Unset()
}

// GetCollectedFeesToken0 returns the CollectedFeesToken0 field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3TickDTO) GetCollectedFeesToken0() string {
	if o == nil || isNil(o.CollectedFeesToken0.Get()) {
		var ret string
		return ret
	}
	return *o.CollectedFeesToken0.Get()
}

// GetCollectedFeesToken0Ok returns a tuple with the CollectedFeesToken0 field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3TickDTO) GetCollectedFeesToken0Ok() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.CollectedFeesToken0.Get(), o.CollectedFeesToken0.IsSet()
}

// HasCollectedFeesToken0 returns a boolean if a field has been set.
func (o *UniswapV3TickDTO) HasCollectedFeesToken0() bool {
	if o != nil && o.CollectedFeesToken0.IsSet() {
		return true
	}

	return false
}

// SetCollectedFeesToken0 gets a reference to the given NullableString and assigns it to the CollectedFeesToken0 field.
func (o *UniswapV3TickDTO) SetCollectedFeesToken0(v string) {
	o.CollectedFeesToken0.Set(&v)
}
// SetCollectedFeesToken0Nil sets the value for CollectedFeesToken0 to be an explicit nil
func (o *UniswapV3TickDTO) SetCollectedFeesToken0Nil() {
	o.CollectedFeesToken0.Set(nil)
}

// UnsetCollectedFeesToken0 ensures that no value is present for CollectedFeesToken0, not even an explicit nil
func (o *UniswapV3TickDTO) UnsetCollectedFeesToken0() {
	o.CollectedFeesToken0.Unset()
}

// GetCollectedFeesToken1 returns the CollectedFeesToken1 field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3TickDTO) GetCollectedFeesToken1() string {
	if o == nil || isNil(o.CollectedFeesToken1.Get()) {
		var ret string
		return ret
	}
	return *o.CollectedFeesToken1.Get()
}

// GetCollectedFeesToken1Ok returns a tuple with the CollectedFeesToken1 field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3TickDTO) GetCollectedFeesToken1Ok() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.CollectedFeesToken1.Get(), o.CollectedFeesToken1.IsSet()
}

// HasCollectedFeesToken1 returns a boolean if a field has been set.
func (o *UniswapV3TickDTO) HasCollectedFeesToken1() bool {
	if o != nil && o.CollectedFeesToken1.IsSet() {
		return true
	}

	return false
}

// SetCollectedFeesToken1 gets a reference to the given NullableString and assigns it to the CollectedFeesToken1 field.
func (o *UniswapV3TickDTO) SetCollectedFeesToken1(v string) {
	o.CollectedFeesToken1.Set(&v)
}
// SetCollectedFeesToken1Nil sets the value for CollectedFeesToken1 to be an explicit nil
func (o *UniswapV3TickDTO) SetCollectedFeesToken1Nil() {
	o.CollectedFeesToken1.Set(nil)
}

// UnsetCollectedFeesToken1 ensures that no value is present for CollectedFeesToken1, not even an explicit nil
func (o *UniswapV3TickDTO) UnsetCollectedFeesToken1() {
	o.CollectedFeesToken1.Unset()
}

// GetCollectedFeesUsd returns the CollectedFeesUsd field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3TickDTO) GetCollectedFeesUsd() string {
	if o == nil || isNil(o.CollectedFeesUsd.Get()) {
		var ret string
		return ret
	}
	return *o.CollectedFeesUsd.Get()
}

// GetCollectedFeesUsdOk returns a tuple with the CollectedFeesUsd field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3TickDTO) GetCollectedFeesUsdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.CollectedFeesUsd.Get(), o.CollectedFeesUsd.IsSet()
}

// HasCollectedFeesUsd returns a boolean if a field has been set.
func (o *UniswapV3TickDTO) HasCollectedFeesUsd() bool {
	if o != nil && o.CollectedFeesUsd.IsSet() {
		return true
	}

	return false
}

// SetCollectedFeesUsd gets a reference to the given NullableString and assigns it to the CollectedFeesUsd field.
func (o *UniswapV3TickDTO) SetCollectedFeesUsd(v string) {
	o.CollectedFeesUsd.Set(&v)
}
// SetCollectedFeesUsdNil sets the value for CollectedFeesUsd to be an explicit nil
func (o *UniswapV3TickDTO) SetCollectedFeesUsdNil() {
	o.CollectedFeesUsd.Set(nil)
}

// UnsetCollectedFeesUsd ensures that no value is present for CollectedFeesUsd, not even an explicit nil
func (o *UniswapV3TickDTO) UnsetCollectedFeesUsd() {
	o.CollectedFeesUsd.Unset()
}

// GetCreatedAtTimestamp returns the CreatedAtTimestamp field value if set, zero value otherwise.
func (o *UniswapV3TickDTO) GetCreatedAtTimestamp() time.Time {
	if o == nil || isNil(o.CreatedAtTimestamp) {
		var ret time.Time
		return ret
	}
	return *o.CreatedAtTimestamp
}

// GetCreatedAtTimestampOk returns a tuple with the CreatedAtTimestamp field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UniswapV3TickDTO) GetCreatedAtTimestampOk() (*time.Time, bool) {
	if o == nil || isNil(o.CreatedAtTimestamp) {
    return nil, false
	}
	return o.CreatedAtTimestamp, true
}

// HasCreatedAtTimestamp returns a boolean if a field has been set.
func (o *UniswapV3TickDTO) HasCreatedAtTimestamp() bool {
	if o != nil && !isNil(o.CreatedAtTimestamp) {
		return true
	}

	return false
}

// SetCreatedAtTimestamp gets a reference to the given time.Time and assigns it to the CreatedAtTimestamp field.
func (o *UniswapV3TickDTO) SetCreatedAtTimestamp(v time.Time) {
	o.CreatedAtTimestamp = &v
}

// GetLiquidityProviderCount returns the LiquidityProviderCount field value if set, zero value otherwise.
func (o *UniswapV3TickDTO) GetLiquidityProviderCount() NumericsBigInteger {
	if o == nil || isNil(o.LiquidityProviderCount) {
		var ret NumericsBigInteger
		return ret
	}
	return *o.LiquidityProviderCount
}

// GetLiquidityProviderCountOk returns a tuple with the LiquidityProviderCount field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UniswapV3TickDTO) GetLiquidityProviderCountOk() (*NumericsBigInteger, bool) {
	if o == nil || isNil(o.LiquidityProviderCount) {
    return nil, false
	}
	return o.LiquidityProviderCount, true
}

// HasLiquidityProviderCount returns a boolean if a field has been set.
func (o *UniswapV3TickDTO) HasLiquidityProviderCount() bool {
	if o != nil && !isNil(o.LiquidityProviderCount) {
		return true
	}

	return false
}

// SetLiquidityProviderCount gets a reference to the given NumericsBigInteger and assigns it to the LiquidityProviderCount field.
func (o *UniswapV3TickDTO) SetLiquidityProviderCount(v NumericsBigInteger) {
	o.LiquidityProviderCount = &v
}

// GetFeeGrowthOutside0x128 returns the FeeGrowthOutside0x128 field value if set, zero value otherwise.
func (o *UniswapV3TickDTO) GetFeeGrowthOutside0x128() NumericsBigInteger {
	if o == nil || isNil(o.FeeGrowthOutside0x128) {
		var ret NumericsBigInteger
		return ret
	}
	return *o.FeeGrowthOutside0x128
}

// GetFeeGrowthOutside0x128Ok returns a tuple with the FeeGrowthOutside0x128 field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UniswapV3TickDTO) GetFeeGrowthOutside0x128Ok() (*NumericsBigInteger, bool) {
	if o == nil || isNil(o.FeeGrowthOutside0x128) {
    return nil, false
	}
	return o.FeeGrowthOutside0x128, true
}

// HasFeeGrowthOutside0x128 returns a boolean if a field has been set.
func (o *UniswapV3TickDTO) HasFeeGrowthOutside0x128() bool {
	if o != nil && !isNil(o.FeeGrowthOutside0x128) {
		return true
	}

	return false
}

// SetFeeGrowthOutside0x128 gets a reference to the given NumericsBigInteger and assigns it to the FeeGrowthOutside0x128 field.
func (o *UniswapV3TickDTO) SetFeeGrowthOutside0x128(v NumericsBigInteger) {
	o.FeeGrowthOutside0x128 = &v
}

// GetFeeGrowthOutside1x128 returns the FeeGrowthOutside1x128 field value if set, zero value otherwise.
func (o *UniswapV3TickDTO) GetFeeGrowthOutside1x128() NumericsBigInteger {
	if o == nil || isNil(o.FeeGrowthOutside1x128) {
		var ret NumericsBigInteger
		return ret
	}
	return *o.FeeGrowthOutside1x128
}

// GetFeeGrowthOutside1x128Ok returns a tuple with the FeeGrowthOutside1x128 field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UniswapV3TickDTO) GetFeeGrowthOutside1x128Ok() (*NumericsBigInteger, bool) {
	if o == nil || isNil(o.FeeGrowthOutside1x128) {
    return nil, false
	}
	return o.FeeGrowthOutside1x128, true
}

// HasFeeGrowthOutside1x128 returns a boolean if a field has been set.
func (o *UniswapV3TickDTO) HasFeeGrowthOutside1x128() bool {
	if o != nil && !isNil(o.FeeGrowthOutside1x128) {
		return true
	}

	return false
}

// SetFeeGrowthOutside1x128 gets a reference to the given NumericsBigInteger and assigns it to the FeeGrowthOutside1x128 field.
func (o *UniswapV3TickDTO) SetFeeGrowthOutside1x128(v NumericsBigInteger) {
	o.FeeGrowthOutside1x128 = &v
}

func (o UniswapV3TickDTO) MarshalJSON() ([]byte, error) {
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
	if !isNil(o.Vid) {
		toSerialize["vid"] = o.Vid
	}
	if o.Id.IsSet() {
		toSerialize["id"] = o.Id.Get()
	}
	if o.PoolAddress.IsSet() {
		toSerialize["pool_address"] = o.PoolAddress.Get()
	}
	if !isNil(o.TickIdx) {
		toSerialize["tick_idx"] = o.TickIdx
	}
	if o.Pool.IsSet() {
		toSerialize["pool"] = o.Pool.Get()
	}
	if !isNil(o.LiquidityGross) {
		toSerialize["liquidity_gross"] = o.LiquidityGross
	}
	if !isNil(o.LiquidityNet) {
		toSerialize["liquidity_net"] = o.LiquidityNet
	}
	if o.Price0.IsSet() {
		toSerialize["price_0"] = o.Price0.Get()
	}
	if o.Price1.IsSet() {
		toSerialize["price_1"] = o.Price1.Get()
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
	if o.UntrackedVolumeUsd.IsSet() {
		toSerialize["untracked_volume_usd"] = o.UntrackedVolumeUsd.Get()
	}
	if o.FeesUsd.IsSet() {
		toSerialize["fees_usd"] = o.FeesUsd.Get()
	}
	if o.CollectedFeesToken0.IsSet() {
		toSerialize["collected_fees_token_0"] = o.CollectedFeesToken0.Get()
	}
	if o.CollectedFeesToken1.IsSet() {
		toSerialize["collected_fees_token_1"] = o.CollectedFeesToken1.Get()
	}
	if o.CollectedFeesUsd.IsSet() {
		toSerialize["collected_fees_usd"] = o.CollectedFeesUsd.Get()
	}
	if !isNil(o.CreatedAtTimestamp) {
		toSerialize["created_at_timestamp"] = o.CreatedAtTimestamp
	}
	if !isNil(o.LiquidityProviderCount) {
		toSerialize["liquidity_provider_count"] = o.LiquidityProviderCount
	}
	if !isNil(o.FeeGrowthOutside0x128) {
		toSerialize["fee_growth_outside_0x128"] = o.FeeGrowthOutside0x128
	}
	if !isNil(o.FeeGrowthOutside1x128) {
		toSerialize["fee_growth_outside_1x128"] = o.FeeGrowthOutside1x128
	}
	return json.Marshal(toSerialize)
}

type NullableUniswapV3TickDTO struct {
	value *UniswapV3TickDTO
	isSet bool
}

func (v NullableUniswapV3TickDTO) Get() *UniswapV3TickDTO {
	return v.value
}

func (v *NullableUniswapV3TickDTO) Set(val *UniswapV3TickDTO) {
	v.value = val
	v.isSet = true
}

func (v NullableUniswapV3TickDTO) IsSet() bool {
	return v.isSet
}

func (v *NullableUniswapV3TickDTO) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableUniswapV3TickDTO(val *UniswapV3TickDTO) *NullableUniswapV3TickDTO {
	return &NullableUniswapV3TickDTO{value: val, isSet: true}
}

func (v NullableUniswapV3TickDTO) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableUniswapV3TickDTO) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


