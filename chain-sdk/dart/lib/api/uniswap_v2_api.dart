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

  /// Bundles (historical)
  ///
  /// Gets bundles.
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
  Future<Response> uniswapV2GetBundlesHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv2/bundles/historical-manual';

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

  /// Bundles (historical)
  ///
  /// Gets bundles.
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
  Future<List<UniswapV2BundleV2DTO>?> uniswapV2GetBundlesHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await uniswapV2GetBundlesHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV2BundleV2DTO>') as List)
        .cast<UniswapV2BundleV2DTO>()
        .toList();

    }
    return null;
  }

  /// Burns (historical)
  ///
  /// Gets burns.
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
  Future<Response> uniswapV2GetBurnsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv2/burns/historical-manual';

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

  /// Burns (historical)
  ///
  /// Gets burns.
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
  Future<List<UniswapV2BurnV2DTO>?> uniswapV2GetBurnsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV2GetBurnsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV2BurnV2DTO>') as List)
        .cast<UniswapV2BurnV2DTO>()
        .toList();

    }
    return null;
  }

  /// DayData (historical)
  ///
  /// Gets uniswapv2 day data.
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
  Future<Response> uniswapV2GetDayDataHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv2/dayData/historical-manual';

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

  /// DayData (historical)
  ///
  /// Gets uniswapv2 day data.
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
  Future<List<UniswapV2UniswapDayDataV2DTO>?> uniswapV2GetDayDataHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await uniswapV2GetDayDataHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV2UniswapDayDataV2DTO>') as List)
        .cast<UniswapV2UniswapDayDataV2DTO>()
        .toList();

    }
    return null;
  }

  /// Factory (historical)
  ///
  /// Gets factory.
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
  Future<Response> uniswapV2GetFactoryHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv2/factory/historical-manual';

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

  /// Factory (historical)
  ///
  /// Gets factory.
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
  Future<List<UniswapV2UniswapFactoryV2DTO>?> uniswapV2GetFactoryHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await uniswapV2GetFactoryHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV2UniswapFactoryV2DTO>') as List)
        .cast<UniswapV2UniswapFactoryV2DTO>()
        .toList();

    }
    return null;
  }

  /// LiquidityPositions (historical)
  ///
  /// Gets liquidity positions.
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
  Future<Response> uniswapV2GetLiquidityPositionsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv2/liquidityPositions/historical-manual';

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

  /// LiquidityPositions (historical)
  ///
  /// Gets liquidity positions.
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
  Future<List<UniswapV2LiquidityPositionV2DTO>?> uniswapV2GetLiquidityPositionsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV2GetLiquidityPositionsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV2LiquidityPositionV2DTO>') as List)
        .cast<UniswapV2LiquidityPositionV2DTO>()
        .toList();

    }
    return null;
  }

  /// LiquidityPositionsSnapshots (historical)
  ///
  /// Gets liquidity positions snapshots.
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
  Future<Response> uniswapV2GetLiquidityPositionsSnapshotsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv2/liquidityPositionsSnapshots/historical-manual';

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

  /// LiquidityPositionsSnapshots (historical)
  ///
  /// Gets liquidity positions snapshots.
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
  Future<List<UniswapV2LiquidityPositionSnapshotV2DTO>?> uniswapV2GetLiquidityPositionsSnapshotsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV2GetLiquidityPositionsSnapshotsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV2LiquidityPositionSnapshotV2DTO>') as List)
        .cast<UniswapV2LiquidityPositionSnapshotV2DTO>()
        .toList();

    }
    return null;
  }

  /// Mints (historical)
  ///
  /// Gets mints.
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
  Future<Response> uniswapV2GetMintsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv2/mints/historical-manual';

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

  /// Mints (historical)
  ///
  /// Gets mints.
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
  Future<List<UniswapV2MintV2DTO>?> uniswapV2GetMintsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV2GetMintsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV2MintV2DTO>') as List)
        .cast<UniswapV2MintV2DTO>()
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
  Future<Response> uniswapV2GetPoolsCurrentWithHttpInfo({ String? filterPoolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv2/pools/current';

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
  Future<List<UniswapV2PairV2DTO>?> uniswapV2GetPoolsCurrent({ String? filterPoolId, }) async {
    final response = await uniswapV2GetPoolsCurrentWithHttpInfo( filterPoolId: filterPoolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV2PairV2DTO>') as List)
        .cast<UniswapV2PairV2DTO>()
        .toList();

    }
    return null;
  }

  /// PoolsDayData (historical)
  ///
  /// Gets pools day data.
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
  Future<Response> uniswapV2GetPoolsDayDataHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv2/poolsDayData/historical-manual';

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

  /// PoolsDayData (historical)
  ///
  /// Gets pools day data.
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
  Future<List<UniswapV2PairDayDataV2DTO>?> uniswapV2GetPoolsDayDataHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV2GetPoolsDayDataHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV2PairDayDataV2DTO>') as List)
        .cast<UniswapV2PairDayDataV2DTO>()
        .toList();

    }
    return null;
  }

  /// Pools (historical) 🔥
  ///
  /// Gets pools.
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
  Future<Response> uniswapV2GetPoolsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv2/pools/historical-manual';

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

  /// Pools (historical) 🔥
  ///
  /// Gets pools.
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
  Future<List<UniswapV2PairV2DTO>?> uniswapV2GetPoolsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV2GetPoolsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV2PairV2DTO>') as List)
        .cast<UniswapV2PairV2DTO>()
        .toList();

    }
    return null;
  }

  /// PoolsHourData (historical)
  ///
  /// Gets pools tracked each our.
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
  Future<Response> uniswapV2GetPoolsHourDataHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv2/poolsHourData/historical-manual';

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

  /// PoolsHourData (historical)
  ///
  /// Gets pools tracked each our.
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
  Future<List<UniswapV2PairHourDataV2DTO>?> uniswapV2GetPoolsHourDataHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV2GetPoolsHourDataHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV2PairHourDataV2DTO>') as List)
        .cast<UniswapV2PairHourDataV2DTO>()
        .toList();

    }
    return null;
  }

  /// Swaps (current) 🔥
  ///
  /// Gets swaps.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> uniswapV2GetSwapsCurrentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv2/swaps/current';

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

  /// Swaps (current) 🔥
  ///
  /// Gets swaps.
  Future<List<UniswapV2SwapV2DTO>?> uniswapV2GetSwapsCurrent() async {
    final response = await uniswapV2GetSwapsCurrentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV2SwapV2DTO>') as List)
        .cast<UniswapV2SwapV2DTO>()
        .toList();

    }
    return null;
  }

  /// Swaps (historical) 🔥
  ///
  /// Gets swaps.
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
  Future<Response> uniswapV2GetSwapsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv2/swaps/historical-manual';

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

  /// Swaps (historical) 🔥
  ///
  /// Gets swaps.
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
  Future<List<UniswapV2SwapV2DTO>?> uniswapV2GetSwapsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV2GetSwapsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV2SwapV2DTO>') as List)
        .cast<UniswapV2SwapV2DTO>()
        .toList();

    }
    return null;
  }

  /// Tokens (current) 🔥
  ///
  /// Gets tokens.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> uniswapV2GetTokensCurrentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv2/tokens/current';

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

  /// Tokens (current) 🔥
  ///
  /// Gets tokens.
  Future<List<UniswapV2TokenV2DTO>?> uniswapV2GetTokensCurrent() async {
    final response = await uniswapV2GetTokensCurrentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV2TokenV2DTO>') as List)
        .cast<UniswapV2TokenV2DTO>()
        .toList();

    }
    return null;
  }

  /// TokensDayData (historical)
  ///
  /// Gets tokens day data.
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
  Future<Response> uniswapV2GetTokensDayDataHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv2/tokensDayData/historical-manual';

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

  /// TokensDayData (historical)
  ///
  /// Gets tokens day data.
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
  Future<List<UniswapV2TokenDayDataV2DTO>?> uniswapV2GetTokensDayDataHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    final response = await uniswapV2GetTokensDayDataHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, tokenId: tokenId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV2TokenDayDataV2DTO>') as List)
        .cast<UniswapV2TokenDayDataV2DTO>()
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
  Future<Response> uniswapV2GetTokensHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv2/tokens/historical-manual';

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
  Future<List<UniswapV2TokenV2DTO>?> uniswapV2GetTokensHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    final response = await uniswapV2GetTokensHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, tokenId: tokenId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV2TokenV2DTO>') as List)
        .cast<UniswapV2TokenV2DTO>()
        .toList();

    }
    return null;
  }

  /// Transactions (historical)
  ///
  /// Gets transactions.
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
  Future<Response> uniswapV2GetTransactionsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv2/transactions/historical-manual';

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

  /// Transactions (historical)
  ///
  /// Gets transactions.
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
  Future<List<UniswapV2TransactionV2DTO>?> uniswapV2GetTransactionsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await uniswapV2GetTransactionsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV2TransactionV2DTO>') as List)
        .cast<UniswapV2TransactionV2DTO>()
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
  Future<Response> uniswapV2GetUsersHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv2/users/historical-manual';

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
  Future<List<UniswapV2UserV2DTO>?> uniswapV2GetUsersHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await uniswapV2GetUsersHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV2UserV2DTO>') as List)
        .cast<UniswapV2UserV2DTO>()
        .toList();

    }
    return null;
  }
}
