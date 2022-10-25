//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PoiApi {
  PoiApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /chains/{chain_id}/dapps/cow/poi/historical' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<Response> chainsChainIdDappsCowPoiHistoricalGetWithHttpInfo(String chainId, { int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/cow/poi/historical'
      .replaceAll('{chain_id}', chainId);

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
  /// * [String] chainId (required):
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<void> chainsChainIdDappsCowPoiHistoricalGet(String chainId, { int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await chainsChainIdDappsCowPoiHistoricalGetWithHttpInfo(chainId,  startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /chains/{chain_id}/dapps/curve/poi/historical' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<Response> chainsChainIdDappsCurvePoiHistoricalGetWithHttpInfo(String chainId, { int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/curve/poi/historical'
      .replaceAll('{chain_id}', chainId);

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
  /// * [String] chainId (required):
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<void> chainsChainIdDappsCurvePoiHistoricalGet(String chainId, { int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await chainsChainIdDappsCurvePoiHistoricalGetWithHttpInfo(chainId,  startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /chains/{chain_id}/dapps/dex/poi/historical' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<Response> chainsChainIdDappsDexPoiHistoricalGetWithHttpInfo(String chainId, { int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/dex/poi/historical'
      .replaceAll('{chain_id}', chainId);

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
  /// * [String] chainId (required):
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<void> chainsChainIdDappsDexPoiHistoricalGet(String chainId, { int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await chainsChainIdDappsDexPoiHistoricalGetWithHttpInfo(chainId,  startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /chains/{chain_id}/dapps/sushiswap/poi/historical' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<Response> chainsChainIdDappsSushiswapPoiHistoricalGetWithHttpInfo(String chainId, { int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/sushiswap/poi/historical'
      .replaceAll('{chain_id}', chainId);

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
  /// * [String] chainId (required):
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<void> chainsChainIdDappsSushiswapPoiHistoricalGet(String chainId, { int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await chainsChainIdDappsSushiswapPoiHistoricalGetWithHttpInfo(chainId,  startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /chains/{chain_id}/dapps/uniswapv2/poi/historical' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<Response> chainsChainIdDappsUniswapv2PoiHistoricalGetWithHttpInfo(String chainId, { int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/uniswapv2/poi/historical'
      .replaceAll('{chain_id}', chainId);

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
  /// * [String] chainId (required):
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<void> chainsChainIdDappsUniswapv2PoiHistoricalGet(String chainId, { int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await chainsChainIdDappsUniswapv2PoiHistoricalGetWithHttpInfo(chainId,  startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /chains/{chain_id}/dapps/uniswapv3/poi/historical' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<Response> chainsChainIdDappsUniswapv3PoiHistoricalGetWithHttpInfo(String chainId, { int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/uniswapv3/poi/historical'
      .replaceAll('{chain_id}', chainId);

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
  /// * [String] chainId (required):
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<void> chainsChainIdDappsUniswapv3PoiHistoricalGet(String chainId, { int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await chainsChainIdDappsUniswapv3PoiHistoricalGetWithHttpInfo(chainId,  startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
