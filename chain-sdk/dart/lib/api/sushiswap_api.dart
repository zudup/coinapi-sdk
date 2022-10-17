//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SushiswapApi {
  SushiswapApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// GetPools
  ///
  /// Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  Future<Response> chainsChainIdDappsSushiswapPoolsCurrentGetWithHttpInfo(String chainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/sushiswap/pools/current'
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
  /// Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  Future<List<PairDTO>?> chainsChainIdDappsSushiswapPoolsCurrentGet(String chainId,) async {
    final response = await chainsChainIdDappsSushiswapPoolsCurrentGetWithHttpInfo(chainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PairDTO>') as List)
        .cast<PairDTO>()
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
  Future<Response> chainsChainIdDappsSushiswapSwapsCurrentGetWithHttpInfo(String chainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/sushiswap/swaps/current'
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
  Future<List<SwapDTO>?> chainsChainIdDappsSushiswapSwapsCurrentGet(String chainId,) async {
    final response = await chainsChainIdDappsSushiswapSwapsCurrentGetWithHttpInfo(chainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SwapDTO>') as List)
        .cast<SwapDTO>()
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
  Future<Response> chainsChainIdDappsSushiswapTokensCurrentGetWithHttpInfo(String chainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/sushiswap/tokens/current'
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
  Future<List<TokenDTO>?> chainsChainIdDappsSushiswapTokensCurrentGet(String chainId,) async {
    final response = await chainsChainIdDappsSushiswapTokensCurrentGetWithHttpInfo(chainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TokenDTO>') as List)
        .cast<TokenDTO>()
        .toList();

    }
    return null;
  }
}
