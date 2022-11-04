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

  /// Performs an HTTP 'GET /dapps/cow/orders/historical' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<Response> dappsCowOrdersHistoricalGetWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
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

  /// Parameters:
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<void> dappsCowOrdersHistoricalGet({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await dappsCowOrdersHistoricalGetWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /dapps/cow/settlement/historical' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<Response> dappsCowSettlementHistoricalGetWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/cow/settlement/historical';

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
  Future<void> dappsCowSettlementHistoricalGet({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await dappsCowSettlementHistoricalGetWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /dapps/cow/tokens/historical' operation and returns the [Response].
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
  Future<Response> dappsCowTokensHistoricalGetWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
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
  Future<void> dappsCowTokensHistoricalGet({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    final response = await dappsCowTokensHistoricalGetWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, tokenId: tokenId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /dapps/cow/trades/historical' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<Response> dappsCowTradesHistoricalGetWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
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

  /// Parameters:
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<void> dappsCowTradesHistoricalGet({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await dappsCowTradesHistoricalGetWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /dapps/cow/users/historical' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<Response> dappsCowUsersHistoricalGetWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
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

  /// Parameters:
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<void> dappsCowUsersHistoricalGet({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await dappsCowUsersHistoricalGetWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
