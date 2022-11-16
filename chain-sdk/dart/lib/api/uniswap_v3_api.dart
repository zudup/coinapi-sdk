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

  /// Bundles (current)
  ///
  /// Gets bundles.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> uniswapV3GetBundlesCurrentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/bundles/current';

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

  /// Bundles (current)
  ///
  /// Gets bundles.
  Future<List<UniswapV3BundleV3DTO>?> uniswapV3GetBundlesCurrent() async {
    final response = await uniswapV3GetBundlesCurrentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV3BundleV3DTO>') as List)
        .cast<UniswapV3BundleV3DTO>()
        .toList();

    }
    return null;
  }

  /// Burns (current)
  ///
  /// Gets burns.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filterPoolId:
  Future<Response> uniswapV3GetBurnsCurrentWithHttpInfo({ String? filterPoolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/burns/current';

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

  /// Burns (current)
  ///
  /// Gets burns.
  ///
  /// Parameters:
  ///
  /// * [String] filterPoolId:
  Future<List<UniswapV3BurnV3DTO>?> uniswapV3GetBurnsCurrent({ String? filterPoolId, }) async {
    final response = await uniswapV3GetBurnsCurrentWithHttpInfo( filterPoolId: filterPoolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV3BurnV3DTO>') as List)
        .cast<UniswapV3BurnV3DTO>()
        .toList();

    }
    return null;
  }

  /// DayData (current)
  ///
  /// Gets uniswapv3 day data.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> uniswapV3GetDayDataCurrentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/dayData/current';

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

  /// DayData (current)
  ///
  /// Gets uniswapv3 day data.
  Future<List<UniswapV3UniswapDayDataV3DTO>?> uniswapV3GetDayDataCurrent() async {
    final response = await uniswapV3GetDayDataCurrentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV3UniswapDayDataV3DTO>') as List)
        .cast<UniswapV3UniswapDayDataV3DTO>()
        .toList();

    }
    return null;
  }

  /// Factory (current)
  ///
  /// Gets factory.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> uniswapV3GetFactoryCurrentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/factory/current';

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

  /// Factory (current)
  ///
  /// Gets factory.
  Future<List<UniswapV3FactoryV3DTO>?> uniswapV3GetFactoryCurrent() async {
    final response = await uniswapV3GetFactoryCurrentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV3FactoryV3DTO>') as List)
        .cast<UniswapV3FactoryV3DTO>()
        .toList();

    }
    return null;
  }

  /// Mints (current)
  ///
  /// Gets mints.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filterPoolId:
  Future<Response> uniswapV3GetMintsCurrentWithHttpInfo({ String? filterPoolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/mints/current';

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

  /// Mints (current)
  ///
  /// Gets mints.
  ///
  /// Parameters:
  ///
  /// * [String] filterPoolId:
  Future<List<UniswapV3MintV3DTO>?> uniswapV3GetMintsCurrent({ String? filterPoolId, }) async {
    final response = await uniswapV3GetMintsCurrentWithHttpInfo( filterPoolId: filterPoolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV3MintV3DTO>') as List)
        .cast<UniswapV3MintV3DTO>()
        .toList();

    }
    return null;
  }

  /// Pools (current) 🔥
  ///
  /// Gets pools.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filterPoolId:
  Future<Response> uniswapV3GetPoolsCurrentWithHttpInfo({ String? filterPoolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/pools/current';

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

  /// Pools (current) 🔥
  ///
  /// Gets pools.
  ///
  /// Parameters:
  ///
  /// * [String] filterPoolId:
  Future<List<UniswapV3PoolV3DTO>?> uniswapV3GetPoolsCurrent({ String? filterPoolId, }) async {
    final response = await uniswapV3GetPoolsCurrentWithHttpInfo( filterPoolId: filterPoolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV3PoolV3DTO>') as List)
        .cast<UniswapV3PoolV3DTO>()
        .toList();

    }
    return null;
  }

  /// PoolsDayData (current)
  ///
  /// Gets pools day data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filterPoolId:
  Future<Response> uniswapV3GetPoolsDayDataCurrentWithHttpInfo({ String? filterPoolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/poolsDayData/current';

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

  /// PoolsDayData (current)
  ///
  /// Gets pools day data.
  ///
  /// Parameters:
  ///
  /// * [String] filterPoolId:
  Future<List<UniswapV3PoolDayDataV3DTO>?> uniswapV3GetPoolsDayDataCurrent({ String? filterPoolId, }) async {
    final response = await uniswapV3GetPoolsDayDataCurrentWithHttpInfo( filterPoolId: filterPoolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV3PoolDayDataV3DTO>') as List)
        .cast<UniswapV3PoolDayDataV3DTO>()
        .toList();

    }
    return null;
  }

  /// PoolsHourData (current)
  ///
  /// Gets pools hour data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filterPoolId:
  Future<Response> uniswapV3GetPoolsHourDataCurrentWithHttpInfo({ String? filterPoolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/poolsHourData/current';

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

  /// PoolsHourData (current)
  ///
  /// Gets pools hour data.
  ///
  /// Parameters:
  ///
  /// * [String] filterPoolId:
  Future<List<UniswapV3PoolHourDataV3DTO>?> uniswapV3GetPoolsHourDataCurrent({ String? filterPoolId, }) async {
    final response = await uniswapV3GetPoolsHourDataCurrentWithHttpInfo( filterPoolId: filterPoolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV3PoolHourDataV3DTO>') as List)
        .cast<UniswapV3PoolHourDataV3DTO>()
        .toList();

    }
    return null;
  }

  /// Positions (current)
  ///
  /// Gets positions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filterPoolId:
  Future<Response> uniswapV3GetPositionsCurrentWithHttpInfo({ String? filterPoolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/positions/current';

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

  /// Positions (current)
  ///
  /// Gets positions.
  ///
  /// Parameters:
  ///
  /// * [String] filterPoolId:
  Future<List<UniswapV3PositionV3DTO>?> uniswapV3GetPositionsCurrent({ String? filterPoolId, }) async {
    final response = await uniswapV3GetPositionsCurrentWithHttpInfo( filterPoolId: filterPoolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV3PositionV3DTO>') as List)
        .cast<UniswapV3PositionV3DTO>()
        .toList();

    }
    return null;
  }

  /// PositionsSnapshots (current)
  ///
  /// Gets positions snapshots.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filterPoolId:
  Future<Response> uniswapV3GetPositionsSnapshotsCurrentWithHttpInfo({ String? filterPoolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/positionSnapshots/current';

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

  /// PositionsSnapshots (current)
  ///
  /// Gets positions snapshots.
  ///
  /// Parameters:
  ///
  /// * [String] filterPoolId:
  Future<List<UniswapV3PositionSnapshotV3DTO>?> uniswapV3GetPositionsSnapshotsCurrent({ String? filterPoolId, }) async {
    final response = await uniswapV3GetPositionsSnapshotsCurrentWithHttpInfo( filterPoolId: filterPoolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV3PositionSnapshotV3DTO>') as List)
        .cast<UniswapV3PositionSnapshotV3DTO>()
        .toList();

    }
    return null;
  }

  /// Swaps (current) 🔥
  ///
  /// Gets swaps.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filterPoolId:
  Future<Response> uniswapV3GetSwapsCurrentWithHttpInfo({ String? filterPoolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/swaps/current';

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

  /// Swaps (current) 🔥
  ///
  /// Gets swaps.
  ///
  /// Parameters:
  ///
  /// * [String] filterPoolId:
  Future<List<UniswapV3SwapV3DTO>?> uniswapV3GetSwapsCurrent({ String? filterPoolId, }) async {
    final response = await uniswapV3GetSwapsCurrentWithHttpInfo( filterPoolId: filterPoolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV3SwapV3DTO>') as List)
        .cast<UniswapV3SwapV3DTO>()
        .toList();

    }
    return null;
  }

  /// Ticks (current)
  ///
  /// Gets ticks.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filterPoolId:
  Future<Response> uniswapV3GetTicksCurrentWithHttpInfo({ String? filterPoolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/ticks/current';

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

  /// Ticks (current)
  ///
  /// Gets ticks.
  ///
  /// Parameters:
  ///
  /// * [String] filterPoolId:
  Future<List<UniswapV3TickV3DTO>?> uniswapV3GetTicksCurrent({ String? filterPoolId, }) async {
    final response = await uniswapV3GetTicksCurrentWithHttpInfo( filterPoolId: filterPoolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV3TickV3DTO>') as List)
        .cast<UniswapV3TickV3DTO>()
        .toList();

    }
    return null;
  }

  /// TicksDayData (current)
  ///
  /// Gets ticks day data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filterPoolId:
  Future<Response> uniswapV3GetTicksDayDataCurrentWithHttpInfo({ String? filterPoolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/ticksDayData/current';

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

  /// TicksDayData (current)
  ///
  /// Gets ticks day data.
  ///
  /// Parameters:
  ///
  /// * [String] filterPoolId:
  Future<List<UniswapV3TickDayDataV3DTO>?> uniswapV3GetTicksDayDataCurrent({ String? filterPoolId, }) async {
    final response = await uniswapV3GetTicksDayDataCurrentWithHttpInfo( filterPoolId: filterPoolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV3TickDayDataV3DTO>') as List)
        .cast<UniswapV3TickDayDataV3DTO>()
        .toList();

    }
    return null;
  }

  /// Tokens (current) 🔥
  ///
  /// Gets tokens.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filterTokenId:
  Future<Response> uniswapV3GetTokensCurrentWithHttpInfo({ String? filterTokenId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/tokens/current';

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

  /// Tokens (current) 🔥
  ///
  /// Gets tokens.
  ///
  /// Parameters:
  ///
  /// * [String] filterTokenId:
  Future<List<UniswapV3TokenV3DTO>?> uniswapV3GetTokensCurrent({ String? filterTokenId, }) async {
    final response = await uniswapV3GetTokensCurrentWithHttpInfo( filterTokenId: filterTokenId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV3TokenV3DTO>') as List)
        .cast<UniswapV3TokenV3DTO>()
        .toList();

    }
    return null;
  }

  /// TokensDayData (current)
  ///
  /// Gets tokens day data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filterTokenId:
  Future<Response> uniswapV3GetTokensDayDataCurrentWithHttpInfo({ String? filterTokenId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/tokensDayData/current';

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

  /// TokensDayData (current)
  ///
  /// Gets tokens day data.
  ///
  /// Parameters:
  ///
  /// * [String] filterTokenId:
  Future<List<UniswapV3TokenV3DayDataDTO>?> uniswapV3GetTokensDayDataCurrent({ String? filterTokenId, }) async {
    final response = await uniswapV3GetTokensDayDataCurrentWithHttpInfo( filterTokenId: filterTokenId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV3TokenV3DayDataDTO>') as List)
        .cast<UniswapV3TokenV3DayDataDTO>()
        .toList();

    }
    return null;
  }

  /// TokensHourData (current)
  ///
  /// Gets tokens hour data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filterTokenId:
  Future<Response> uniswapV3GetTokensHourDataCurrentWithHttpInfo({ String? filterTokenId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/tokensHourData/current';

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

  /// TokensHourData (current)
  ///
  /// Gets tokens hour data.
  ///
  /// Parameters:
  ///
  /// * [String] filterTokenId:
  Future<List<UniswapV3TokenHourDataV3DTO>?> uniswapV3GetTokensHourDataCurrent({ String? filterTokenId, }) async {
    final response = await uniswapV3GetTokensHourDataCurrentWithHttpInfo( filterTokenId: filterTokenId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV3TokenHourDataV3DTO>') as List)
        .cast<UniswapV3TokenHourDataV3DTO>()
        .toList();

    }
    return null;
  }
}
