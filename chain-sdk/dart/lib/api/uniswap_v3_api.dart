//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UniswapV3Api {
  UniswapV3Api([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// GetBundles
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  Future<Response> chainsChainIdDappsUniswapv3BundleCurrentGetWithHttpInfo(String chainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/uniswapv3/bundle/current'
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

  /// GetBundles
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  Future<List<BundleV3DTO>?> chainsChainIdDappsUniswapv3BundleCurrentGet(String chainId,) async {
    final response = await chainsChainIdDappsUniswapv3BundleCurrentGetWithHttpInfo(chainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<BundleV3DTO>') as List)
        .cast<BundleV3DTO>()
        .toList();

    }
    return null;
  }

  /// GetBurns
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  ///
  /// * [String] filterPoolId:
  ///   Filter pool id
  Future<Response> chainsChainIdDappsUniswapv3BurnsCurrentGetWithHttpInfo(String chainId, { String? filterPoolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/uniswapv3/burns/current'
      .replaceAll('{chain_id}', chainId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterPoolId != null) {
      queryParams.addAll(_queryParams('', 'filter_pool_id', filterPoolId));
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

  /// GetBurns
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  ///
  /// * [String] filterPoolId:
  ///   Filter pool id
  Future<List<BurnV3DTO>?> chainsChainIdDappsUniswapv3BurnsCurrentGet(String chainId, { String? filterPoolId, }) async {
    final response = await chainsChainIdDappsUniswapv3BurnsCurrentGetWithHttpInfo(chainId,  filterPoolId: filterPoolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<BurnV3DTO>') as List)
        .cast<BurnV3DTO>()
        .toList();

    }
    return null;
  }

  /// GetFactory
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  Future<Response> chainsChainIdDappsUniswapv3FactoryCurrentGetWithHttpInfo(String chainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/uniswapv3/factory/current'
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

  /// GetFactory
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  Future<List<FactoryV3DTO>?> chainsChainIdDappsUniswapv3FactoryCurrentGet(String chainId,) async {
    final response = await chainsChainIdDappsUniswapv3FactoryCurrentGetWithHttpInfo(chainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FactoryV3DTO>') as List)
        .cast<FactoryV3DTO>()
        .toList();

    }
    return null;
  }

  /// GetMints
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  ///
  /// * [String] filterPoolId:
  ///   Filter pool id
  Future<Response> chainsChainIdDappsUniswapv3MintsCurrentGetWithHttpInfo(String chainId, { String? filterPoolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/uniswapv3/mints/current'
      .replaceAll('{chain_id}', chainId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterPoolId != null) {
      queryParams.addAll(_queryParams('', 'filter_pool_id', filterPoolId));
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

  /// GetMints
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  ///
  /// * [String] filterPoolId:
  ///   Filter pool id
  Future<List<MintV3DTO>?> chainsChainIdDappsUniswapv3MintsCurrentGet(String chainId, { String? filterPoolId, }) async {
    final response = await chainsChainIdDappsUniswapv3MintsCurrentGetWithHttpInfo(chainId,  filterPoolId: filterPoolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MintV3DTO>') as List)
        .cast<MintV3DTO>()
        .toList();

    }
    return null;
  }

  /// GetPools
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  ///
  /// * [String] filterPoolId:
  ///   Filter pool id
  Future<Response> chainsChainIdDappsUniswapv3PoolsCurrentGetWithHttpInfo(String chainId, { String? filterPoolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/uniswapv3/pools/current'
      .replaceAll('{chain_id}', chainId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterPoolId != null) {
      queryParams.addAll(_queryParams('', 'filter_pool_id', filterPoolId));
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

  /// GetPools
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  ///
  /// * [String] filterPoolId:
  ///   Filter pool id
  Future<List<PoolV3DTO>?> chainsChainIdDappsUniswapv3PoolsCurrentGet(String chainId, { String? filterPoolId, }) async {
    final response = await chainsChainIdDappsUniswapv3PoolsCurrentGetWithHttpInfo(chainId,  filterPoolId: filterPoolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PoolV3DTO>') as List)
        .cast<PoolV3DTO>()
        .toList();

    }
    return null;
  }

  /// GetPoolsDayData
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  ///
  /// * [String] filterPoolId:
  ///   Filter pool id
  Future<Response> chainsChainIdDappsUniswapv3PoolsDayDataCurrentGetWithHttpInfo(String chainId, { String? filterPoolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/uniswapv3/poolsDayData/current'
      .replaceAll('{chain_id}', chainId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterPoolId != null) {
      queryParams.addAll(_queryParams('', 'filter_pool_id', filterPoolId));
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

  /// GetPoolsDayData
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  ///
  /// * [String] filterPoolId:
  ///   Filter pool id
  Future<List<PoolDayDataV3DTO>?> chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet(String chainId, { String? filterPoolId, }) async {
    final response = await chainsChainIdDappsUniswapv3PoolsDayDataCurrentGetWithHttpInfo(chainId,  filterPoolId: filterPoolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PoolDayDataV3DTO>') as List)
        .cast<PoolDayDataV3DTO>()
        .toList();

    }
    return null;
  }

  /// GetPoolsHourData
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  ///
  /// * [String] filterPoolId:
  ///   Filter pool id
  Future<Response> chainsChainIdDappsUniswapv3PoolsHourDataCurrentGetWithHttpInfo(String chainId, { String? filterPoolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/uniswapv3/poolsHourData/current'
      .replaceAll('{chain_id}', chainId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterPoolId != null) {
      queryParams.addAll(_queryParams('', 'filter_pool_id', filterPoolId));
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

  /// GetPoolsHourData
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  ///
  /// * [String] filterPoolId:
  ///   Filter pool id
  Future<List<PoolHourDataV3DTO>?> chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet(String chainId, { String? filterPoolId, }) async {
    final response = await chainsChainIdDappsUniswapv3PoolsHourDataCurrentGetWithHttpInfo(chainId,  filterPoolId: filterPoolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PoolHourDataV3DTO>') as List)
        .cast<PoolHourDataV3DTO>()
        .toList();

    }
    return null;
  }

  /// GetPositionSnapshot
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  ///
  /// * [String] filterPoolId:
  ///   Filter pool id
  Future<Response> chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGetWithHttpInfo(String chainId, { String? filterPoolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current'
      .replaceAll('{chain_id}', chainId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterPoolId != null) {
      queryParams.addAll(_queryParams('', 'filter_pool_id', filterPoolId));
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

  /// GetPositionSnapshot
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  ///
  /// * [String] filterPoolId:
  ///   Filter pool id
  Future<List<PositionSnapshotV3DTO>?> chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet(String chainId, { String? filterPoolId, }) async {
    final response = await chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGetWithHttpInfo(chainId,  filterPoolId: filterPoolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PositionSnapshotV3DTO>') as List)
        .cast<PositionSnapshotV3DTO>()
        .toList();

    }
    return null;
  }

  /// GetPositions
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  ///
  /// * [String] filterPoolId:
  ///   Filter pool id
  Future<Response> chainsChainIdDappsUniswapv3PositionsCurrentGetWithHttpInfo(String chainId, { String? filterPoolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/uniswapv3/positions/current'
      .replaceAll('{chain_id}', chainId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterPoolId != null) {
      queryParams.addAll(_queryParams('', 'filter_pool_id', filterPoolId));
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

  /// GetPositions
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  ///
  /// * [String] filterPoolId:
  ///   Filter pool id
  Future<List<PositionV3DTO>?> chainsChainIdDappsUniswapv3PositionsCurrentGet(String chainId, { String? filterPoolId, }) async {
    final response = await chainsChainIdDappsUniswapv3PositionsCurrentGetWithHttpInfo(chainId,  filterPoolId: filterPoolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PositionV3DTO>') as List)
        .cast<PositionV3DTO>()
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
  ///
  /// * [String] filterPoolId:
  ///   Filter pool id
  Future<Response> chainsChainIdDappsUniswapv3SwapsCurrentGetWithHttpInfo(String chainId, { String? filterPoolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/uniswapv3/swaps/current'
      .replaceAll('{chain_id}', chainId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterPoolId != null) {
      queryParams.addAll(_queryParams('', 'filter_pool_id', filterPoolId));
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

  /// GetSwaps
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  ///
  /// * [String] filterPoolId:
  ///   Filter pool id
  Future<List<SwapV3DTO>?> chainsChainIdDappsUniswapv3SwapsCurrentGet(String chainId, { String? filterPoolId, }) async {
    final response = await chainsChainIdDappsUniswapv3SwapsCurrentGetWithHttpInfo(chainId,  filterPoolId: filterPoolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SwapV3DTO>') as List)
        .cast<SwapV3DTO>()
        .toList();

    }
    return null;
  }

  /// GetTicks
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  ///
  /// * [String] filterPoolId:
  ///   Filter pool id
  Future<Response> chainsChainIdDappsUniswapv3TicksCurrentGetWithHttpInfo(String chainId, { String? filterPoolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/uniswapv3/ticks/current'
      .replaceAll('{chain_id}', chainId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterPoolId != null) {
      queryParams.addAll(_queryParams('', 'filter_pool_id', filterPoolId));
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

  /// GetTicks
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  ///
  /// * [String] filterPoolId:
  ///   Filter pool id
  Future<List<TickV3DTO>?> chainsChainIdDappsUniswapv3TicksCurrentGet(String chainId, { String? filterPoolId, }) async {
    final response = await chainsChainIdDappsUniswapv3TicksCurrentGetWithHttpInfo(chainId,  filterPoolId: filterPoolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TickV3DTO>') as List)
        .cast<TickV3DTO>()
        .toList();

    }
    return null;
  }

  /// GetTicksDayData
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  ///
  /// * [String] filterPoolId:
  ///   Filter pool id
  Future<Response> chainsChainIdDappsUniswapv3TicksDayDataCurrentGetWithHttpInfo(String chainId, { String? filterPoolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/uniswapv3/ticksDayData/current'
      .replaceAll('{chain_id}', chainId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterPoolId != null) {
      queryParams.addAll(_queryParams('', 'filter_pool_id', filterPoolId));
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

  /// GetTicksDayData
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  ///
  /// * [String] filterPoolId:
  ///   Filter pool id
  Future<List<TickDayDataV3DTO>?> chainsChainIdDappsUniswapv3TicksDayDataCurrentGet(String chainId, { String? filterPoolId, }) async {
    final response = await chainsChainIdDappsUniswapv3TicksDayDataCurrentGetWithHttpInfo(chainId,  filterPoolId: filterPoolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TickDayDataV3DTO>') as List)
        .cast<TickDayDataV3DTO>()
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
  ///
  /// * [String] filterTokenId:
  Future<Response> chainsChainIdDappsUniswapv3TokensCurrentGetWithHttpInfo(String chainId, { String? filterTokenId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/uniswapv3/tokens/current'
      .replaceAll('{chain_id}', chainId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterTokenId != null) {
      queryParams.addAll(_queryParams('', 'filter_token_id', filterTokenId));
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

  /// GetTokens
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  ///
  /// * [String] filterTokenId:
  Future<List<TokenV3DTO>?> chainsChainIdDappsUniswapv3TokensCurrentGet(String chainId, { String? filterTokenId, }) async {
    final response = await chainsChainIdDappsUniswapv3TokensCurrentGetWithHttpInfo(chainId,  filterTokenId: filterTokenId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TokenV3DTO>') as List)
        .cast<TokenV3DTO>()
        .toList();

    }
    return null;
  }

  /// GetTokensDayData
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  ///
  /// * [String] filterTokenId:
  Future<Response> chainsChainIdDappsUniswapv3TokensDayDataCurrentGetWithHttpInfo(String chainId, { String? filterTokenId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/uniswapv3/tokensDayData/current'
      .replaceAll('{chain_id}', chainId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterTokenId != null) {
      queryParams.addAll(_queryParams('', 'filter_token_id', filterTokenId));
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

  /// GetTokensDayData
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  ///
  /// * [String] filterTokenId:
  Future<List<TokenV3DayDataDTO>?> chainsChainIdDappsUniswapv3TokensDayDataCurrentGet(String chainId, { String? filterTokenId, }) async {
    final response = await chainsChainIdDappsUniswapv3TokensDayDataCurrentGetWithHttpInfo(chainId,  filterTokenId: filterTokenId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TokenV3DayDataDTO>') as List)
        .cast<TokenV3DayDataDTO>()
        .toList();

    }
    return null;
  }

  /// GetTokensHourData
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  ///
  /// * [String] filterTokenId:
  Future<Response> chainsChainIdDappsUniswapv3TokensHourDataCurrentGetWithHttpInfo(String chainId, { String? filterTokenId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/uniswapv3/tokensHourData/current'
      .replaceAll('{chain_id}', chainId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterTokenId != null) {
      queryParams.addAll(_queryParams('', 'filter_token_id', filterTokenId));
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

  /// GetTokensHourData
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  ///
  /// * [String] filterTokenId:
  Future<List<TokenHourDataV3DTO>?> chainsChainIdDappsUniswapv3TokensHourDataCurrentGet(String chainId, { String? filterTokenId, }) async {
    final response = await chainsChainIdDappsUniswapv3TokensHourDataCurrentGetWithHttpInfo(chainId,  filterTokenId: filterTokenId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TokenHourDataV3DTO>') as List)
        .cast<TokenHourDataV3DTO>()
        .toList();

    }
    return null;
  }

  /// GetUniswapDayData
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  Future<Response> chainsChainIdDappsUniswapv3UniswapDayDataCurrentGetWithHttpInfo(String chainId,) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current'
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

  /// GetUniswapDayData
  ///
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///   Chain id
  Future<List<UniswapDayDataV3DTO>?> chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet(String chainId,) async {
    final response = await chainsChainIdDappsUniswapv3UniswapDayDataCurrentGetWithHttpInfo(chainId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapDayDataV3DTO>') as List)
        .cast<UniswapDayDataV3DTO>()
        .toList();

    }
    return null;
  }
}
