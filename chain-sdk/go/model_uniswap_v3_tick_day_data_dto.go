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

// UniswapV3TickDayDataDTO Data accumulated and condensed into day stats for each exchange. Entity gets saved only if there is a change during the day
type UniswapV3TickDayDataDTO struct {
	EntryTime *time.Time `json:"entry_time,omitempty"`
	RecvTime *time.Time `json:"recv_time,omitempty"`
	// Number of block in which entity was recorded.
	BlockNumber *int64 `json:"block_number,omitempty"`
	// Identifier, format: <pool address>-<tick index>-<timestamp>.
	Id NullableString `json:"id,omitempty"`
	// Timestamp rounded to current day by dividing by 86400.
	Date *int32 `json:"date,omitempty"`
	// Pointer to pool.
	Pool NullableString `json:"pool,omitempty"`
	// Pointer to tick.
	Tick NullableString `json:"tick,omitempty"`
	// Total liquidity pool has as tick lower or upper at end of period.
	LiquidityGross NullableString `json:"liquidity_gross,omitempty"`
	// How much liquidity changes when tick crossed at end of period.
	LiquidityNet NullableString `json:"liquidity_net,omitempty"`
	// Hourly volume of token0 with this tick in range.
	VolumeToken0 NullableString `json:"volume_token_0,omitempty"`
	// Hourly volume of token1 with this tick in range.
	VolumeToken1 NullableString `json:"volume_token_1,omitempty"`
	// Hourly volume in derived USD with this tick in range.
	VolumeUsd NullableString `json:"volume_usd,omitempty"`
	// Fees in USD.
	FeesUsd NullableString `json:"fees_usd,omitempty"`
	// Variable needed for fee computation.
	FeeGrowthOutside0x128 NullableString `json:"fee_growth_outside_0x128,omitempty"`
	// Variable needed for fee computation.
	FeeGrowthOutside1x128 NullableString `json:"fee_growth_outside_1x128,omitempty"`
	// 
	Vid *int64 `json:"vid,omitempty"`
}

// NewUniswapV3TickDayDataDTO instantiates a new UniswapV3TickDayDataDTO object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewUniswapV3TickDayDataDTO() *UniswapV3TickDayDataDTO {
	this := UniswapV3TickDayDataDTO{}
	return &this
}

// NewUniswapV3TickDayDataDTOWithDefaults instantiates a new UniswapV3TickDayDataDTO object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewUniswapV3TickDayDataDTOWithDefaults() *UniswapV3TickDayDataDTO {
	this := UniswapV3TickDayDataDTO{}
	return &this
}

// GetEntryTime returns the EntryTime field value if set, zero value otherwise.
func (o *UniswapV3TickDayDataDTO) GetEntryTime() time.Time {
	if o == nil || isNil(o.EntryTime) {
		var ret time.Time
		return ret
	}
	return *o.EntryTime
}

// GetEntryTimeOk returns a tuple with the EntryTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UniswapV3TickDayDataDTO) GetEntryTimeOk() (*time.Time, bool) {
	if o == nil || isNil(o.EntryTime) {
    return nil, false
	}
	return o.EntryTime, true
}

// HasEntryTime returns a boolean if a field has been set.
func (o *UniswapV3TickDayDataDTO) HasEntryTime() bool {
	if o != nil && !isNil(o.EntryTime) {
		return true
	}

	return false
}

// SetEntryTime gets a reference to the given time.Time and assigns it to the EntryTime field.
func (o *UniswapV3TickDayDataDTO) SetEntryTime(v time.Time) {
	o.EntryTime = &v
}

// GetRecvTime returns the RecvTime field value if set, zero value otherwise.
func (o *UniswapV3TickDayDataDTO) GetRecvTime() time.Time {
	if o == nil || isNil(o.RecvTime) {
		var ret time.Time
		return ret
	}
	return *o.RecvTime
}

// GetRecvTimeOk returns a tuple with the RecvTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UniswapV3TickDayDataDTO) GetRecvTimeOk() (*time.Time, bool) {
	if o == nil || isNil(o.RecvTime) {
    return nil, false
	}
	return o.RecvTime, true
}

// HasRecvTime returns a boolean if a field has been set.
func (o *UniswapV3TickDayDataDTO) HasRecvTime() bool {
	if o != nil && !isNil(o.RecvTime) {
		return true
	}

	return false
}

// SetRecvTime gets a reference to the given time.Time and assigns it to the RecvTime field.
func (o *UniswapV3TickDayDataDTO) SetRecvTime(v time.Time) {
	o.RecvTime = &v
}

// GetBlockNumber returns the BlockNumber field value if set, zero value otherwise.
func (o *UniswapV3TickDayDataDTO) GetBlockNumber() int64 {
	if o == nil || isNil(o.BlockNumber) {
		var ret int64
		return ret
	}
	return *o.BlockNumber
}

// GetBlockNumberOk returns a tuple with the BlockNumber field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UniswapV3TickDayDataDTO) GetBlockNumberOk() (*int64, bool) {
	if o == nil || isNil(o.BlockNumber) {
    return nil, false
	}
	return o.BlockNumber, true
}

// HasBlockNumber returns a boolean if a field has been set.
func (o *UniswapV3TickDayDataDTO) HasBlockNumber() bool {
	if o != nil && !isNil(o.BlockNumber) {
		return true
	}

	return false
}

// SetBlockNumber gets a reference to the given int64 and assigns it to the BlockNumber field.
func (o *UniswapV3TickDayDataDTO) SetBlockNumber(v int64) {
	o.BlockNumber = &v
}

// GetId returns the Id field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3TickDayDataDTO) GetId() string {
	if o == nil || isNil(o.Id.Get()) {
		var ret string
		return ret
	}
	return *o.Id.Get()
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3TickDayDataDTO) GetIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Id.Get(), o.Id.IsSet()
}

// HasId returns a boolean if a field has been set.
func (o *UniswapV3TickDayDataDTO) HasId() bool {
	if o != nil && o.Id.IsSet() {
		return true
	}

	return false
}

// SetId gets a reference to the given NullableString and assigns it to the Id field.
func (o *UniswapV3TickDayDataDTO) SetId(v string) {
	o.Id.Set(&v)
}
// SetIdNil sets the value for Id to be an explicit nil
func (o *UniswapV3TickDayDataDTO) SetIdNil() {
	o.Id.Set(nil)
}

// UnsetId ensures that no value is present for Id, not even an explicit nil
func (o *UniswapV3TickDayDataDTO) UnsetId() {
	o.Id.Unset()
}

// GetDate returns the Date field value if set, zero value otherwise.
func (o *UniswapV3TickDayDataDTO) GetDate() int32 {
	if o == nil || isNil(o.Date) {
		var ret int32
		return ret
	}
	return *o.Date
}

// GetDateOk returns a tuple with the Date field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UniswapV3TickDayDataDTO) GetDateOk() (*int32, bool) {
	if o == nil || isNil(o.Date) {
    return nil, false
	}
	return o.Date, true
}

// HasDate returns a boolean if a field has been set.
func (o *UniswapV3TickDayDataDTO) HasDate() bool {
	if o != nil && !isNil(o.Date) {
		return true
	}

	return false
}

// SetDate gets a reference to the given int32 and assigns it to the Date field.
func (o *UniswapV3TickDayDataDTO) SetDate(v int32) {
	o.Date = &v
}

// GetPool returns the Pool field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3TickDayDataDTO) GetPool() string {
	if o == nil || isNil(o.Pool.Get()) {
		var ret string
		return ret
	}
	return *o.Pool.Get()
}

// GetPoolOk returns a tuple with the Pool field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3TickDayDataDTO) GetPoolOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Pool.Get(), o.Pool.IsSet()
}

// HasPool returns a boolean if a field has been set.
func (o *UniswapV3TickDayDataDTO) HasPool() bool {
	if o != nil && o.Pool.IsSet() {
		return true
	}

	return false
}

// SetPool gets a reference to the given NullableString and assigns it to the Pool field.
func (o *UniswapV3TickDayDataDTO) SetPool(v string) {
	o.Pool.Set(&v)
}
// SetPoolNil sets the value for Pool to be an explicit nil
func (o *UniswapV3TickDayDataDTO) SetPoolNil() {
	o.Pool.Set(nil)
}

// UnsetPool ensures that no value is present for Pool, not even an explicit nil
func (o *UniswapV3TickDayDataDTO) UnsetPool() {
	o.Pool.Unset()
}

// GetTick returns the Tick field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3TickDayDataDTO) GetTick() string {
	if o == nil || isNil(o.Tick.Get()) {
		var ret string
		return ret
	}
	return *o.Tick.Get()
}

// GetTickOk returns a tuple with the Tick field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3TickDayDataDTO) GetTickOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Tick.Get(), o.Tick.IsSet()
}

// HasTick returns a boolean if a field has been set.
func (o *UniswapV3TickDayDataDTO) HasTick() bool {
	if o != nil && o.Tick.IsSet() {
		return true
	}

	return false
}

// SetTick gets a reference to the given NullableString and assigns it to the Tick field.
func (o *UniswapV3TickDayDataDTO) SetTick(v string) {
	o.Tick.Set(&v)
}
// SetTickNil sets the value for Tick to be an explicit nil
func (o *UniswapV3TickDayDataDTO) SetTickNil() {
	o.Tick.Set(nil)
}

// UnsetTick ensures that no value is present for Tick, not even an explicit nil
func (o *UniswapV3TickDayDataDTO) UnsetTick() {
	o.Tick.Unset()
}

// GetLiquidityGross returns the LiquidityGross field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3TickDayDataDTO) GetLiquidityGross() string {
	if o == nil || isNil(o.LiquidityGross.Get()) {
		var ret string
		return ret
	}
	return *o.LiquidityGross.Get()
}

// GetLiquidityGrossOk returns a tuple with the LiquidityGross field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3TickDayDataDTO) GetLiquidityGrossOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.LiquidityGross.Get(), o.LiquidityGross.IsSet()
}

// HasLiquidityGross returns a boolean if a field has been set.
func (o *UniswapV3TickDayDataDTO) HasLiquidityGross() bool {
	if o != nil && o.LiquidityGross.IsSet() {
		return true
	}

	return false
}

// SetLiquidityGross gets a reference to the given NullableString and assigns it to the LiquidityGross field.
func (o *UniswapV3TickDayDataDTO) SetLiquidityGross(v string) {
	o.LiquidityGross.Set(&v)
}
// SetLiquidityGrossNil sets the value for LiquidityGross to be an explicit nil
func (o *UniswapV3TickDayDataDTO) SetLiquidityGrossNil() {
	o.LiquidityGross.Set(nil)
}

// UnsetLiquidityGross ensures that no value is present for LiquidityGross, not even an explicit nil
func (o *UniswapV3TickDayDataDTO) UnsetLiquidityGross() {
	o.LiquidityGross.Unset()
}

// GetLiquidityNet returns the LiquidityNet field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3TickDayDataDTO) GetLiquidityNet() string {
	if o == nil || isNil(o.LiquidityNet.Get()) {
		var ret string
		return ret
	}
	return *o.LiquidityNet.Get()
}

// GetLiquidityNetOk returns a tuple with the LiquidityNet field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3TickDayDataDTO) GetLiquidityNetOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.LiquidityNet.Get(), o.LiquidityNet.IsSet()
}

// HasLiquidityNet returns a boolean if a field has been set.
func (o *UniswapV3TickDayDataDTO) HasLiquidityNet() bool {
	if o != nil && o.LiquidityNet.IsSet() {
		return true
	}

	return false
}

// SetLiquidityNet gets a reference to the given NullableString and assigns it to the LiquidityNet field.
func (o *UniswapV3TickDayDataDTO) SetLiquidityNet(v string) {
	o.LiquidityNet.Set(&v)
}
// SetLiquidityNetNil sets the value for LiquidityNet to be an explicit nil
func (o *UniswapV3TickDayDataDTO) SetLiquidityNetNil() {
	o.LiquidityNet.Set(nil)
}

// UnsetLiquidityNet ensures that no value is present for LiquidityNet, not even an explicit nil
func (o *UniswapV3TickDayDataDTO) UnsetLiquidityNet() {
	o.LiquidityNet.Unset()
}

// GetVolumeToken0 returns the VolumeToken0 field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3TickDayDataDTO) GetVolumeToken0() string {
	if o == nil || isNil(o.VolumeToken0.Get()) {
		var ret string
		return ret
	}
	return *o.VolumeToken0.Get()
}

// GetVolumeToken0Ok returns a tuple with the VolumeToken0 field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3TickDayDataDTO) GetVolumeToken0Ok() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.VolumeToken0.Get(), o.VolumeToken0.IsSet()
}

// HasVolumeToken0 returns a boolean if a field has been set.
func (o *UniswapV3TickDayDataDTO) HasVolumeToken0() bool {
	if o != nil && o.VolumeToken0.IsSet() {
		return true
	}

	return false
}

// SetVolumeToken0 gets a reference to the given NullableString and assigns it to the VolumeToken0 field.
func (o *UniswapV3TickDayDataDTO) SetVolumeToken0(v string) {
	o.VolumeToken0.Set(&v)
}
// SetVolumeToken0Nil sets the value for VolumeToken0 to be an explicit nil
func (o *UniswapV3TickDayDataDTO) SetVolumeToken0Nil() {
	o.VolumeToken0.Set(nil)
}

// UnsetVolumeToken0 ensures that no value is present for VolumeToken0, not even an explicit nil
func (o *UniswapV3TickDayDataDTO) UnsetVolumeToken0() {
	o.VolumeToken0.Unset()
}

// GetVolumeToken1 returns the VolumeToken1 field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3TickDayDataDTO) GetVolumeToken1() string {
	if o == nil || isNil(o.VolumeToken1.Get()) {
		var ret string
		return ret
	}
	return *o.VolumeToken1.Get()
}

// GetVolumeToken1Ok returns a tuple with the VolumeToken1 field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3TickDayDataDTO) GetVolumeToken1Ok() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.VolumeToken1.Get(), o.VolumeToken1.IsSet()
}

// HasVolumeToken1 returns a boolean if a field has been set.
func (o *UniswapV3TickDayDataDTO) HasVolumeToken1() bool {
	if o != nil && o.VolumeToken1.IsSet() {
		return true
	}

	return false
}

// SetVolumeToken1 gets a reference to the given NullableString and assigns it to the VolumeToken1 field.
func (o *UniswapV3TickDayDataDTO) SetVolumeToken1(v string) {
	o.VolumeToken1.Set(&v)
}
// SetVolumeToken1Nil sets the value for VolumeToken1 to be an explicit nil
func (o *UniswapV3TickDayDataDTO) SetVolumeToken1Nil() {
	o.VolumeToken1.Set(nil)
}

// UnsetVolumeToken1 ensures that no value is present for VolumeToken1, not even an explicit nil
func (o *UniswapV3TickDayDataDTO) UnsetVolumeToken1() {
	o.VolumeToken1.Unset()
}

// GetVolumeUsd returns the VolumeUsd field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3TickDayDataDTO) GetVolumeUsd() string {
	if o == nil || isNil(o.VolumeUsd.Get()) {
		var ret string
		return ret
	}
	return *o.VolumeUsd.Get()
}

// GetVolumeUsdOk returns a tuple with the VolumeUsd field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3TickDayDataDTO) GetVolumeUsdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.VolumeUsd.Get(), o.VolumeUsd.IsSet()
}

// HasVolumeUsd returns a boolean if a field has been set.
func (o *UniswapV3TickDayDataDTO) HasVolumeUsd() bool {
	if o != nil && o.VolumeUsd.IsSet() {
		return true
	}

	return false
}

// SetVolumeUsd gets a reference to the given NullableString and assigns it to the VolumeUsd field.
func (o *UniswapV3TickDayDataDTO) SetVolumeUsd(v string) {
	o.VolumeUsd.Set(&v)
}
// SetVolumeUsdNil sets the value for VolumeUsd to be an explicit nil
func (o *UniswapV3TickDayDataDTO) SetVolumeUsdNil() {
	o.VolumeUsd.Set(nil)
}

// UnsetVolumeUsd ensures that no value is present for VolumeUsd, not even an explicit nil
func (o *UniswapV3TickDayDataDTO) UnsetVolumeUsd() {
	o.VolumeUsd.Unset()
}

// GetFeesUsd returns the FeesUsd field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3TickDayDataDTO) GetFeesUsd() string {
	if o == nil || isNil(o.FeesUsd.Get()) {
		var ret string
		return ret
	}
	return *o.FeesUsd.Get()
}

// GetFeesUsdOk returns a tuple with the FeesUsd field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3TickDayDataDTO) GetFeesUsdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.FeesUsd.Get(), o.FeesUsd.IsSet()
}

// HasFeesUsd returns a boolean if a field has been set.
func (o *UniswapV3TickDayDataDTO) HasFeesUsd() bool {
	if o != nil && o.FeesUsd.IsSet() {
		return true
	}

	return false
}

// SetFeesUsd gets a reference to the given NullableString and assigns it to the FeesUsd field.
func (o *UniswapV3TickDayDataDTO) SetFeesUsd(v string) {
	o.FeesUsd.Set(&v)
}
// SetFeesUsdNil sets the value for FeesUsd to be an explicit nil
func (o *UniswapV3TickDayDataDTO) SetFeesUsdNil() {
	o.FeesUsd.Set(nil)
}

// UnsetFeesUsd ensures that no value is present for FeesUsd, not even an explicit nil
func (o *UniswapV3TickDayDataDTO) UnsetFeesUsd() {
	o.FeesUsd.Unset()
}

// GetFeeGrowthOutside0x128 returns the FeeGrowthOutside0x128 field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3TickDayDataDTO) GetFeeGrowthOutside0x128() string {
	if o == nil || isNil(o.FeeGrowthOutside0x128.Get()) {
		var ret string
		return ret
	}
	return *o.FeeGrowthOutside0x128.Get()
}

// GetFeeGrowthOutside0x128Ok returns a tuple with the FeeGrowthOutside0x128 field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3TickDayDataDTO) GetFeeGrowthOutside0x128Ok() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.FeeGrowthOutside0x128.Get(), o.FeeGrowthOutside0x128.IsSet()
}

// HasFeeGrowthOutside0x128 returns a boolean if a field has been set.
func (o *UniswapV3TickDayDataDTO) HasFeeGrowthOutside0x128() bool {
	if o != nil && o.FeeGrowthOutside0x128.IsSet() {
		return true
	}

	return false
}

// SetFeeGrowthOutside0x128 gets a reference to the given NullableString and assigns it to the FeeGrowthOutside0x128 field.
func (o *UniswapV3TickDayDataDTO) SetFeeGrowthOutside0x128(v string) {
	o.FeeGrowthOutside0x128.Set(&v)
}
// SetFeeGrowthOutside0x128Nil sets the value for FeeGrowthOutside0x128 to be an explicit nil
func (o *UniswapV3TickDayDataDTO) SetFeeGrowthOutside0x128Nil() {
	o.FeeGrowthOutside0x128.Set(nil)
}

// UnsetFeeGrowthOutside0x128 ensures that no value is present for FeeGrowthOutside0x128, not even an explicit nil
func (o *UniswapV3TickDayDataDTO) UnsetFeeGrowthOutside0x128() {
	o.FeeGrowthOutside0x128.Unset()
}

// GetFeeGrowthOutside1x128 returns the FeeGrowthOutside1x128 field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniswapV3TickDayDataDTO) GetFeeGrowthOutside1x128() string {
	if o == nil || isNil(o.FeeGrowthOutside1x128.Get()) {
		var ret string
		return ret
	}
	return *o.FeeGrowthOutside1x128.Get()
}

// GetFeeGrowthOutside1x128Ok returns a tuple with the FeeGrowthOutside1x128 field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniswapV3TickDayDataDTO) GetFeeGrowthOutside1x128Ok() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.FeeGrowthOutside1x128.Get(), o.FeeGrowthOutside1x128.IsSet()
}

// HasFeeGrowthOutside1x128 returns a boolean if a field has been set.
func (o *UniswapV3TickDayDataDTO) HasFeeGrowthOutside1x128() bool {
	if o != nil && o.FeeGrowthOutside1x128.IsSet() {
		return true
	}

	return false
}

// SetFeeGrowthOutside1x128 gets a reference to the given NullableString and assigns it to the FeeGrowthOutside1x128 field.
func (o *UniswapV3TickDayDataDTO) SetFeeGrowthOutside1x128(v string) {
	o.FeeGrowthOutside1x128.Set(&v)
}
// SetFeeGrowthOutside1x128Nil sets the value for FeeGrowthOutside1x128 to be an explicit nil
func (o *UniswapV3TickDayDataDTO) SetFeeGrowthOutside1x128Nil() {
	o.FeeGrowthOutside1x128.Set(nil)
}

// UnsetFeeGrowthOutside1x128 ensures that no value is present for FeeGrowthOutside1x128, not even an explicit nil
func (o *UniswapV3TickDayDataDTO) UnsetFeeGrowthOutside1x128() {
	o.FeeGrowthOutside1x128.Unset()
}

// GetVid returns the Vid field value if set, zero value otherwise.
func (o *UniswapV3TickDayDataDTO) GetVid() int64 {
	if o == nil || isNil(o.Vid) {
		var ret int64
		return ret
	}
	return *o.Vid
}

// GetVidOk returns a tuple with the Vid field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UniswapV3TickDayDataDTO) GetVidOk() (*int64, bool) {
	if o == nil || isNil(o.Vid) {
    return nil, false
	}
	return o.Vid, true
}

// HasVid returns a boolean if a field has been set.
func (o *UniswapV3TickDayDataDTO) HasVid() bool {
	if o != nil && !isNil(o.Vid) {
		return true
	}

	return false
}

// SetVid gets a reference to the given int64 and assigns it to the Vid field.
func (o *UniswapV3TickDayDataDTO) SetVid(v int64) {
	o.Vid = &v
}

func (o UniswapV3TickDayDataDTO) MarshalJSON() ([]byte, error) {
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
	if o.Pool.IsSet() {
		toSerialize["pool"] = o.Pool.Get()
	}
	if o.Tick.IsSet() {
		toSerialize["tick"] = o.Tick.Get()
	}
	if o.LiquidityGross.IsSet() {
		toSerialize["liquidity_gross"] = o.LiquidityGross.Get()
	}
	if o.LiquidityNet.IsSet() {
		toSerialize["liquidity_net"] = o.LiquidityNet.Get()
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
	if o.FeesUsd.IsSet() {
		toSerialize["fees_usd"] = o.FeesUsd.Get()
	}
	if o.FeeGrowthOutside0x128.IsSet() {
		toSerialize["fee_growth_outside_0x128"] = o.FeeGrowthOutside0x128.Get()
	}
	if o.FeeGrowthOutside1x128.IsSet() {
		toSerialize["fee_growth_outside_1x128"] = o.FeeGrowthOutside1x128.Get()
	}
	if !isNil(o.Vid) {
		toSerialize["vid"] = o.Vid
	}
	return json.Marshal(toSerialize)
}

type NullableUniswapV3TickDayDataDTO struct {
	value *UniswapV3TickDayDataDTO
	isSet bool
}

func (v NullableUniswapV3TickDayDataDTO) Get() *UniswapV3TickDayDataDTO {
	return v.value
}

func (v *NullableUniswapV3TickDayDataDTO) Set(val *UniswapV3TickDayDataDTO) {
	v.value = val
	v.isSet = true
}

func (v NullableUniswapV3TickDayDataDTO) IsSet() bool {
	return v.isSet
}

func (v *NullableUniswapV3TickDayDataDTO) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableUniswapV3TickDayDataDTO(val *UniswapV3TickDayDataDTO) *NullableUniswapV3TickDayDataDTO {
	return &NullableUniswapV3TickDayDataDTO{value: val, isSet: true}
}

func (v NullableUniswapV3TickDayDataDTO) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableUniswapV3TickDayDataDTO) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


