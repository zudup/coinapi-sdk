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

// SushiswapTokenDayDataDTO Token data aggregated across all pairs that include token.
type SushiswapTokenDayDataDTO struct {
	EntryTime *time.Time `json:"entry_time,omitempty"`
	RecvTime *time.Time `json:"recv_time,omitempty"`
	// Number of block in which entity was recorded.
	BlockNumber *int64 `json:"block_number,omitempty"`
	// Identifier, day start timestamp in unix / 86400.
	Id NullableString `json:"id,omitempty"`
	// Unix timestamp for start of day.
	Date *int32 `json:"date,omitempty"`
	// Reference to token entity.
	Token NullableString `json:"token,omitempty"`
	// Amount of token swapped across all pairs throughout day.
	Volume NullableString `json:"volume,omitempty"`
	// Amount of token swapped across all pairs throughout day stored as a derived amount of ETH.
	VolumeEth NullableString `json:"volume_eth,omitempty"`
	// Amount of token swapped across all pairs throughout day stored as a derived amount of USD.
	VolumeUsd NullableString `json:"volume_usd,omitempty"`
	// Amount of transactions with this token across all pairs.
	TxCount NullableString `json:"tx_count,omitempty"`
	// Token amount of token deposited across all pairs.
	Liquidity NullableString `json:"liquidity,omitempty"`
	// Token amount of token deposited across all pairs stored as amount of ETH.
	LiquidityEth NullableString `json:"liquidity_eth,omitempty"`
	// Token amount of token deposited across all pairs stored as amount of USD.
	LiquidityUsd NullableString `json:"liquidity_usd,omitempty"`
	// Price of token in derived USD.
	PriceUsd NullableString `json:"price_usd,omitempty"`
	// 
	Vid *int64 `json:"vid,omitempty"`
}

// NewSushiswapTokenDayDataDTO instantiates a new SushiswapTokenDayDataDTO object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSushiswapTokenDayDataDTO() *SushiswapTokenDayDataDTO {
	this := SushiswapTokenDayDataDTO{}
	return &this
}

// NewSushiswapTokenDayDataDTOWithDefaults instantiates a new SushiswapTokenDayDataDTO object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSushiswapTokenDayDataDTOWithDefaults() *SushiswapTokenDayDataDTO {
	this := SushiswapTokenDayDataDTO{}
	return &this
}

// GetEntryTime returns the EntryTime field value if set, zero value otherwise.
func (o *SushiswapTokenDayDataDTO) GetEntryTime() time.Time {
	if o == nil || isNil(o.EntryTime) {
		var ret time.Time
		return ret
	}
	return *o.EntryTime
}

// GetEntryTimeOk returns a tuple with the EntryTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SushiswapTokenDayDataDTO) GetEntryTimeOk() (*time.Time, bool) {
	if o == nil || isNil(o.EntryTime) {
    return nil, false
	}
	return o.EntryTime, true
}

// HasEntryTime returns a boolean if a field has been set.
func (o *SushiswapTokenDayDataDTO) HasEntryTime() bool {
	if o != nil && !isNil(o.EntryTime) {
		return true
	}

	return false
}

// SetEntryTime gets a reference to the given time.Time and assigns it to the EntryTime field.
func (o *SushiswapTokenDayDataDTO) SetEntryTime(v time.Time) {
	o.EntryTime = &v
}

// GetRecvTime returns the RecvTime field value if set, zero value otherwise.
func (o *SushiswapTokenDayDataDTO) GetRecvTime() time.Time {
	if o == nil || isNil(o.RecvTime) {
		var ret time.Time
		return ret
	}
	return *o.RecvTime
}

// GetRecvTimeOk returns a tuple with the RecvTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SushiswapTokenDayDataDTO) GetRecvTimeOk() (*time.Time, bool) {
	if o == nil || isNil(o.RecvTime) {
    return nil, false
	}
	return o.RecvTime, true
}

// HasRecvTime returns a boolean if a field has been set.
func (o *SushiswapTokenDayDataDTO) HasRecvTime() bool {
	if o != nil && !isNil(o.RecvTime) {
		return true
	}

	return false
}

// SetRecvTime gets a reference to the given time.Time and assigns it to the RecvTime field.
func (o *SushiswapTokenDayDataDTO) SetRecvTime(v time.Time) {
	o.RecvTime = &v
}

// GetBlockNumber returns the BlockNumber field value if set, zero value otherwise.
func (o *SushiswapTokenDayDataDTO) GetBlockNumber() int64 {
	if o == nil || isNil(o.BlockNumber) {
		var ret int64
		return ret
	}
	return *o.BlockNumber
}

// GetBlockNumberOk returns a tuple with the BlockNumber field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SushiswapTokenDayDataDTO) GetBlockNumberOk() (*int64, bool) {
	if o == nil || isNil(o.BlockNumber) {
    return nil, false
	}
	return o.BlockNumber, true
}

// HasBlockNumber returns a boolean if a field has been set.
func (o *SushiswapTokenDayDataDTO) HasBlockNumber() bool {
	if o != nil && !isNil(o.BlockNumber) {
		return true
	}

	return false
}

// SetBlockNumber gets a reference to the given int64 and assigns it to the BlockNumber field.
func (o *SushiswapTokenDayDataDTO) SetBlockNumber(v int64) {
	o.BlockNumber = &v
}

// GetId returns the Id field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SushiswapTokenDayDataDTO) GetId() string {
	if o == nil || isNil(o.Id.Get()) {
		var ret string
		return ret
	}
	return *o.Id.Get()
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SushiswapTokenDayDataDTO) GetIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Id.Get(), o.Id.IsSet()
}

// HasId returns a boolean if a field has been set.
func (o *SushiswapTokenDayDataDTO) HasId() bool {
	if o != nil && o.Id.IsSet() {
		return true
	}

	return false
}

// SetId gets a reference to the given NullableString and assigns it to the Id field.
func (o *SushiswapTokenDayDataDTO) SetId(v string) {
	o.Id.Set(&v)
}
// SetIdNil sets the value for Id to be an explicit nil
func (o *SushiswapTokenDayDataDTO) SetIdNil() {
	o.Id.Set(nil)
}

// UnsetId ensures that no value is present for Id, not even an explicit nil
func (o *SushiswapTokenDayDataDTO) UnsetId() {
	o.Id.Unset()
}

// GetDate returns the Date field value if set, zero value otherwise.
func (o *SushiswapTokenDayDataDTO) GetDate() int32 {
	if o == nil || isNil(o.Date) {
		var ret int32
		return ret
	}
	return *o.Date
}

// GetDateOk returns a tuple with the Date field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SushiswapTokenDayDataDTO) GetDateOk() (*int32, bool) {
	if o == nil || isNil(o.Date) {
    return nil, false
	}
	return o.Date, true
}

// HasDate returns a boolean if a field has been set.
func (o *SushiswapTokenDayDataDTO) HasDate() bool {
	if o != nil && !isNil(o.Date) {
		return true
	}

	return false
}

// SetDate gets a reference to the given int32 and assigns it to the Date field.
func (o *SushiswapTokenDayDataDTO) SetDate(v int32) {
	o.Date = &v
}

// GetToken returns the Token field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SushiswapTokenDayDataDTO) GetToken() string {
	if o == nil || isNil(o.Token.Get()) {
		var ret string
		return ret
	}
	return *o.Token.Get()
}

// GetTokenOk returns a tuple with the Token field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SushiswapTokenDayDataDTO) GetTokenOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Token.Get(), o.Token.IsSet()
}

// HasToken returns a boolean if a field has been set.
func (o *SushiswapTokenDayDataDTO) HasToken() bool {
	if o != nil && o.Token.IsSet() {
		return true
	}

	return false
}

// SetToken gets a reference to the given NullableString and assigns it to the Token field.
func (o *SushiswapTokenDayDataDTO) SetToken(v string) {
	o.Token.Set(&v)
}
// SetTokenNil sets the value for Token to be an explicit nil
func (o *SushiswapTokenDayDataDTO) SetTokenNil() {
	o.Token.Set(nil)
}

// UnsetToken ensures that no value is present for Token, not even an explicit nil
func (o *SushiswapTokenDayDataDTO) UnsetToken() {
	o.Token.Unset()
}

// GetVolume returns the Volume field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SushiswapTokenDayDataDTO) GetVolume() string {
	if o == nil || isNil(o.Volume.Get()) {
		var ret string
		return ret
	}
	return *o.Volume.Get()
}

// GetVolumeOk returns a tuple with the Volume field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SushiswapTokenDayDataDTO) GetVolumeOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Volume.Get(), o.Volume.IsSet()
}

// HasVolume returns a boolean if a field has been set.
func (o *SushiswapTokenDayDataDTO) HasVolume() bool {
	if o != nil && o.Volume.IsSet() {
		return true
	}

	return false
}

// SetVolume gets a reference to the given NullableString and assigns it to the Volume field.
func (o *SushiswapTokenDayDataDTO) SetVolume(v string) {
	o.Volume.Set(&v)
}
// SetVolumeNil sets the value for Volume to be an explicit nil
func (o *SushiswapTokenDayDataDTO) SetVolumeNil() {
	o.Volume.Set(nil)
}

// UnsetVolume ensures that no value is present for Volume, not even an explicit nil
func (o *SushiswapTokenDayDataDTO) UnsetVolume() {
	o.Volume.Unset()
}

// GetVolumeEth returns the VolumeEth field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SushiswapTokenDayDataDTO) GetVolumeEth() string {
	if o == nil || isNil(o.VolumeEth.Get()) {
		var ret string
		return ret
	}
	return *o.VolumeEth.Get()
}

// GetVolumeEthOk returns a tuple with the VolumeEth field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SushiswapTokenDayDataDTO) GetVolumeEthOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.VolumeEth.Get(), o.VolumeEth.IsSet()
}

// HasVolumeEth returns a boolean if a field has been set.
func (o *SushiswapTokenDayDataDTO) HasVolumeEth() bool {
	if o != nil && o.VolumeEth.IsSet() {
		return true
	}

	return false
}

// SetVolumeEth gets a reference to the given NullableString and assigns it to the VolumeEth field.
func (o *SushiswapTokenDayDataDTO) SetVolumeEth(v string) {
	o.VolumeEth.Set(&v)
}
// SetVolumeEthNil sets the value for VolumeEth to be an explicit nil
func (o *SushiswapTokenDayDataDTO) SetVolumeEthNil() {
	o.VolumeEth.Set(nil)
}

// UnsetVolumeEth ensures that no value is present for VolumeEth, not even an explicit nil
func (o *SushiswapTokenDayDataDTO) UnsetVolumeEth() {
	o.VolumeEth.Unset()
}

// GetVolumeUsd returns the VolumeUsd field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SushiswapTokenDayDataDTO) GetVolumeUsd() string {
	if o == nil || isNil(o.VolumeUsd.Get()) {
		var ret string
		return ret
	}
	return *o.VolumeUsd.Get()
}

// GetVolumeUsdOk returns a tuple with the VolumeUsd field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SushiswapTokenDayDataDTO) GetVolumeUsdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.VolumeUsd.Get(), o.VolumeUsd.IsSet()
}

// HasVolumeUsd returns a boolean if a field has been set.
func (o *SushiswapTokenDayDataDTO) HasVolumeUsd() bool {
	if o != nil && o.VolumeUsd.IsSet() {
		return true
	}

	return false
}

// SetVolumeUsd gets a reference to the given NullableString and assigns it to the VolumeUsd field.
func (o *SushiswapTokenDayDataDTO) SetVolumeUsd(v string) {
	o.VolumeUsd.Set(&v)
}
// SetVolumeUsdNil sets the value for VolumeUsd to be an explicit nil
func (o *SushiswapTokenDayDataDTO) SetVolumeUsdNil() {
	o.VolumeUsd.Set(nil)
}

// UnsetVolumeUsd ensures that no value is present for VolumeUsd, not even an explicit nil
func (o *SushiswapTokenDayDataDTO) UnsetVolumeUsd() {
	o.VolumeUsd.Unset()
}

// GetTxCount returns the TxCount field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SushiswapTokenDayDataDTO) GetTxCount() string {
	if o == nil || isNil(o.TxCount.Get()) {
		var ret string
		return ret
	}
	return *o.TxCount.Get()
}

// GetTxCountOk returns a tuple with the TxCount field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SushiswapTokenDayDataDTO) GetTxCountOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.TxCount.Get(), o.TxCount.IsSet()
}

// HasTxCount returns a boolean if a field has been set.
func (o *SushiswapTokenDayDataDTO) HasTxCount() bool {
	if o != nil && o.TxCount.IsSet() {
		return true
	}

	return false
}

// SetTxCount gets a reference to the given NullableString and assigns it to the TxCount field.
func (o *SushiswapTokenDayDataDTO) SetTxCount(v string) {
	o.TxCount.Set(&v)
}
// SetTxCountNil sets the value for TxCount to be an explicit nil
func (o *SushiswapTokenDayDataDTO) SetTxCountNil() {
	o.TxCount.Set(nil)
}

// UnsetTxCount ensures that no value is present for TxCount, not even an explicit nil
func (o *SushiswapTokenDayDataDTO) UnsetTxCount() {
	o.TxCount.Unset()
}

// GetLiquidity returns the Liquidity field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SushiswapTokenDayDataDTO) GetLiquidity() string {
	if o == nil || isNil(o.Liquidity.Get()) {
		var ret string
		return ret
	}
	return *o.Liquidity.Get()
}

// GetLiquidityOk returns a tuple with the Liquidity field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SushiswapTokenDayDataDTO) GetLiquidityOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Liquidity.Get(), o.Liquidity.IsSet()
}

// HasLiquidity returns a boolean if a field has been set.
func (o *SushiswapTokenDayDataDTO) HasLiquidity() bool {
	if o != nil && o.Liquidity.IsSet() {
		return true
	}

	return false
}

// SetLiquidity gets a reference to the given NullableString and assigns it to the Liquidity field.
func (o *SushiswapTokenDayDataDTO) SetLiquidity(v string) {
	o.Liquidity.Set(&v)
}
// SetLiquidityNil sets the value for Liquidity to be an explicit nil
func (o *SushiswapTokenDayDataDTO) SetLiquidityNil() {
	o.Liquidity.Set(nil)
}

// UnsetLiquidity ensures that no value is present for Liquidity, not even an explicit nil
func (o *SushiswapTokenDayDataDTO) UnsetLiquidity() {
	o.Liquidity.Unset()
}

// GetLiquidityEth returns the LiquidityEth field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SushiswapTokenDayDataDTO) GetLiquidityEth() string {
	if o == nil || isNil(o.LiquidityEth.Get()) {
		var ret string
		return ret
	}
	return *o.LiquidityEth.Get()
}

// GetLiquidityEthOk returns a tuple with the LiquidityEth field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SushiswapTokenDayDataDTO) GetLiquidityEthOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.LiquidityEth.Get(), o.LiquidityEth.IsSet()
}

// HasLiquidityEth returns a boolean if a field has been set.
func (o *SushiswapTokenDayDataDTO) HasLiquidityEth() bool {
	if o != nil && o.LiquidityEth.IsSet() {
		return true
	}

	return false
}

// SetLiquidityEth gets a reference to the given NullableString and assigns it to the LiquidityEth field.
func (o *SushiswapTokenDayDataDTO) SetLiquidityEth(v string) {
	o.LiquidityEth.Set(&v)
}
// SetLiquidityEthNil sets the value for LiquidityEth to be an explicit nil
func (o *SushiswapTokenDayDataDTO) SetLiquidityEthNil() {
	o.LiquidityEth.Set(nil)
}

// UnsetLiquidityEth ensures that no value is present for LiquidityEth, not even an explicit nil
func (o *SushiswapTokenDayDataDTO) UnsetLiquidityEth() {
	o.LiquidityEth.Unset()
}

// GetLiquidityUsd returns the LiquidityUsd field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SushiswapTokenDayDataDTO) GetLiquidityUsd() string {
	if o == nil || isNil(o.LiquidityUsd.Get()) {
		var ret string
		return ret
	}
	return *o.LiquidityUsd.Get()
}

// GetLiquidityUsdOk returns a tuple with the LiquidityUsd field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SushiswapTokenDayDataDTO) GetLiquidityUsdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.LiquidityUsd.Get(), o.LiquidityUsd.IsSet()
}

// HasLiquidityUsd returns a boolean if a field has been set.
func (o *SushiswapTokenDayDataDTO) HasLiquidityUsd() bool {
	if o != nil && o.LiquidityUsd.IsSet() {
		return true
	}

	return false
}

// SetLiquidityUsd gets a reference to the given NullableString and assigns it to the LiquidityUsd field.
func (o *SushiswapTokenDayDataDTO) SetLiquidityUsd(v string) {
	o.LiquidityUsd.Set(&v)
}
// SetLiquidityUsdNil sets the value for LiquidityUsd to be an explicit nil
func (o *SushiswapTokenDayDataDTO) SetLiquidityUsdNil() {
	o.LiquidityUsd.Set(nil)
}

// UnsetLiquidityUsd ensures that no value is present for LiquidityUsd, not even an explicit nil
func (o *SushiswapTokenDayDataDTO) UnsetLiquidityUsd() {
	o.LiquidityUsd.Unset()
}

// GetPriceUsd returns the PriceUsd field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SushiswapTokenDayDataDTO) GetPriceUsd() string {
	if o == nil || isNil(o.PriceUsd.Get()) {
		var ret string
		return ret
	}
	return *o.PriceUsd.Get()
}

// GetPriceUsdOk returns a tuple with the PriceUsd field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SushiswapTokenDayDataDTO) GetPriceUsdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.PriceUsd.Get(), o.PriceUsd.IsSet()
}

// HasPriceUsd returns a boolean if a field has been set.
func (o *SushiswapTokenDayDataDTO) HasPriceUsd() bool {
	if o != nil && o.PriceUsd.IsSet() {
		return true
	}

	return false
}

// SetPriceUsd gets a reference to the given NullableString and assigns it to the PriceUsd field.
func (o *SushiswapTokenDayDataDTO) SetPriceUsd(v string) {
	o.PriceUsd.Set(&v)
}
// SetPriceUsdNil sets the value for PriceUsd to be an explicit nil
func (o *SushiswapTokenDayDataDTO) SetPriceUsdNil() {
	o.PriceUsd.Set(nil)
}

// UnsetPriceUsd ensures that no value is present for PriceUsd, not even an explicit nil
func (o *SushiswapTokenDayDataDTO) UnsetPriceUsd() {
	o.PriceUsd.Unset()
}

// GetVid returns the Vid field value if set, zero value otherwise.
func (o *SushiswapTokenDayDataDTO) GetVid() int64 {
	if o == nil || isNil(o.Vid) {
		var ret int64
		return ret
	}
	return *o.Vid
}

// GetVidOk returns a tuple with the Vid field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SushiswapTokenDayDataDTO) GetVidOk() (*int64, bool) {
	if o == nil || isNil(o.Vid) {
    return nil, false
	}
	return o.Vid, true
}

// HasVid returns a boolean if a field has been set.
func (o *SushiswapTokenDayDataDTO) HasVid() bool {
	if o != nil && !isNil(o.Vid) {
		return true
	}

	return false
}

// SetVid gets a reference to the given int64 and assigns it to the Vid field.
func (o *SushiswapTokenDayDataDTO) SetVid(v int64) {
	o.Vid = &v
}

func (o SushiswapTokenDayDataDTO) MarshalJSON() ([]byte, error) {
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
	if o.Token.IsSet() {
		toSerialize["token"] = o.Token.Get()
	}
	if o.Volume.IsSet() {
		toSerialize["volume"] = o.Volume.Get()
	}
	if o.VolumeEth.IsSet() {
		toSerialize["volume_eth"] = o.VolumeEth.Get()
	}
	if o.VolumeUsd.IsSet() {
		toSerialize["volume_usd"] = o.VolumeUsd.Get()
	}
	if o.TxCount.IsSet() {
		toSerialize["tx_count"] = o.TxCount.Get()
	}
	if o.Liquidity.IsSet() {
		toSerialize["liquidity"] = o.Liquidity.Get()
	}
	if o.LiquidityEth.IsSet() {
		toSerialize["liquidity_eth"] = o.LiquidityEth.Get()
	}
	if o.LiquidityUsd.IsSet() {
		toSerialize["liquidity_usd"] = o.LiquidityUsd.Get()
	}
	if o.PriceUsd.IsSet() {
		toSerialize["price_usd"] = o.PriceUsd.Get()
	}
	if !isNil(o.Vid) {
		toSerialize["vid"] = o.Vid
	}
	return json.Marshal(toSerialize)
}

type NullableSushiswapTokenDayDataDTO struct {
	value *SushiswapTokenDayDataDTO
	isSet bool
}

func (v NullableSushiswapTokenDayDataDTO) Get() *SushiswapTokenDayDataDTO {
	return v.value
}

func (v *NullableSushiswapTokenDayDataDTO) Set(val *SushiswapTokenDayDataDTO) {
	v.value = val
	v.isSet = true
}

func (v NullableSushiswapTokenDayDataDTO) IsSet() bool {
	return v.isSet
}

func (v *NullableSushiswapTokenDayDataDTO) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSushiswapTokenDayDataDTO(val *SushiswapTokenDayDataDTO) *NullableSushiswapTokenDayDataDTO {
	return &NullableSushiswapTokenDayDataDTO{value: val, isSet: true}
}

func (v NullableSushiswapTokenDayDataDTO) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSushiswapTokenDayDataDTO) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


