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

// TokenDTO struct for TokenDTO
type TokenDTO struct {
	EntryTime *time.Time `json:"entry_time,omitempty"`
	RecvTime *time.Time `json:"recv_time,omitempty"`
	BlockNumber *int64 `json:"block_number,omitempty"`
	Id NullableString `json:"id,omitempty"`
	Factory NullableString `json:"factory,omitempty"`
	Symbol NullableString `json:"symbol,omitempty"`
	Name NullableString `json:"name,omitempty"`
	Decimals NullableString `json:"decimals,omitempty"`
	TotalSupply NullableString `json:"total_supply,omitempty"`
	Volume NullableString `json:"volume,omitempty"`
	VolumeUsd NullableString `json:"volume_usd,omitempty"`
	UntrackedVolumeUsd NullableString `json:"untracked_volume_usd,omitempty"`
	TxCount NullableString `json:"tx_count,omitempty"`
	Liquidity NullableString `json:"liquidity,omitempty"`
	DerivedEth NullableString `json:"derived_eth,omitempty"`
	WhitelistPairs []string `json:"whitelist_pairs,omitempty"`
	Vid *int64 `json:"vid,omitempty"`
	TokenSymbol NullableString `json:"token_symbol,omitempty"`
}

// NewTokenDTO instantiates a new TokenDTO object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewTokenDTO() *TokenDTO {
	this := TokenDTO{}
	return &this
}

// NewTokenDTOWithDefaults instantiates a new TokenDTO object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewTokenDTOWithDefaults() *TokenDTO {
	this := TokenDTO{}
	return &this
}

// GetEntryTime returns the EntryTime field value if set, zero value otherwise.
func (o *TokenDTO) GetEntryTime() time.Time {
	if o == nil || o.EntryTime == nil {
		var ret time.Time
		return ret
	}
	return *o.EntryTime
}

// GetEntryTimeOk returns a tuple with the EntryTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *TokenDTO) GetEntryTimeOk() (*time.Time, bool) {
	if o == nil || o.EntryTime == nil {
		return nil, false
	}
	return o.EntryTime, true
}

// HasEntryTime returns a boolean if a field has been set.
func (o *TokenDTO) HasEntryTime() bool {
	if o != nil && o.EntryTime != nil {
		return true
	}

	return false
}

// SetEntryTime gets a reference to the given time.Time and assigns it to the EntryTime field.
func (o *TokenDTO) SetEntryTime(v time.Time) {
	o.EntryTime = &v
}

// GetRecvTime returns the RecvTime field value if set, zero value otherwise.
func (o *TokenDTO) GetRecvTime() time.Time {
	if o == nil || o.RecvTime == nil {
		var ret time.Time
		return ret
	}
	return *o.RecvTime
}

// GetRecvTimeOk returns a tuple with the RecvTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *TokenDTO) GetRecvTimeOk() (*time.Time, bool) {
	if o == nil || o.RecvTime == nil {
		return nil, false
	}
	return o.RecvTime, true
}

// HasRecvTime returns a boolean if a field has been set.
func (o *TokenDTO) HasRecvTime() bool {
	if o != nil && o.RecvTime != nil {
		return true
	}

	return false
}

// SetRecvTime gets a reference to the given time.Time and assigns it to the RecvTime field.
func (o *TokenDTO) SetRecvTime(v time.Time) {
	o.RecvTime = &v
}

// GetBlockNumber returns the BlockNumber field value if set, zero value otherwise.
func (o *TokenDTO) GetBlockNumber() int64 {
	if o == nil || o.BlockNumber == nil {
		var ret int64
		return ret
	}
	return *o.BlockNumber
}

// GetBlockNumberOk returns a tuple with the BlockNumber field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *TokenDTO) GetBlockNumberOk() (*int64, bool) {
	if o == nil || o.BlockNumber == nil {
		return nil, false
	}
	return o.BlockNumber, true
}

// HasBlockNumber returns a boolean if a field has been set.
func (o *TokenDTO) HasBlockNumber() bool {
	if o != nil && o.BlockNumber != nil {
		return true
	}

	return false
}

// SetBlockNumber gets a reference to the given int64 and assigns it to the BlockNumber field.
func (o *TokenDTO) SetBlockNumber(v int64) {
	o.BlockNumber = &v
}

// GetId returns the Id field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *TokenDTO) GetId() string {
	if o == nil || o.Id.Get() == nil {
		var ret string
		return ret
	}
	return *o.Id.Get()
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *TokenDTO) GetIdOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Id.Get(), o.Id.IsSet()
}

// HasId returns a boolean if a field has been set.
func (o *TokenDTO) HasId() bool {
	if o != nil && o.Id.IsSet() {
		return true
	}

	return false
}

// SetId gets a reference to the given NullableString and assigns it to the Id field.
func (o *TokenDTO) SetId(v string) {
	o.Id.Set(&v)
}
// SetIdNil sets the value for Id to be an explicit nil
func (o *TokenDTO) SetIdNil() {
	o.Id.Set(nil)
}

// UnsetId ensures that no value is present for Id, not even an explicit nil
func (o *TokenDTO) UnsetId() {
	o.Id.Unset()
}

// GetFactory returns the Factory field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *TokenDTO) GetFactory() string {
	if o == nil || o.Factory.Get() == nil {
		var ret string
		return ret
	}
	return *o.Factory.Get()
}

// GetFactoryOk returns a tuple with the Factory field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *TokenDTO) GetFactoryOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Factory.Get(), o.Factory.IsSet()
}

// HasFactory returns a boolean if a field has been set.
func (o *TokenDTO) HasFactory() bool {
	if o != nil && o.Factory.IsSet() {
		return true
	}

	return false
}

// SetFactory gets a reference to the given NullableString and assigns it to the Factory field.
func (o *TokenDTO) SetFactory(v string) {
	o.Factory.Set(&v)
}
// SetFactoryNil sets the value for Factory to be an explicit nil
func (o *TokenDTO) SetFactoryNil() {
	o.Factory.Set(nil)
}

// UnsetFactory ensures that no value is present for Factory, not even an explicit nil
func (o *TokenDTO) UnsetFactory() {
	o.Factory.Unset()
}

// GetSymbol returns the Symbol field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *TokenDTO) GetSymbol() string {
	if o == nil || o.Symbol.Get() == nil {
		var ret string
		return ret
	}
	return *o.Symbol.Get()
}

// GetSymbolOk returns a tuple with the Symbol field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *TokenDTO) GetSymbolOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Symbol.Get(), o.Symbol.IsSet()
}

// HasSymbol returns a boolean if a field has been set.
func (o *TokenDTO) HasSymbol() bool {
	if o != nil && o.Symbol.IsSet() {
		return true
	}

	return false
}

// SetSymbol gets a reference to the given NullableString and assigns it to the Symbol field.
func (o *TokenDTO) SetSymbol(v string) {
	o.Symbol.Set(&v)
}
// SetSymbolNil sets the value for Symbol to be an explicit nil
func (o *TokenDTO) SetSymbolNil() {
	o.Symbol.Set(nil)
}

// UnsetSymbol ensures that no value is present for Symbol, not even an explicit nil
func (o *TokenDTO) UnsetSymbol() {
	o.Symbol.Unset()
}

// GetName returns the Name field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *TokenDTO) GetName() string {
	if o == nil || o.Name.Get() == nil {
		var ret string
		return ret
	}
	return *o.Name.Get()
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *TokenDTO) GetNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Name.Get(), o.Name.IsSet()
}

// HasName returns a boolean if a field has been set.
func (o *TokenDTO) HasName() bool {
	if o != nil && o.Name.IsSet() {
		return true
	}

	return false
}

// SetName gets a reference to the given NullableString and assigns it to the Name field.
func (o *TokenDTO) SetName(v string) {
	o.Name.Set(&v)
}
// SetNameNil sets the value for Name to be an explicit nil
func (o *TokenDTO) SetNameNil() {
	o.Name.Set(nil)
}

// UnsetName ensures that no value is present for Name, not even an explicit nil
func (o *TokenDTO) UnsetName() {
	o.Name.Unset()
}

// GetDecimals returns the Decimals field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *TokenDTO) GetDecimals() string {
	if o == nil || o.Decimals.Get() == nil {
		var ret string
		return ret
	}
	return *o.Decimals.Get()
}

// GetDecimalsOk returns a tuple with the Decimals field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *TokenDTO) GetDecimalsOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Decimals.Get(), o.Decimals.IsSet()
}

// HasDecimals returns a boolean if a field has been set.
func (o *TokenDTO) HasDecimals() bool {
	if o != nil && o.Decimals.IsSet() {
		return true
	}

	return false
}

// SetDecimals gets a reference to the given NullableString and assigns it to the Decimals field.
func (o *TokenDTO) SetDecimals(v string) {
	o.Decimals.Set(&v)
}
// SetDecimalsNil sets the value for Decimals to be an explicit nil
func (o *TokenDTO) SetDecimalsNil() {
	o.Decimals.Set(nil)
}

// UnsetDecimals ensures that no value is present for Decimals, not even an explicit nil
func (o *TokenDTO) UnsetDecimals() {
	o.Decimals.Unset()
}

// GetTotalSupply returns the TotalSupply field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *TokenDTO) GetTotalSupply() string {
	if o == nil || o.TotalSupply.Get() == nil {
		var ret string
		return ret
	}
	return *o.TotalSupply.Get()
}

// GetTotalSupplyOk returns a tuple with the TotalSupply field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *TokenDTO) GetTotalSupplyOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.TotalSupply.Get(), o.TotalSupply.IsSet()
}

// HasTotalSupply returns a boolean if a field has been set.
func (o *TokenDTO) HasTotalSupply() bool {
	if o != nil && o.TotalSupply.IsSet() {
		return true
	}

	return false
}

// SetTotalSupply gets a reference to the given NullableString and assigns it to the TotalSupply field.
func (o *TokenDTO) SetTotalSupply(v string) {
	o.TotalSupply.Set(&v)
}
// SetTotalSupplyNil sets the value for TotalSupply to be an explicit nil
func (o *TokenDTO) SetTotalSupplyNil() {
	o.TotalSupply.Set(nil)
}

// UnsetTotalSupply ensures that no value is present for TotalSupply, not even an explicit nil
func (o *TokenDTO) UnsetTotalSupply() {
	o.TotalSupply.Unset()
}

// GetVolume returns the Volume field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *TokenDTO) GetVolume() string {
	if o == nil || o.Volume.Get() == nil {
		var ret string
		return ret
	}
	return *o.Volume.Get()
}

// GetVolumeOk returns a tuple with the Volume field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *TokenDTO) GetVolumeOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Volume.Get(), o.Volume.IsSet()
}

// HasVolume returns a boolean if a field has been set.
func (o *TokenDTO) HasVolume() bool {
	if o != nil && o.Volume.IsSet() {
		return true
	}

	return false
}

// SetVolume gets a reference to the given NullableString and assigns it to the Volume field.
func (o *TokenDTO) SetVolume(v string) {
	o.Volume.Set(&v)
}
// SetVolumeNil sets the value for Volume to be an explicit nil
func (o *TokenDTO) SetVolumeNil() {
	o.Volume.Set(nil)
}

// UnsetVolume ensures that no value is present for Volume, not even an explicit nil
func (o *TokenDTO) UnsetVolume() {
	o.Volume.Unset()
}

// GetVolumeUsd returns the VolumeUsd field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *TokenDTO) GetVolumeUsd() string {
	if o == nil || o.VolumeUsd.Get() == nil {
		var ret string
		return ret
	}
	return *o.VolumeUsd.Get()
}

// GetVolumeUsdOk returns a tuple with the VolumeUsd field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *TokenDTO) GetVolumeUsdOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.VolumeUsd.Get(), o.VolumeUsd.IsSet()
}

// HasVolumeUsd returns a boolean if a field has been set.
func (o *TokenDTO) HasVolumeUsd() bool {
	if o != nil && o.VolumeUsd.IsSet() {
		return true
	}

	return false
}

// SetVolumeUsd gets a reference to the given NullableString and assigns it to the VolumeUsd field.
func (o *TokenDTO) SetVolumeUsd(v string) {
	o.VolumeUsd.Set(&v)
}
// SetVolumeUsdNil sets the value for VolumeUsd to be an explicit nil
func (o *TokenDTO) SetVolumeUsdNil() {
	o.VolumeUsd.Set(nil)
}

// UnsetVolumeUsd ensures that no value is present for VolumeUsd, not even an explicit nil
func (o *TokenDTO) UnsetVolumeUsd() {
	o.VolumeUsd.Unset()
}

// GetUntrackedVolumeUsd returns the UntrackedVolumeUsd field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *TokenDTO) GetUntrackedVolumeUsd() string {
	if o == nil || o.UntrackedVolumeUsd.Get() == nil {
		var ret string
		return ret
	}
	return *o.UntrackedVolumeUsd.Get()
}

// GetUntrackedVolumeUsdOk returns a tuple with the UntrackedVolumeUsd field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *TokenDTO) GetUntrackedVolumeUsdOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.UntrackedVolumeUsd.Get(), o.UntrackedVolumeUsd.IsSet()
}

// HasUntrackedVolumeUsd returns a boolean if a field has been set.
func (o *TokenDTO) HasUntrackedVolumeUsd() bool {
	if o != nil && o.UntrackedVolumeUsd.IsSet() {
		return true
	}

	return false
}

// SetUntrackedVolumeUsd gets a reference to the given NullableString and assigns it to the UntrackedVolumeUsd field.
func (o *TokenDTO) SetUntrackedVolumeUsd(v string) {
	o.UntrackedVolumeUsd.Set(&v)
}
// SetUntrackedVolumeUsdNil sets the value for UntrackedVolumeUsd to be an explicit nil
func (o *TokenDTO) SetUntrackedVolumeUsdNil() {
	o.UntrackedVolumeUsd.Set(nil)
}

// UnsetUntrackedVolumeUsd ensures that no value is present for UntrackedVolumeUsd, not even an explicit nil
func (o *TokenDTO) UnsetUntrackedVolumeUsd() {
	o.UntrackedVolumeUsd.Unset()
}

// GetTxCount returns the TxCount field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *TokenDTO) GetTxCount() string {
	if o == nil || o.TxCount.Get() == nil {
		var ret string
		return ret
	}
	return *o.TxCount.Get()
}

// GetTxCountOk returns a tuple with the TxCount field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *TokenDTO) GetTxCountOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.TxCount.Get(), o.TxCount.IsSet()
}

// HasTxCount returns a boolean if a field has been set.
func (o *TokenDTO) HasTxCount() bool {
	if o != nil && o.TxCount.IsSet() {
		return true
	}

	return false
}

// SetTxCount gets a reference to the given NullableString and assigns it to the TxCount field.
func (o *TokenDTO) SetTxCount(v string) {
	o.TxCount.Set(&v)
}
// SetTxCountNil sets the value for TxCount to be an explicit nil
func (o *TokenDTO) SetTxCountNil() {
	o.TxCount.Set(nil)
}

// UnsetTxCount ensures that no value is present for TxCount, not even an explicit nil
func (o *TokenDTO) UnsetTxCount() {
	o.TxCount.Unset()
}

// GetLiquidity returns the Liquidity field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *TokenDTO) GetLiquidity() string {
	if o == nil || o.Liquidity.Get() == nil {
		var ret string
		return ret
	}
	return *o.Liquidity.Get()
}

// GetLiquidityOk returns a tuple with the Liquidity field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *TokenDTO) GetLiquidityOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Liquidity.Get(), o.Liquidity.IsSet()
}

// HasLiquidity returns a boolean if a field has been set.
func (o *TokenDTO) HasLiquidity() bool {
	if o != nil && o.Liquidity.IsSet() {
		return true
	}

	return false
}

// SetLiquidity gets a reference to the given NullableString and assigns it to the Liquidity field.
func (o *TokenDTO) SetLiquidity(v string) {
	o.Liquidity.Set(&v)
}
// SetLiquidityNil sets the value for Liquidity to be an explicit nil
func (o *TokenDTO) SetLiquidityNil() {
	o.Liquidity.Set(nil)
}

// UnsetLiquidity ensures that no value is present for Liquidity, not even an explicit nil
func (o *TokenDTO) UnsetLiquidity() {
	o.Liquidity.Unset()
}

// GetDerivedEth returns the DerivedEth field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *TokenDTO) GetDerivedEth() string {
	if o == nil || o.DerivedEth.Get() == nil {
		var ret string
		return ret
	}
	return *o.DerivedEth.Get()
}

// GetDerivedEthOk returns a tuple with the DerivedEth field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *TokenDTO) GetDerivedEthOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.DerivedEth.Get(), o.DerivedEth.IsSet()
}

// HasDerivedEth returns a boolean if a field has been set.
func (o *TokenDTO) HasDerivedEth() bool {
	if o != nil && o.DerivedEth.IsSet() {
		return true
	}

	return false
}

// SetDerivedEth gets a reference to the given NullableString and assigns it to the DerivedEth field.
func (o *TokenDTO) SetDerivedEth(v string) {
	o.DerivedEth.Set(&v)
}
// SetDerivedEthNil sets the value for DerivedEth to be an explicit nil
func (o *TokenDTO) SetDerivedEthNil() {
	o.DerivedEth.Set(nil)
}

// UnsetDerivedEth ensures that no value is present for DerivedEth, not even an explicit nil
func (o *TokenDTO) UnsetDerivedEth() {
	o.DerivedEth.Unset()
}

// GetWhitelistPairs returns the WhitelistPairs field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *TokenDTO) GetWhitelistPairs() []string {
	if o == nil {
		var ret []string
		return ret
	}
	return o.WhitelistPairs
}

// GetWhitelistPairsOk returns a tuple with the WhitelistPairs field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *TokenDTO) GetWhitelistPairsOk() ([]string, bool) {
	if o == nil || o.WhitelistPairs == nil {
		return nil, false
	}
	return o.WhitelistPairs, true
}

// HasWhitelistPairs returns a boolean if a field has been set.
func (o *TokenDTO) HasWhitelistPairs() bool {
	if o != nil && o.WhitelistPairs != nil {
		return true
	}

	return false
}

// SetWhitelistPairs gets a reference to the given []string and assigns it to the WhitelistPairs field.
func (o *TokenDTO) SetWhitelistPairs(v []string) {
	o.WhitelistPairs = v
}

// GetVid returns the Vid field value if set, zero value otherwise.
func (o *TokenDTO) GetVid() int64 {
	if o == nil || o.Vid == nil {
		var ret int64
		return ret
	}
	return *o.Vid
}

// GetVidOk returns a tuple with the Vid field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *TokenDTO) GetVidOk() (*int64, bool) {
	if o == nil || o.Vid == nil {
		return nil, false
	}
	return o.Vid, true
}

// HasVid returns a boolean if a field has been set.
func (o *TokenDTO) HasVid() bool {
	if o != nil && o.Vid != nil {
		return true
	}

	return false
}

// SetVid gets a reference to the given int64 and assigns it to the Vid field.
func (o *TokenDTO) SetVid(v int64) {
	o.Vid = &v
}

// GetTokenSymbol returns the TokenSymbol field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *TokenDTO) GetTokenSymbol() string {
	if o == nil || o.TokenSymbol.Get() == nil {
		var ret string
		return ret
	}
	return *o.TokenSymbol.Get()
}

// GetTokenSymbolOk returns a tuple with the TokenSymbol field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *TokenDTO) GetTokenSymbolOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.TokenSymbol.Get(), o.TokenSymbol.IsSet()
}

// HasTokenSymbol returns a boolean if a field has been set.
func (o *TokenDTO) HasTokenSymbol() bool {
	if o != nil && o.TokenSymbol.IsSet() {
		return true
	}

	return false
}

// SetTokenSymbol gets a reference to the given NullableString and assigns it to the TokenSymbol field.
func (o *TokenDTO) SetTokenSymbol(v string) {
	o.TokenSymbol.Set(&v)
}
// SetTokenSymbolNil sets the value for TokenSymbol to be an explicit nil
func (o *TokenDTO) SetTokenSymbolNil() {
	o.TokenSymbol.Set(nil)
}

// UnsetTokenSymbol ensures that no value is present for TokenSymbol, not even an explicit nil
func (o *TokenDTO) UnsetTokenSymbol() {
	o.TokenSymbol.Unset()
}

func (o TokenDTO) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.EntryTime != nil {
		toSerialize["entry_time"] = o.EntryTime
	}
	if o.RecvTime != nil {
		toSerialize["recv_time"] = o.RecvTime
	}
	if o.BlockNumber != nil {
		toSerialize["block_number"] = o.BlockNumber
	}
	if o.Id.IsSet() {
		toSerialize["id"] = o.Id.Get()
	}
	if o.Factory.IsSet() {
		toSerialize["factory"] = o.Factory.Get()
	}
	if o.Symbol.IsSet() {
		toSerialize["symbol"] = o.Symbol.Get()
	}
	if o.Name.IsSet() {
		toSerialize["name"] = o.Name.Get()
	}
	if o.Decimals.IsSet() {
		toSerialize["decimals"] = o.Decimals.Get()
	}
	if o.TotalSupply.IsSet() {
		toSerialize["total_supply"] = o.TotalSupply.Get()
	}
	if o.Volume.IsSet() {
		toSerialize["volume"] = o.Volume.Get()
	}
	if o.VolumeUsd.IsSet() {
		toSerialize["volume_usd"] = o.VolumeUsd.Get()
	}
	if o.UntrackedVolumeUsd.IsSet() {
		toSerialize["untracked_volume_usd"] = o.UntrackedVolumeUsd.Get()
	}
	if o.TxCount.IsSet() {
		toSerialize["tx_count"] = o.TxCount.Get()
	}
	if o.Liquidity.IsSet() {
		toSerialize["liquidity"] = o.Liquidity.Get()
	}
	if o.DerivedEth.IsSet() {
		toSerialize["derived_eth"] = o.DerivedEth.Get()
	}
	if o.WhitelistPairs != nil {
		toSerialize["whitelist_pairs"] = o.WhitelistPairs
	}
	if o.Vid != nil {
		toSerialize["vid"] = o.Vid
	}
	if o.TokenSymbol.IsSet() {
		toSerialize["token_symbol"] = o.TokenSymbol.Get()
	}
	return json.Marshal(toSerialize)
}

type NullableTokenDTO struct {
	value *TokenDTO
	isSet bool
}

func (v NullableTokenDTO) Get() *TokenDTO {
	return v.value
}

func (v *NullableTokenDTO) Set(val *TokenDTO) {
	v.value = val
	v.isSet = true
}

func (v NullableTokenDTO) IsSet() bool {
	return v.isSet
}

func (v *NullableTokenDTO) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableTokenDTO(val *TokenDTO) *NullableTokenDTO {
	return &NullableTokenDTO{value: val, isSet: true}
}

func (v NullableTokenDTO) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableTokenDTO) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


