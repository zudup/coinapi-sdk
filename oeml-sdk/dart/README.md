# openapi
This section will provide necessary information about the `CoinAPI OEML REST API` protocol.


This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v1
- Build package: org.openapitools.codegen.languages.DartClientCodegen
For more information, please visit [https://www.coinapi.io](https://www.coinapi.io)

## Requirements

Dart 2.0 or later

## Installation & Usage

### Github
If this Dart package is published to Github, add the following dependency to your pubspec.yaml
```
dependencies:
  openapi:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
```

### Local
To use the package in your local drive, add the following dependency to your pubspec.yaml
```
dependencies:
  openapi:
    path: /path/to/openapi
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:openapi/api.dart';


var api_instance = BalancesApi();
var exchangeId = KRAKEN; // String | Filter the balances to the specific exchange.

try {
    var result = api_instance.v1BalancesGet(exchangeId);
    print(result);
} catch (e) {
    print("Exception when calling BalancesApi->v1BalancesGet: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:8080*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BalancesApi* | [**v1BalancesGet**](doc//BalancesApi.md#v1balancesget) | **GET** /v1/balances | Get balances
*OrdersApi* | [**v1OrdersCancelAllPost**](doc//OrdersApi.md#v1orderscancelallpost) | **POST** /v1/orders/cancel/all | Cancel all orders request
*OrdersApi* | [**v1OrdersCancelPost**](doc//OrdersApi.md#v1orderscancelpost) | **POST** /v1/orders/cancel | Cancel order request
*OrdersApi* | [**v1OrdersGet**](doc//OrdersApi.md#v1ordersget) | **GET** /v1/orders | Get open orders
*OrdersApi* | [**v1OrdersPost**](doc//OrdersApi.md#v1orderspost) | **POST** /v1/orders | Send new order
*OrdersApi* | [**v1OrdersStatusClientOrderIdGet**](doc//OrdersApi.md#v1ordersstatusclientorderidget) | **GET** /v1/orders/status/{client_order_id} | Get order execution report
*PositionsApi* | [**v1PositionsGet**](doc//PositionsApi.md#v1positionsget) | **GET** /v1/positions | Get open positions


## Documentation For Models

 - [Balance](doc//Balance.md)
 - [BalanceData](doc//BalanceData.md)
 - [Message](doc//Message.md)
 - [OrdSide](doc//OrdSide.md)
 - [OrdStatus](doc//OrdStatus.md)
 - [OrdType](doc//OrdType.md)
 - [OrderCancelAllRequest](doc//OrderCancelAllRequest.md)
 - [OrderCancelSingleRequest](doc//OrderCancelSingleRequest.md)
 - [OrderExecutionReport](doc//OrderExecutionReport.md)
 - [OrderExecutionReportAllOf](doc//OrderExecutionReportAllOf.md)
 - [OrderNewSingleRequest](doc//OrderNewSingleRequest.md)
 - [Position](doc//Position.md)
 - [PositionData](doc//PositionData.md)
 - [Severity](doc//Severity.md)
 - [TimeInForce](doc//TimeInForce.md)
 - [ValidationError](doc//ValidationError.md)


## Documentation For Authorization

 All endpoints do not require authorization.


## Author

support@coinapi.io

