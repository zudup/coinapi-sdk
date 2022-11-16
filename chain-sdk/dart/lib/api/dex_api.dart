//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DexApi {
  DexApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Batchs (historical) 🔥
  ///
  /// Gets batchs.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Identifier.
  Future<Response> dexGetBatchsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/batchs/historical';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startBlock != null) {
      queryParams.addAll(_queryParams('', 'startBlock', startBlock));
    }
    if (endBlock != null) {
      queryParams.addAll(_queryParams('', 'endBlock', endBlock));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Batchs (historical) 🔥
  ///
  /// Gets batchs.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Identifier.
  Future<List<DexBatchDTO>?> dexGetBatchsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    final response = await dexGetBatchsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexBatchDTO>') as List)
        .cast<DexBatchDTO>()
        .toList();

    }
    return null;
  }

  /// Deposits (historical) 🔥
  ///
  /// Gets deposits.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  ///
  /// * [String] id:
  ///
  /// * [String] user:
  Future<Response> dexGetDepositsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? user, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/deposits/historical';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startBlock != null) {
      queryParams.addAll(_queryParams('', 'startBlock', startBlock));
    }
    if (endBlock != null) {
      queryParams.addAll(_queryParams('', 'endBlock', endBlock));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (user != null) {
      queryParams.addAll(_queryParams('', 'user', user));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Deposits (historical) 🔥
  ///
  /// Gets deposits.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  ///
  /// * [String] id:
  ///
  /// * [String] user:
  Future<List<DexDepositDTO>?> dexGetDepositsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? user, }) async {
    final response = await dexGetDepositsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, user: user, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexDepositDTO>') as List)
        .cast<DexDepositDTO>()
        .toList();

    }
    return null;
  }

  /// Orders (historical) 🔥
  ///
  /// Gets orders.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  ///
  /// * [String] id:
  ///
  /// * [String] buyToken:
  ///
  /// * [String] sellToken:
  Future<Response> dexGetOrdersHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? buyToken, String? sellToken, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/orders/historical';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startBlock != null) {
      queryParams.addAll(_queryParams('', 'startBlock', startBlock));
    }
    if (endBlock != null) {
      queryParams.addAll(_queryParams('', 'endBlock', endBlock));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (buyToken != null) {
      queryParams.addAll(_queryParams('', 'buy_token', buyToken));
    }
    if (sellToken != null) {
      queryParams.addAll(_queryParams('', 'sell_token', sellToken));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Orders (historical) 🔥
  ///
  /// Gets orders.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  ///
  /// * [String] id:
  ///
  /// * [String] buyToken:
  ///
  /// * [String] sellToken:
  Future<List<DexOrderDTO>?> dexGetOrdersHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? buyToken, String? sellToken, }) async {
    final response = await dexGetOrdersHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, buyToken: buyToken, sellToken: sellToken, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexOrderDTO>') as List)
        .cast<DexOrderDTO>()
        .toList();

    }
    return null;
  }

  /// Prices (historical) 🔥
  ///
  /// Gets prices.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  ///
  /// * [String] id:
  Future<Response> dexGetPricesHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/prices/historical';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startBlock != null) {
      queryParams.addAll(_queryParams('', 'startBlock', startBlock));
    }
    if (endBlock != null) {
      queryParams.addAll(_queryParams('', 'endBlock', endBlock));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Prices (historical) 🔥
  ///
  /// Gets prices.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  ///
  /// * [String] id:
  Future<List<DexPriceDTO>?> dexGetPricesHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    final response = await dexGetPricesHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexPriceDTO>') as List)
        .cast<DexPriceDTO>()
        .toList();

    }
    return null;
  }

  /// Solutions (historical) 🔥
  ///
  /// Gets solutions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   
  Future<Response> dexGetSolutionsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/solutions/historical';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startBlock != null) {
      queryParams.addAll(_queryParams('', 'startBlock', startBlock));
    }
    if (endBlock != null) {
      queryParams.addAll(_queryParams('', 'endBlock', endBlock));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Solutions (historical) 🔥
  ///
  /// Gets solutions.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   
  Future<List<DexSolutionDTO>?> dexGetSolutionsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    final response = await dexGetSolutionsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexSolutionDTO>') as List)
        .cast<DexSolutionDTO>()
        .toList();

    }
    return null;
  }

  /// Statss (historical) 🔥
  ///
  /// Gets statss.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   
  Future<Response> dexGetStatssHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/statss/historical';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startBlock != null) {
      queryParams.addAll(_queryParams('', 'startBlock', startBlock));
    }
    if (endBlock != null) {
      queryParams.addAll(_queryParams('', 'endBlock', endBlock));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Statss (historical) 🔥
  ///
  /// Gets statss.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   
  Future<List<DexStatsDTO>?> dexGetStatssHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    final response = await dexGetStatssHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexStatsDTO>') as List)
        .cast<DexStatsDTO>()
        .toList();

    }
    return null;
  }

  /// Tokens (historical) 🔥
  ///
  /// Gets tokens.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] address:
  ///   
  ///
  /// * [String] symbol:
  ///   
  ///
  /// * [String] name:
  ///   
  Future<Response> dexGetTokensHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? address, String? symbol, String? name, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/tokens/historical';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startBlock != null) {
      queryParams.addAll(_queryParams('', 'startBlock', startBlock));
    }
    if (endBlock != null) {
      queryParams.addAll(_queryParams('', 'endBlock', endBlock));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (address != null) {
      queryParams.addAll(_queryParams('', 'address', address));
    }
    if (symbol != null) {
      queryParams.addAll(_queryParams('', 'symbol', symbol));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Tokens (historical) 🔥
  ///
  /// Gets tokens.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] address:
  ///   
  ///
  /// * [String] symbol:
  ///   
  ///
  /// * [String] name:
  ///   
  Future<List<DexTokenDTO>?> dexGetTokensHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? address, String? symbol, String? name, }) async {
    final response = await dexGetTokensHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, address: address, symbol: symbol, name: name, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexTokenDTO>') as List)
        .cast<DexTokenDTO>()
        .toList();

    }
    return null;
  }

  /// Trades (historical) 🔥
  ///
  /// Gets trades.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] buyToken:
  ///   
  ///
  /// * [String] sellToken:
  ///   
  Future<Response> dexGetTradesHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? buyToken, String? sellToken, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/trades/historical';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startBlock != null) {
      queryParams.addAll(_queryParams('', 'startBlock', startBlock));
    }
    if (endBlock != null) {
      queryParams.addAll(_queryParams('', 'endBlock', endBlock));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (buyToken != null) {
      queryParams.addAll(_queryParams('', 'buy_token', buyToken));
    }
    if (sellToken != null) {
      queryParams.addAll(_queryParams('', 'sell_token', sellToken));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Trades (historical) 🔥
  ///
  /// Gets trades.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] buyToken:
  ///   
  ///
  /// * [String] sellToken:
  ///   
  Future<List<DexTradeDTO>?> dexGetTradesHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? buyToken, String? sellToken, }) async {
    final response = await dexGetTradesHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, buyToken: buyToken, sellToken: sellToken, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexTradeDTO>') as List)
        .cast<DexTradeDTO>()
        .toList();

    }
    return null;
  }

  /// Users (historical) 🔥
  ///
  /// Gets users.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   
  Future<Response> dexGetUsersHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/users/historical';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startBlock != null) {
      queryParams.addAll(_queryParams('', 'startBlock', startBlock));
    }
    if (endBlock != null) {
      queryParams.addAll(_queryParams('', 'endBlock', endBlock));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Users (historical) 🔥
  ///
  /// Gets users.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   
  Future<List<DexUserDTO>?> dexGetUsersHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    final response = await dexGetUsersHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexUserDTO>') as List)
        .cast<DexUserDTO>()
        .toList();

    }
    return null;
  }

  /// WithdrawRequests (historical) 🔥
  ///
  /// Gets withdrawrequests.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  ///
  /// * [String] id:
  ///
  /// * [String] user:
  Future<Response> dexGetWithdrawRequestsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? user, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/withdrawrequests/historical';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startBlock != null) {
      queryParams.addAll(_queryParams('', 'startBlock', startBlock));
    }
    if (endBlock != null) {
      queryParams.addAll(_queryParams('', 'endBlock', endBlock));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (user != null) {
      queryParams.addAll(_queryParams('', 'user', user));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// WithdrawRequests (historical) 🔥
  ///
  /// Gets withdrawrequests.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  ///
  /// * [String] id:
  ///
  /// * [String] user:
  Future<List<DexWithdrawRequestDTO>?> dexGetWithdrawRequestsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? user, }) async {
    final response = await dexGetWithdrawRequestsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, user: user, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexWithdrawRequestDTO>') as List)
        .cast<DexWithdrawRequestDTO>()
        .toList();

    }
    return null;
  }

  /// Withdraws (historical) 🔥
  ///
  /// Gets withdraws.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  ///
  /// * [String] id:
  ///
  /// * [String] user:
  Future<Response> dexGetWithdrawsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? user, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/withdraws/historical';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startBlock != null) {
      queryParams.addAll(_queryParams('', 'startBlock', startBlock));
    }
    if (endBlock != null) {
      queryParams.addAll(_queryParams('', 'endBlock', endBlock));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (user != null) {
      queryParams.addAll(_queryParams('', 'user', user));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Withdraws (historical) 🔥
  ///
  /// Gets withdraws.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  ///
  /// * [String] id:
  ///
  /// * [String] user:
  Future<List<DexWithdrawDTO>?> dexGetWithdrawsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? user, }) async {
    final response = await dexGetWithdrawsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, user: user, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexWithdrawDTO>') as List)
        .cast<DexWithdrawDTO>()
        .toList();

    }
    return null;
  }
}
