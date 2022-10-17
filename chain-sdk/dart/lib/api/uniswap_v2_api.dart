//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UniswapV2Api {
  UniswapV2Api([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// GetPools
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  Future<Response> chainsChainIdDappsUniswapv2PoolsCurrentGetWithHttpInfo(String chainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/uniswapv2/pools/current'
      .replaceAll('{chain_id}', chainId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// GetPools
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  Future<List<PairV2DTO>?> chainsChainIdDappsUniswapv2PoolsCurrentGet(String chainId,) async {
    final response = await chainsChainIdDappsUniswapv2PoolsCurrentGetWithHttpInfo(chainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PairV2DTO>') as List)
        .cast<PairV2DTO>()
        .toList();

    }
    return null;
  }

  /// GetSwaps
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  Future<Response> chainsChainIdDappsUniswapv2SwapsCurrentGetWithHttpInfo(String chainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/uniswapv2/swaps/current'
      .replaceAll('{chain_id}', chainId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// GetSwaps
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  Future<List<SwapV2DTO>?> chainsChainIdDappsUniswapv2SwapsCurrentGet(String chainId,) async {
    final response = await chainsChainIdDappsUniswapv2SwapsCurrentGetWithHttpInfo(chainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SwapV2DTO>') as List)
        .cast<SwapV2DTO>()
        .toList();

    }
    return null;
  }

  /// GetTokens
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  Future<Response> chainsChainIdDappsUniswapv2TokensCurrentGetWithHttpInfo(String chainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/uniswapv2/tokens/current'
      .replaceAll('{chain_id}', chainId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// GetTokens
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  Future<List<TokenV2DTO>?> chainsChainIdDappsUniswapv2TokensCurrentGet(String chainId,) async {
    final response = await chainsChainIdDappsUniswapv2TokensCurrentGetWithHttpInfo(chainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TokenV2DTO>') as List)
        .cast<TokenV2DTO>()
        .toList();

    }
    return null;
  }
}
