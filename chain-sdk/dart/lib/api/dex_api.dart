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

  /// Performs an HTTP 'GET /dapps/dex/batch/historical' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<Response> dappsDexBatchHistoricalGetWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/batch/historical';

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

  /// Parameters:
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<void> dappsDexBatchHistoricalGet({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await dappsDexBatchHistoricalGetWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /dapps/dex/orders/historical' operation and returns the [Response].
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
  /// * [String] tokenId:
  Future<Response> dappsDexOrdersHistoricalGetWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
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
  /// * [String] tokenId:
  Future<void> dappsDexOrdersHistoricalGet({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    final response = await dappsDexOrdersHistoricalGetWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, tokenId: tokenId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /dapps/dex/prices/historical' operation and returns the [Response].
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
  /// * [String] tokenId:
  Future<Response> dappsDexPricesHistoricalGetWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
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
  /// * [String] tokenId:
  Future<void> dappsDexPricesHistoricalGet({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    final response = await dappsDexPricesHistoricalGetWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, tokenId: tokenId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /dapps/dex/solution/historical' operation and returns the [Response].
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
  /// * [String] tokenId:
  Future<Response> dappsDexSolutionHistoricalGetWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/solution/historical';

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
  /// * [String] tokenId:
  Future<void> dappsDexSolutionHistoricalGet({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    final response = await dappsDexSolutionHistoricalGetWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, tokenId: tokenId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /dapps/dex/stats/historical' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<Response> dappsDexStatsHistoricalGetWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
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

  /// Parameters:
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<void> dappsDexStatsHistoricalGet({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await dappsDexStatsHistoricalGetWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /dapps/dex/tokens/historical' operation and returns the [Response].
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
  /// * [String] tokenId:
  Future<Response> dappsDexTokensHistoricalGetWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
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
  /// * [String] tokenId:
  Future<void> dappsDexTokensHistoricalGet({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    final response = await dappsDexTokensHistoricalGetWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, tokenId: tokenId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /dapps/dex/trades/historical' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<Response> dappsDexTradesHistoricalGetWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
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

  /// Parameters:
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<void> dappsDexTradesHistoricalGet({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await dappsDexTradesHistoricalGetWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /dapps/dex/users/historical' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<Response> dappsDexUsersHistoricalGetWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
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

  /// Parameters:
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<void> dappsDexUsersHistoricalGet({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await dappsDexUsersHistoricalGetWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /dapps/dex/withdraw/historical' operation and returns the [Response].
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
  /// * [String] tokenId:
  Future<Response> dappsDexWithdrawHistoricalGetWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/withdraw/historical';

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
  /// * [String] tokenId:
  Future<void> dappsDexWithdrawHistoricalGet({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    final response = await dappsDexWithdrawHistoricalGetWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, tokenId: tokenId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /dapps/dex/withdrawRequest/historical' operation and returns the [Response].
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
  /// * [String] tokenId:
  Future<Response> dappsDexWithdrawRequestHistoricalGetWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/withdrawRequest/historical';

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
  /// * [String] tokenId:
  Future<void> dappsDexWithdrawRequestHistoricalGet({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    final response = await dappsDexWithdrawRequestHistoricalGetWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, tokenId: tokenId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
