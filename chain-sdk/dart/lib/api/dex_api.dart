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

  /// GetBatches (historical)
  ///
  /// Gets batches.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   
  ///
  /// * [int] endBlock:
  ///   
  ///
  /// * [DateTime] startDate:
  ///   
  ///
  /// * [DateTime] endDate:
  ///   
  Future<Response> dexGetBatchesHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/batches/historical';

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

  /// GetBatches (historical)
  ///
  /// Gets batches.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   
  ///
  /// * [int] endBlock:
  ///   
  ///
  /// * [DateTime] startDate:
  ///   
  ///
  /// * [DateTime] endDate:
  ///   
  Future<List<DexBatchDTO>?> dexGetBatchesHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await dexGetBatchesHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
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

  /// GetDeposits (historical)
  ///
  /// Gets deposits.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   
  ///
  /// * [int] endBlock:
  ///   
  ///
  /// * [DateTime] startDate:
  ///   
  ///
  /// * [DateTime] endDate:
  ///   
  ///
  /// * [String] tokenId:
  ///   
  Future<Response> dexGetDepositsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
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
    if (tokenId != null) {
      queryParams.addAll(_queryParams('', 'tokenId', tokenId));
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

  /// GetDeposits (historical)
  ///
  /// Gets deposits.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   
  ///
  /// * [int] endBlock:
  ///   
  ///
  /// * [DateTime] startDate:
  ///   
  ///
  /// * [DateTime] endDate:
  ///   
  ///
  /// * [String] tokenId:
  ///   
  Future<List<DexDepositDTO>?> dexGetDepositsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    final response = await dexGetDepositsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, tokenId: tokenId, );
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

  /// GetOrders (historical)
  ///
  /// Gets orders.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   
  ///
  /// * [int] endBlock:
  ///   
  ///
  /// * [DateTime] startDate:
  ///   
  ///
  /// * [DateTime] endDate:
  ///   
  ///
  /// * [String] tokenId:
  ///   
  Future<Response> dexGetOrdersHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
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
    if (tokenId != null) {
      queryParams.addAll(_queryParams('', 'tokenId', tokenId));
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

  /// GetOrders (historical)
  ///
  /// Gets orders.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   
  ///
  /// * [int] endBlock:
  ///   
  ///
  /// * [DateTime] startDate:
  ///   
  ///
  /// * [DateTime] endDate:
  ///   
  ///
  /// * [String] tokenId:
  ///   
  Future<List<DexOrderDTO>?> dexGetOrdersHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    final response = await dexGetOrdersHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, tokenId: tokenId, );
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

  /// GetPrices (historical)
  ///
  /// Gets prices.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   
  ///
  /// * [int] endBlock:
  ///   
  ///
  /// * [DateTime] startDate:
  ///   
  ///
  /// * [DateTime] endDate:
  ///   
  ///
  /// * [String] tokenId:
  ///   
  Future<Response> dexGetPricesHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
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
    if (tokenId != null) {
      queryParams.addAll(_queryParams('', 'tokenId', tokenId));
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

  /// GetPrices (historical)
  ///
  /// Gets prices.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   
  ///
  /// * [int] endBlock:
  ///   
  ///
  /// * [DateTime] startDate:
  ///   
  ///
  /// * [DateTime] endDate:
  ///   
  ///
  /// * [String] tokenId:
  ///   
  Future<List<DexPriceDTO>?> dexGetPricesHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    final response = await dexGetPricesHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, tokenId: tokenId, );
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

  /// GetSolutions (historical)
  ///
  /// Gets solutions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   
  ///
  /// * [int] endBlock:
  ///   
  ///
  /// * [DateTime] startDate:
  ///   
  ///
  /// * [DateTime] endDate:
  ///   
  ///
  /// * [String] tokenId:
  ///   
  Future<Response> dexGetSolutionsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
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
    if (tokenId != null) {
      queryParams.addAll(_queryParams('', 'tokenId', tokenId));
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

  /// GetSolutions (historical)
  ///
  /// Gets solutions.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   
  ///
  /// * [int] endBlock:
  ///   
  ///
  /// * [DateTime] startDate:
  ///   
  ///
  /// * [DateTime] endDate:
  ///   
  ///
  /// * [String] tokenId:
  ///   
  Future<List<DexSolutionDTO>?> dexGetSolutionsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    final response = await dexGetSolutionsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, tokenId: tokenId, );
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

  /// GetStats (historical)
  ///
  /// Gets stats.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   
  ///
  /// * [int] endBlock:
  ///   
  ///
  /// * [DateTime] startDate:
  ///   
  ///
  /// * [DateTime] endDate:
  ///   
  Future<Response> dexGetStatsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/stats/historical';

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

  /// GetStats (historical)
  ///
  /// Gets stats.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   
  ///
  /// * [int] endBlock:
  ///   
  ///
  /// * [DateTime] startDate:
  ///   
  ///
  /// * [DateTime] endDate:
  ///   
  Future<List<DexStatsDTO>?> dexGetStatsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await dexGetStatsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
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

  /// GetTokens (historical) 🔥
  ///
  /// Gets tokens.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   
  ///
  /// * [int] endBlock:
  ///   
  ///
  /// * [DateTime] startDate:
  ///   
  ///
  /// * [DateTime] endDate:
  ///   
  ///
  /// * [String] tokenId:
  ///   
  Future<Response> dexGetTokensHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
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
    if (tokenId != null) {
      queryParams.addAll(_queryParams('', 'tokenId', tokenId));
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

  /// GetTokens (historical) 🔥
  ///
  /// Gets tokens.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   
  ///
  /// * [int] endBlock:
  ///   
  ///
  /// * [DateTime] startDate:
  ///   
  ///
  /// * [DateTime] endDate:
  ///   
  ///
  /// * [String] tokenId:
  ///   
  Future<List<DexTokenDTO>?> dexGetTokensHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    final response = await dexGetTokensHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, tokenId: tokenId, );
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

  /// GetTrades (historical) 🔥
  ///
  /// Gets trades.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   
  ///
  /// * [int] endBlock:
  ///   
  ///
  /// * [DateTime] startDate:
  ///   
  ///
  /// * [DateTime] endDate:
  ///   
  Future<Response> dexGetTradesHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
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

  /// GetTrades (historical) 🔥
  ///
  /// Gets trades.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   
  ///
  /// * [int] endBlock:
  ///   
  ///
  /// * [DateTime] startDate:
  ///   
  ///
  /// * [DateTime] endDate:
  ///   
  Future<List<DexTradeDTO>?> dexGetTradesHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await dexGetTradesHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
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

  /// GetUsers (historical)
  ///
  /// Gets users.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   
  ///
  /// * [int] endBlock:
  ///   
  ///
  /// * [DateTime] startDate:
  ///   
  ///
  /// * [DateTime] endDate:
  ///   
  Future<Response> dexGetUsersHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
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

  /// GetUsers (historical)
  ///
  /// Gets users.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   
  ///
  /// * [int] endBlock:
  ///   
  ///
  /// * [DateTime] startDate:
  ///   
  ///
  /// * [DateTime] endDate:
  ///   
  Future<List<DexUserDTO>?> dexGetUsersHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await dexGetUsersHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
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

  /// GetWithdraws (historical)
  ///
  /// Gets withdraws.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   
  ///
  /// * [int] endBlock:
  ///   
  ///
  /// * [DateTime] startDate:
  ///   
  ///
  /// * [DateTime] endDate:
  ///   
  ///
  /// * [String] tokenId:
  ///   
  Future<Response> dexGetWithdrawsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
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
    if (tokenId != null) {
      queryParams.addAll(_queryParams('', 'tokenId', tokenId));
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

  /// GetWithdraws (historical)
  ///
  /// Gets withdraws.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   
  ///
  /// * [int] endBlock:
  ///   
  ///
  /// * [DateTime] startDate:
  ///   
  ///
  /// * [DateTime] endDate:
  ///   
  ///
  /// * [String] tokenId:
  ///   
  Future<List<DexWithdrawDTO>?> dexGetWithdrawsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    final response = await dexGetWithdrawsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, tokenId: tokenId, );
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

  /// GetWithdrawsRequests (historical)
  ///
  /// Gets withdraws requests.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   
  ///
  /// * [int] endBlock:
  ///   
  ///
  /// * [DateTime] startDate:
  ///   
  ///
  /// * [DateTime] endDate:
  ///   
  ///
  /// * [String] tokenId:
  ///   
  Future<Response> dexGetWithdrawsRequestsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/withdrawsRequests/historical';

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
    if (tokenId != null) {
      queryParams.addAll(_queryParams('', 'tokenId', tokenId));
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

  /// GetWithdrawsRequests (historical)
  ///
  /// Gets withdraws requests.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   
  ///
  /// * [int] endBlock:
  ///   
  ///
  /// * [DateTime] startDate:
  ///   
  ///
  /// * [DateTime] endDate:
  ///   
  ///
  /// * [String] tokenId:
  ///   
  Future<List<DexWithdrawRequestDTO>?> dexGetWithdrawsRequestsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    final response = await dexGetWithdrawsRequestsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, tokenId: tokenId, );
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
}
