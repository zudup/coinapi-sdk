//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CowApi {
  CowApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// OrderDTOs (historical) 🔥
  ///
  /// Gets OrderDTOs.
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
  /// * [String] poolId:
  ///   
  Future<Response> cowGetOrderDTOsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/cow/OrderDTOs/historical';

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
    if (poolId != null) {
      queryParams.addAll(_queryParams('', 'poolId', poolId));
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

  /// OrderDTOs (historical) 🔥
  ///
  /// Gets OrderDTOs.
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
  /// * [String] poolId:
  ///   
  Future<List<CowOrderDTO>?> cowGetOrderDTOsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await cowGetOrderDTOsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CowOrderDTO>') as List)
        .cast<CowOrderDTO>()
        .toList();

    }
    return null;
  }

  /// Orders (historical)
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
  Future<Response> cowGetOrdersHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/cow/orders/historical';

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

  /// Orders (historical)
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
  Future<List<CowOrderDTO>?> cowGetOrdersHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await cowGetOrdersHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CowOrderDTO>') as List)
        .cast<CowOrderDTO>()
        .toList();

    }
    return null;
  }

  /// SettlementDTOs (historical) 🔥
  ///
  /// Gets SettlementDTOs.
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
  /// * [String] poolId:
  ///   
  Future<Response> cowGetSettlementDTOsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/cow/SettlementDTOs/historical';

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
    if (poolId != null) {
      queryParams.addAll(_queryParams('', 'poolId', poolId));
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

  /// SettlementDTOs (historical) 🔥
  ///
  /// Gets SettlementDTOs.
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
  /// * [String] poolId:
  ///   
  Future<List<CowSettlementDTO>?> cowGetSettlementDTOsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await cowGetSettlementDTOsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CowSettlementDTO>') as List)
        .cast<CowSettlementDTO>()
        .toList();

    }
    return null;
  }

  /// Settlements (historical)
  ///
  /// Gets settlements.
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
  Future<Response> cowGetSettlementsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/cow/settlements/historical';

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

  /// Settlements (historical)
  ///
  /// Gets settlements.
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
  Future<List<CowSettlementDTO>?> cowGetSettlementsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await cowGetSettlementsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CowSettlementDTO>') as List)
        .cast<CowSettlementDTO>()
        .toList();

    }
    return null;
  }

  /// TokenDTOs (historical) 🔥
  ///
  /// Gets TokenDTOs.
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
  /// * [String] poolId:
  ///   
  Future<Response> cowGetTokenDTOsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/cow/TokenDTOs/historical';

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
    if (poolId != null) {
      queryParams.addAll(_queryParams('', 'poolId', poolId));
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

  /// TokenDTOs (historical) 🔥
  ///
  /// Gets TokenDTOs.
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
  /// * [String] poolId:
  ///   
  Future<List<CowTokenDTO>?> cowGetTokenDTOsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await cowGetTokenDTOsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CowTokenDTO>') as List)
        .cast<CowTokenDTO>()
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
  Future<Response> cowGetTokensHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/cow/tokens/historical';

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

  /// Tokens (historical) 🔥
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
  Future<List<CowTokenDTO>?> cowGetTokensHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    final response = await cowGetTokensHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, tokenId: tokenId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CowTokenDTO>') as List)
        .cast<CowTokenDTO>()
        .toList();

    }
    return null;
  }

  /// TradeDTOs (historical) 🔥
  ///
  /// Gets TradeDTOs.
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
  /// * [String] poolId:
  ///   
  Future<Response> cowGetTradeDTOsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/cow/TradeDTOs/historical';

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
    if (poolId != null) {
      queryParams.addAll(_queryParams('', 'poolId', poolId));
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

  /// TradeDTOs (historical) 🔥
  ///
  /// Gets TradeDTOs.
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
  /// * [String] poolId:
  ///   
  Future<List<CowTradeDTO>?> cowGetTradeDTOsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await cowGetTradeDTOsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CowTradeDTO>') as List)
        .cast<CowTradeDTO>()
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
  Future<Response> cowGetTradesHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/cow/trades/historical';

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

  /// Trades (historical) 🔥
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
  Future<List<CowTradeDTO>?> cowGetTradesHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await cowGetTradesHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CowTradeDTO>') as List)
        .cast<CowTradeDTO>()
        .toList();

    }
    return null;
  }

  /// UserDTOs (historical) 🔥
  ///
  /// Gets UserDTOs.
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
  /// * [String] poolId:
  ///   
  Future<Response> cowGetUserDTOsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/cow/UserDTOs/historical';

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
    if (poolId != null) {
      queryParams.addAll(_queryParams('', 'poolId', poolId));
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

  /// UserDTOs (historical) 🔥
  ///
  /// Gets UserDTOs.
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
  /// * [String] poolId:
  ///   
  Future<List<CowUserDTO>?> cowGetUserDTOsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await cowGetUserDTOsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CowUserDTO>') as List)
        .cast<CowUserDTO>()
        .toList();

    }
    return null;
  }

  /// Users (historical)
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
  Future<Response> cowGetUsersHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/cow/users/historical';

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

  /// Users (historical)
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
  Future<List<CowUserDTO>?> cowGetUsersHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await cowGetUsersHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CowUserDTO>') as List)
        .cast<CowUserDTO>()
        .toList();

    }
    return null;
  }
}
