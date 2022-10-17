/*
EMS - REST API

This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:    * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)   * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)   * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)     ### Endpoints <table>   <thead>     <tr>       <th>Deployment method</th>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Managed Cloud</td>       <td>Production</td>       <td>Use <a href=\"#ems-docs-sh\">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>     </tr>     <tr>       <td>Managed Cloud</td>       <td>Sandbox</td>       <td><code>https://ems-gateway-aws-eu-central-1-dev.coinapi.io/</code></td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Production</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Sandbox</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>   </tbody> </table>  ### Authentication If the software is deployed as `Self-Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls.  <br/><br/> If the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key` with the API Key  2. Query string parameter named `apikey` with the API Key  3. <a href=\"#certificate\">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.  #### Custom authorization header You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY` <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside> #### Query string authorization parameter You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all balances, then your query string should look like this:  <br/><br/> `GET /v1/balances?apikey=73034021-THIS-IS-SAMPLE-KEY` <aside class=\"notice\">Query string method may be more practical for development activities.</aside> 

API version: v1
Contact: support@coinapi.io
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
)

// OrderCancelSingleRequest Cancel single order request object.
type OrderCancelSingleRequest struct {
	// Exchange identifier used to identify the routing destination.
	ExchangeId string `json:"exchange_id"`
	// Unique identifier of the order assigned by the exchange or executing system. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
	ExchangeOrderId *string `json:"exchange_order_id,omitempty"`
	// The unique identifier of the order assigned by the client. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
	ClientOrderId *string `json:"client_order_id,omitempty"`
}

// NewOrderCancelSingleRequest instantiates a new OrderCancelSingleRequest object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewOrderCancelSingleRequest(exchangeId string) *OrderCancelSingleRequest {
	this := OrderCancelSingleRequest{}
	this.ExchangeId = exchangeId
	return &this
}

// NewOrderCancelSingleRequestWithDefaults instantiates a new OrderCancelSingleRequest object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewOrderCancelSingleRequestWithDefaults() *OrderCancelSingleRequest {
	this := OrderCancelSingleRequest{}
	return &this
}

// GetExchangeId returns the ExchangeId field value
func (o *OrderCancelSingleRequest) GetExchangeId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.ExchangeId
}

// GetExchangeIdOk returns a tuple with the ExchangeId field value
// and a boolean to check if the value has been set.
func (o *OrderCancelSingleRequest) GetExchangeIdOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.ExchangeId, true
}

// SetExchangeId sets field value
func (o *OrderCancelSingleRequest) SetExchangeId(v string) {
	o.ExchangeId = v
}

// GetExchangeOrderId returns the ExchangeOrderId field value if set, zero value otherwise.
func (o *OrderCancelSingleRequest) GetExchangeOrderId() string {
	if o == nil || o.ExchangeOrderId == nil {
		var ret string
		return ret
	}
	return *o.ExchangeOrderId
}

// GetExchangeOrderIdOk returns a tuple with the ExchangeOrderId field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *OrderCancelSingleRequest) GetExchangeOrderIdOk() (*string, bool) {
	if o == nil || o.ExchangeOrderId == nil {
		return nil, false
	}
	return o.ExchangeOrderId, true
}

// HasExchangeOrderId returns a boolean if a field has been set.
func (o *OrderCancelSingleRequest) HasExchangeOrderId() bool {
	if o != nil && o.ExchangeOrderId != nil {
		return true
	}

	return false
}

// SetExchangeOrderId gets a reference to the given string and assigns it to the ExchangeOrderId field.
func (o *OrderCancelSingleRequest) SetExchangeOrderId(v string) {
	o.ExchangeOrderId = &v
}

// GetClientOrderId returns the ClientOrderId field value if set, zero value otherwise.
func (o *OrderCancelSingleRequest) GetClientOrderId() string {
	if o == nil || o.ClientOrderId == nil {
		var ret string
		return ret
	}
	return *o.ClientOrderId
}

// GetClientOrderIdOk returns a tuple with the ClientOrderId field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *OrderCancelSingleRequest) GetClientOrderIdOk() (*string, bool) {
	if o == nil || o.ClientOrderId == nil {
		return nil, false
	}
	return o.ClientOrderId, true
}

// HasClientOrderId returns a boolean if a field has been set.
func (o *OrderCancelSingleRequest) HasClientOrderId() bool {
	if o != nil && o.ClientOrderId != nil {
		return true
	}

	return false
}

// SetClientOrderId gets a reference to the given string and assigns it to the ClientOrderId field.
func (o *OrderCancelSingleRequest) SetClientOrderId(v string) {
	o.ClientOrderId = &v
}

func (o OrderCancelSingleRequest) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["exchange_id"] = o.ExchangeId
	}
	if o.ExchangeOrderId != nil {
		toSerialize["exchange_order_id"] = o.ExchangeOrderId
	}
	if o.ClientOrderId != nil {
		toSerialize["client_order_id"] = o.ClientOrderId
	}
	return json.Marshal(toSerialize)
}

type NullableOrderCancelSingleRequest struct {
	value *OrderCancelSingleRequest
	isSet bool
}

func (v NullableOrderCancelSingleRequest) Get() *OrderCancelSingleRequest {
	return v.value
}

func (v *NullableOrderCancelSingleRequest) Set(val *OrderCancelSingleRequest) {
	v.value = val
	v.isSet = true
}

func (v NullableOrderCancelSingleRequest) IsSet() bool {
	return v.isSet
}

func (v *NullableOrderCancelSingleRequest) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableOrderCancelSingleRequest(val *OrderCancelSingleRequest) *NullableOrderCancelSingleRequest {
	return &NullableOrderCancelSingleRequest{value: val, isSet: true}
}

func (v NullableOrderCancelSingleRequest) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableOrderCancelSingleRequest) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


