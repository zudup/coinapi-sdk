# FactoryV3DTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Id** | Pointer to **NullableString** | Factory address. | [optional] 
**PoolCount** | Pointer to **NullableString** | Amount of pools created. | [optional] 
**TxCount** | Pointer to **NullableString** | Amount of transactions all time. | [optional] 
**TotalVolumeUsd** | Pointer to **NullableString** | Total volume all time in derived USD. | [optional] 
**TotalVolumeEth** | Pointer to **NullableString** | Total volume all time in derived ETH. | [optional] 
**TotalFeesUsd** | Pointer to **NullableString** | Total swap fees all time in USD. | [optional] 
**TotalFeesEth** | Pointer to **NullableString** | All volume even through less reliable USD values. | [optional] 
**UntrackedVolumeUsd** | Pointer to **NullableString** | All volume even through less reliable USD values. | [optional] 
**TotalValueLockedUsd** | Pointer to **NullableString** | Total value locked derived in USD. | [optional] 
**TotalValueLockedEth** | Pointer to **NullableString** | Total value locked derived in ETH. | [optional] 
**TotalValueLockedUsdUntracked** | Pointer to **NullableString** | Total value locked derived in USD untracked. | [optional] 
**TotalValueLockedEthUntracked** | Pointer to **NullableString** | Total value locked derived in ETH untracked. | [optional] 
**Owner** | Pointer to **NullableString** | Current owner of the factory. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 

## Methods

### NewFactoryV3DTO

`func NewFactoryV3DTO() *FactoryV3DTO`

NewFactoryV3DTO instantiates a new FactoryV3DTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewFactoryV3DTOWithDefaults

`func NewFactoryV3DTOWithDefaults() *FactoryV3DTO`

NewFactoryV3DTOWithDefaults instantiates a new FactoryV3DTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *FactoryV3DTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *FactoryV3DTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *FactoryV3DTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *FactoryV3DTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *FactoryV3DTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *FactoryV3DTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *FactoryV3DTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *FactoryV3DTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *FactoryV3DTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *FactoryV3DTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *FactoryV3DTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *FactoryV3DTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *FactoryV3DTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *FactoryV3DTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *FactoryV3DTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *FactoryV3DTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *FactoryV3DTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *FactoryV3DTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetPoolCount

`func (o *FactoryV3DTO) GetPoolCount() string`

GetPoolCount returns the PoolCount field if non-nil, zero value otherwise.

### GetPoolCountOk

`func (o *FactoryV3DTO) GetPoolCountOk() (*string, bool)`

GetPoolCountOk returns a tuple with the PoolCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPoolCount

`func (o *FactoryV3DTO) SetPoolCount(v string)`

SetPoolCount sets PoolCount field to given value.

### HasPoolCount

`func (o *FactoryV3DTO) HasPoolCount() bool`

HasPoolCount returns a boolean if a field has been set.

### SetPoolCountNil

`func (o *FactoryV3DTO) SetPoolCountNil(b bool)`

 SetPoolCountNil sets the value for PoolCount to be an explicit nil

### UnsetPoolCount
`func (o *FactoryV3DTO) UnsetPoolCount()`

UnsetPoolCount ensures that no value is present for PoolCount, not even an explicit nil
### GetTxCount

`func (o *FactoryV3DTO) GetTxCount() string`

GetTxCount returns the TxCount field if non-nil, zero value otherwise.

### GetTxCountOk

`func (o *FactoryV3DTO) GetTxCountOk() (*string, bool)`

GetTxCountOk returns a tuple with the TxCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTxCount

`func (o *FactoryV3DTO) SetTxCount(v string)`

SetTxCount sets TxCount field to given value.

### HasTxCount

`func (o *FactoryV3DTO) HasTxCount() bool`

HasTxCount returns a boolean if a field has been set.

### SetTxCountNil

`func (o *FactoryV3DTO) SetTxCountNil(b bool)`

 SetTxCountNil sets the value for TxCount to be an explicit nil

### UnsetTxCount
`func (o *FactoryV3DTO) UnsetTxCount()`

UnsetTxCount ensures that no value is present for TxCount, not even an explicit nil
### GetTotalVolumeUsd

`func (o *FactoryV3DTO) GetTotalVolumeUsd() string`

GetTotalVolumeUsd returns the TotalVolumeUsd field if non-nil, zero value otherwise.

### GetTotalVolumeUsdOk

`func (o *FactoryV3DTO) GetTotalVolumeUsdOk() (*string, bool)`

GetTotalVolumeUsdOk returns a tuple with the TotalVolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalVolumeUsd

`func (o *FactoryV3DTO) SetTotalVolumeUsd(v string)`

SetTotalVolumeUsd sets TotalVolumeUsd field to given value.

### HasTotalVolumeUsd

`func (o *FactoryV3DTO) HasTotalVolumeUsd() bool`

HasTotalVolumeUsd returns a boolean if a field has been set.

### SetTotalVolumeUsdNil

`func (o *FactoryV3DTO) SetTotalVolumeUsdNil(b bool)`

 SetTotalVolumeUsdNil sets the value for TotalVolumeUsd to be an explicit nil

### UnsetTotalVolumeUsd
`func (o *FactoryV3DTO) UnsetTotalVolumeUsd()`

UnsetTotalVolumeUsd ensures that no value is present for TotalVolumeUsd, not even an explicit nil
### GetTotalVolumeEth

`func (o *FactoryV3DTO) GetTotalVolumeEth() string`

GetTotalVolumeEth returns the TotalVolumeEth field if non-nil, zero value otherwise.

### GetTotalVolumeEthOk

`func (o *FactoryV3DTO) GetTotalVolumeEthOk() (*string, bool)`

GetTotalVolumeEthOk returns a tuple with the TotalVolumeEth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalVolumeEth

`func (o *FactoryV3DTO) SetTotalVolumeEth(v string)`

SetTotalVolumeEth sets TotalVolumeEth field to given value.

### HasTotalVolumeEth

`func (o *FactoryV3DTO) HasTotalVolumeEth() bool`

HasTotalVolumeEth returns a boolean if a field has been set.

### SetTotalVolumeEthNil

`func (o *FactoryV3DTO) SetTotalVolumeEthNil(b bool)`

 SetTotalVolumeEthNil sets the value for TotalVolumeEth to be an explicit nil

### UnsetTotalVolumeEth
`func (o *FactoryV3DTO) UnsetTotalVolumeEth()`

UnsetTotalVolumeEth ensures that no value is present for TotalVolumeEth, not even an explicit nil
### GetTotalFeesUsd

`func (o *FactoryV3DTO) GetTotalFeesUsd() string`

GetTotalFeesUsd returns the TotalFeesUsd field if non-nil, zero value otherwise.

### GetTotalFeesUsdOk

`func (o *FactoryV3DTO) GetTotalFeesUsdOk() (*string, bool)`

GetTotalFeesUsdOk returns a tuple with the TotalFeesUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalFeesUsd

`func (o *FactoryV3DTO) SetTotalFeesUsd(v string)`

SetTotalFeesUsd sets TotalFeesUsd field to given value.

### HasTotalFeesUsd

`func (o *FactoryV3DTO) HasTotalFeesUsd() bool`

HasTotalFeesUsd returns a boolean if a field has been set.

### SetTotalFeesUsdNil

`func (o *FactoryV3DTO) SetTotalFeesUsdNil(b bool)`

 SetTotalFeesUsdNil sets the value for TotalFeesUsd to be an explicit nil

### UnsetTotalFeesUsd
`func (o *FactoryV3DTO) UnsetTotalFeesUsd()`

UnsetTotalFeesUsd ensures that no value is present for TotalFeesUsd, not even an explicit nil
### GetTotalFeesEth

`func (o *FactoryV3DTO) GetTotalFeesEth() string`

GetTotalFeesEth returns the TotalFeesEth field if non-nil, zero value otherwise.

### GetTotalFeesEthOk

`func (o *FactoryV3DTO) GetTotalFeesEthOk() (*string, bool)`

GetTotalFeesEthOk returns a tuple with the TotalFeesEth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalFeesEth

`func (o *FactoryV3DTO) SetTotalFeesEth(v string)`

SetTotalFeesEth sets TotalFeesEth field to given value.

### HasTotalFeesEth

`func (o *FactoryV3DTO) HasTotalFeesEth() bool`

HasTotalFeesEth returns a boolean if a field has been set.

### SetTotalFeesEthNil

`func (o *FactoryV3DTO) SetTotalFeesEthNil(b bool)`

 SetTotalFeesEthNil sets the value for TotalFeesEth to be an explicit nil

### UnsetTotalFeesEth
`func (o *FactoryV3DTO) UnsetTotalFeesEth()`

UnsetTotalFeesEth ensures that no value is present for TotalFeesEth, not even an explicit nil
### GetUntrackedVolumeUsd

`func (o *FactoryV3DTO) GetUntrackedVolumeUsd() string`

GetUntrackedVolumeUsd returns the UntrackedVolumeUsd field if non-nil, zero value otherwise.

### GetUntrackedVolumeUsdOk

`func (o *FactoryV3DTO) GetUntrackedVolumeUsdOk() (*string, bool)`

GetUntrackedVolumeUsdOk returns a tuple with the UntrackedVolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUntrackedVolumeUsd

`func (o *FactoryV3DTO) SetUntrackedVolumeUsd(v string)`

SetUntrackedVolumeUsd sets UntrackedVolumeUsd field to given value.

### HasUntrackedVolumeUsd

`func (o *FactoryV3DTO) HasUntrackedVolumeUsd() bool`

HasUntrackedVolumeUsd returns a boolean if a field has been set.

### SetUntrackedVolumeUsdNil

`func (o *FactoryV3DTO) SetUntrackedVolumeUsdNil(b bool)`

 SetUntrackedVolumeUsdNil sets the value for UntrackedVolumeUsd to be an explicit nil

### UnsetUntrackedVolumeUsd
`func (o *FactoryV3DTO) UnsetUntrackedVolumeUsd()`

UnsetUntrackedVolumeUsd ensures that no value is present for UntrackedVolumeUsd, not even an explicit nil
### GetTotalValueLockedUsd

`func (o *FactoryV3DTO) GetTotalValueLockedUsd() string`

GetTotalValueLockedUsd returns the TotalValueLockedUsd field if non-nil, zero value otherwise.

### GetTotalValueLockedUsdOk

`func (o *FactoryV3DTO) GetTotalValueLockedUsdOk() (*string, bool)`

GetTotalValueLockedUsdOk returns a tuple with the TotalValueLockedUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalValueLockedUsd

`func (o *FactoryV3DTO) SetTotalValueLockedUsd(v string)`

SetTotalValueLockedUsd sets TotalValueLockedUsd field to given value.

### HasTotalValueLockedUsd

`func (o *FactoryV3DTO) HasTotalValueLockedUsd() bool`

HasTotalValueLockedUsd returns a boolean if a field has been set.

### SetTotalValueLockedUsdNil

`func (o *FactoryV3DTO) SetTotalValueLockedUsdNil(b bool)`

 SetTotalValueLockedUsdNil sets the value for TotalValueLockedUsd to be an explicit nil

### UnsetTotalValueLockedUsd
`func (o *FactoryV3DTO) UnsetTotalValueLockedUsd()`

UnsetTotalValueLockedUsd ensures that no value is present for TotalValueLockedUsd, not even an explicit nil
### GetTotalValueLockedEth

`func (o *FactoryV3DTO) GetTotalValueLockedEth() string`

GetTotalValueLockedEth returns the TotalValueLockedEth field if non-nil, zero value otherwise.

### GetTotalValueLockedEthOk

`func (o *FactoryV3DTO) GetTotalValueLockedEthOk() (*string, bool)`

GetTotalValueLockedEthOk returns a tuple with the TotalValueLockedEth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalValueLockedEth

`func (o *FactoryV3DTO) SetTotalValueLockedEth(v string)`

SetTotalValueLockedEth sets TotalValueLockedEth field to given value.

### HasTotalValueLockedEth

`func (o *FactoryV3DTO) HasTotalValueLockedEth() bool`

HasTotalValueLockedEth returns a boolean if a field has been set.

### SetTotalValueLockedEthNil

`func (o *FactoryV3DTO) SetTotalValueLockedEthNil(b bool)`

 SetTotalValueLockedEthNil sets the value for TotalValueLockedEth to be an explicit nil

### UnsetTotalValueLockedEth
`func (o *FactoryV3DTO) UnsetTotalValueLockedEth()`

UnsetTotalValueLockedEth ensures that no value is present for TotalValueLockedEth, not even an explicit nil
### GetTotalValueLockedUsdUntracked

`func (o *FactoryV3DTO) GetTotalValueLockedUsdUntracked() string`

GetTotalValueLockedUsdUntracked returns the TotalValueLockedUsdUntracked field if non-nil, zero value otherwise.

### GetTotalValueLockedUsdUntrackedOk

`func (o *FactoryV3DTO) GetTotalValueLockedUsdUntrackedOk() (*string, bool)`

GetTotalValueLockedUsdUntrackedOk returns a tuple with the TotalValueLockedUsdUntracked field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalValueLockedUsdUntracked

`func (o *FactoryV3DTO) SetTotalValueLockedUsdUntracked(v string)`

SetTotalValueLockedUsdUntracked sets TotalValueLockedUsdUntracked field to given value.

### HasTotalValueLockedUsdUntracked

`func (o *FactoryV3DTO) HasTotalValueLockedUsdUntracked() bool`

HasTotalValueLockedUsdUntracked returns a boolean if a field has been set.

### SetTotalValueLockedUsdUntrackedNil

`func (o *FactoryV3DTO) SetTotalValueLockedUsdUntrackedNil(b bool)`

 SetTotalValueLockedUsdUntrackedNil sets the value for TotalValueLockedUsdUntracked to be an explicit nil

### UnsetTotalValueLockedUsdUntracked
`func (o *FactoryV3DTO) UnsetTotalValueLockedUsdUntracked()`

UnsetTotalValueLockedUsdUntracked ensures that no value is present for TotalValueLockedUsdUntracked, not even an explicit nil
### GetTotalValueLockedEthUntracked

`func (o *FactoryV3DTO) GetTotalValueLockedEthUntracked() string`

GetTotalValueLockedEthUntracked returns the TotalValueLockedEthUntracked field if non-nil, zero value otherwise.

### GetTotalValueLockedEthUntrackedOk

`func (o *FactoryV3DTO) GetTotalValueLockedEthUntrackedOk() (*string, bool)`

GetTotalValueLockedEthUntrackedOk returns a tuple with the TotalValueLockedEthUntracked field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalValueLockedEthUntracked

`func (o *FactoryV3DTO) SetTotalValueLockedEthUntracked(v string)`

SetTotalValueLockedEthUntracked sets TotalValueLockedEthUntracked field to given value.

### HasTotalValueLockedEthUntracked

`func (o *FactoryV3DTO) HasTotalValueLockedEthUntracked() bool`

HasTotalValueLockedEthUntracked returns a boolean if a field has been set.

### SetTotalValueLockedEthUntrackedNil

`func (o *FactoryV3DTO) SetTotalValueLockedEthUntrackedNil(b bool)`

 SetTotalValueLockedEthUntrackedNil sets the value for TotalValueLockedEthUntracked to be an explicit nil

### UnsetTotalValueLockedEthUntracked
`func (o *FactoryV3DTO) UnsetTotalValueLockedEthUntracked()`

UnsetTotalValueLockedEthUntracked ensures that no value is present for TotalValueLockedEthUntracked, not even an explicit nil
### GetOwner

`func (o *FactoryV3DTO) GetOwner() string`

GetOwner returns the Owner field if non-nil, zero value otherwise.

### GetOwnerOk

`func (o *FactoryV3DTO) GetOwnerOk() (*string, bool)`

GetOwnerOk returns a tuple with the Owner field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOwner

`func (o *FactoryV3DTO) SetOwner(v string)`

SetOwner sets Owner field to given value.

### HasOwner

`func (o *FactoryV3DTO) HasOwner() bool`

HasOwner returns a boolean if a field has been set.

### SetOwnerNil

`func (o *FactoryV3DTO) SetOwnerNil(b bool)`

 SetOwnerNil sets the value for Owner to be an explicit nil

### UnsetOwner
`func (o *FactoryV3DTO) UnsetOwner()`

UnsetOwner ensures that no value is present for Owner, not even an explicit nil
### GetVid

`func (o *FactoryV3DTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *FactoryV3DTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *FactoryV3DTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *FactoryV3DTO) HasVid() bool`

HasVid returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


