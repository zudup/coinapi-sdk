# OnChainApi.DexApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dexGetBatchsHistorical**](DexApi.md#dexGetBatchsHistorical) | **GET** /dapps/dex/batchs/historical | Batchs (historical) 🔥
[**dexGetDepositsHistorical**](DexApi.md#dexGetDepositsHistorical) | **GET** /dapps/dex/deposits/historical | Deposits (historical) 🔥
[**dexGetOrdersHistorical**](DexApi.md#dexGetOrdersHistorical) | **GET** /dapps/dex/orders/historical | Orders (historical) 🔥
[**dexGetPricesHistorical**](DexApi.md#dexGetPricesHistorical) | **GET** /dapps/dex/prices/historical | Prices (historical) 🔥
[**dexGetSolutionsHistorical**](DexApi.md#dexGetSolutionsHistorical) | **GET** /dapps/dex/solutions/historical | Solutions (historical) 🔥
[**dexGetStatssHistorical**](DexApi.md#dexGetStatssHistorical) | **GET** /dapps/dex/statss/historical | Statss (historical) 🔥
[**dexGetTokensHistorical**](DexApi.md#dexGetTokensHistorical) | **GET** /dapps/dex/tokens/historical | Tokens (historical) 🔥
[**dexGetTradesHistorical**](DexApi.md#dexGetTradesHistorical) | **GET** /dapps/dex/trades/historical | Trades (historical) 🔥
[**dexGetUsersHistorical**](DexApi.md#dexGetUsersHistorical) | **GET** /dapps/dex/users/historical | Users (historical) 🔥
[**dexGetWithdrawRequestsHistorical**](DexApi.md#dexGetWithdrawRequestsHistorical) | **GET** /dapps/dex/withdrawrequests/historical | WithdrawRequests (historical) 🔥
[**dexGetWithdrawsHistorical**](DexApi.md#dexGetWithdrawsHistorical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical) 🔥



## dexGetBatchsHistorical

> [DexBatchDTO] dexGetBatchsHistorical(opts)

Batchs (historical) 🔥

Gets batchs.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.DexApi();
let opts = {
  'startBlock': 789, // Number | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  'endBlock': 789, // Number | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The end date of timeframe.
  'id': "id_example" // String | Identifier.
};
apiInstance.dexGetBatchsHistorical(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **Number**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **Date**| The end date of timeframe. | [optional] 
 **id** | **String**| Identifier. | [optional] 

### Return type

[**[DexBatchDTO]**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetDepositsHistorical

> [DexDepositDTO] dexGetDepositsHistorical(opts)

Deposits (historical) 🔥

Gets deposits.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.DexApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'id': "id_example", // String | 
  'user': "user_example" // String | 
};
apiInstance.dexGetDepositsHistorical(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **id** | **String**|  | [optional] 
 **user** | **String**|  | [optional] 

### Return type

[**[DexDepositDTO]**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetOrdersHistorical

> [DexOrderDTO] dexGetOrdersHistorical(opts)

Orders (historical) 🔥

Gets orders.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.DexApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'id': "id_example", // String | 
  'buyToken': "buyToken_example", // String | 
  'sellToken': "sellToken_example" // String | 
};
apiInstance.dexGetOrdersHistorical(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **id** | **String**|  | [optional] 
 **buyToken** | **String**|  | [optional] 
 **sellToken** | **String**|  | [optional] 

### Return type

[**[DexOrderDTO]**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetPricesHistorical

> [DexPriceDTO] dexGetPricesHistorical(opts)

Prices (historical) 🔥

Gets prices.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.DexApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'id': "id_example" // String | 
};
apiInstance.dexGetPricesHistorical(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **id** | **String**|  | [optional] 

### Return type

[**[DexPriceDTO]**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetSolutionsHistorical

> [DexSolutionDTO] dexGetSolutionsHistorical(opts)

Solutions (historical) 🔥

Gets solutions.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.DexApi();
let opts = {
  'startBlock': 789, // Number | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  'endBlock': 789, // Number | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The end date of timeframe.
  'id': "id_example" // String | 
};
apiInstance.dexGetSolutionsHistorical(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **Number**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **Date**| The end date of timeframe. | [optional] 
 **id** | **String**|  | [optional] 

### Return type

[**[DexSolutionDTO]**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetStatssHistorical

> [DexStatsDTO] dexGetStatssHistorical(opts)

Statss (historical) 🔥

Gets statss.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.DexApi();
let opts = {
  'startBlock': 789, // Number | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  'endBlock': 789, // Number | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The end date of timeframe.
  'id': "id_example" // String | 
};
apiInstance.dexGetStatssHistorical(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **Number**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **Date**| The end date of timeframe. | [optional] 
 **id** | **String**|  | [optional] 

### Return type

[**[DexStatsDTO]**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetTokensHistorical

> [DexTokenDTO] dexGetTokensHistorical(opts)

Tokens (historical) 🔥

Gets tokens.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.DexApi();
let opts = {
  'startBlock': 789, // Number | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  'endBlock': 789, // Number | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The end date of timeframe.
  'id': "id_example", // String | 
  'address': "address_example", // String | 
  'symbol': "symbol_example", // String | 
  'name': "name_example" // String | 
};
apiInstance.dexGetTokensHistorical(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **Number**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **Date**| The end date of timeframe. | [optional] 
 **id** | **String**|  | [optional] 
 **address** | **String**|  | [optional] 
 **symbol** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 

### Return type

[**[DexTokenDTO]**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetTradesHistorical

> [DexTradeDTO] dexGetTradesHistorical(opts)

Trades (historical) 🔥

Gets trades.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.DexApi();
let opts = {
  'startBlock': 789, // Number | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  'endBlock': 789, // Number | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The end date of timeframe.
  'id': "id_example", // String | 
  'buyToken': "buyToken_example", // String | 
  'sellToken': "sellToken_example" // String | 
};
apiInstance.dexGetTradesHistorical(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **Number**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **Date**| The end date of timeframe. | [optional] 
 **id** | **String**|  | [optional] 
 **buyToken** | **String**|  | [optional] 
 **sellToken** | **String**|  | [optional] 

### Return type

[**[DexTradeDTO]**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetUsersHistorical

> [DexUserDTO] dexGetUsersHistorical(opts)

Users (historical) 🔥

Gets users.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.DexApi();
let opts = {
  'startBlock': 789, // Number | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  'endBlock': 789, // Number | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The end date of timeframe.
  'id': "id_example" // String | 
};
apiInstance.dexGetUsersHistorical(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **Number**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **Date**| The end date of timeframe. | [optional] 
 **id** | **String**|  | [optional] 

### Return type

[**[DexUserDTO]**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetWithdrawRequestsHistorical

> [DexWithdrawRequestDTO] dexGetWithdrawRequestsHistorical(opts)

WithdrawRequests (historical) 🔥

Gets withdrawrequests.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.DexApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'id': "id_example", // String | 
  'user': "user_example" // String | 
};
apiInstance.dexGetWithdrawRequestsHistorical(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **id** | **String**|  | [optional] 
 **user** | **String**|  | [optional] 

### Return type

[**[DexWithdrawRequestDTO]**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetWithdrawsHistorical

> [DexWithdrawDTO] dexGetWithdrawsHistorical(opts)

Withdraws (historical) 🔥

Gets withdraws.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.DexApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'id': "id_example", // String | 
  'user': "user_example" // String | 
};
apiInstance.dexGetWithdrawsHistorical(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **id** | **String**|  | [optional] 
 **user** | **String**|  | [optional] 

### Return type

[**[DexWithdrawDTO]**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

