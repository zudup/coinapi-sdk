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

  /// BundleV3s (historical) 🔥
  ///
  /// Gets bundlev3s.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   
  Future<Response> uniswapV3GetBundleV3sHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/bundlev3s/historical';

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
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
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

  /// BundleV3s (historical) 🔥
  ///
  /// Gets bundlev3s.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   
  Future<List<UniswapV3BundleV3DTO>?> uniswapV3GetBundleV3sHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    final response = await uniswapV3GetBundleV3sHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, );
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

  /// BurnV3s (historical) 🔥
  ///
  /// Gets burnv3s.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Transaction hash + '#' + index in mints Transaction array.
  ///
  /// * [String] pool:
  ///   Pool position is within.
  ///
  /// * [String] token0:
  ///   Reference to token0 as stored in pool contract.
  ///
  /// * [String] token1:
  ///   Reference to token1 as stored in pool contract.
  Future<Response> uniswapV3GetBurnV3sHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? pool, String? token0, String? token1, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/burnv3s/historical';

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
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (pool != null) {
      queryParams.addAll(_queryParams('', 'pool', pool));
    }
    if (token0 != null) {
      queryParams.addAll(_queryParams('', 'token_0', token0));
    }
    if (token1 != null) {
      queryParams.addAll(_queryParams('', 'token_1', token1));
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

  /// BurnV3s (historical) 🔥
  ///
  /// Gets burnv3s.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Transaction hash + '#' + index in mints Transaction array.
  ///
  /// * [String] pool:
  ///   Pool position is within.
  ///
  /// * [String] token0:
  ///   Reference to token0 as stored in pool contract.
  ///
  /// * [String] token1:
  ///   Reference to token1 as stored in pool contract.
  Future<List<UniswapV3BurnV3DTO>?> uniswapV3GetBurnV3sHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? pool, String? token0, String? token1, }) async {
    final response = await uniswapV3GetBurnV3sHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, pool: pool, token0: token0, token1: token1, );
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

  /// FactoryV3s (historical) 🔥
  ///
  /// Gets factoryv3s.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Factory address.
  Future<Response> uniswapV3GetFactoryV3sHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/factoryv3s/historical';

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
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
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

  /// FactoryV3s (historical) 🔥
  ///
  /// Gets factoryv3s.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Factory address.
  Future<List<UniswapV3FactoryV3DTO>?> uniswapV3GetFactoryV3sHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    final response = await uniswapV3GetFactoryV3sHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, );
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

  /// MintV3s (historical) 🔥
  ///
  /// Gets mintv3s.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Transaction hash + '#' + index in mints Transaction array.
  ///
  /// * [String] pool:
  ///   Pool address.
  ///
  /// * [String] token0:
  ///   Reference to token0 as stored in pool contract.
  ///
  /// * [String] token1:
  ///   Reference to token1 as stored in pool contract.
  Future<Response> uniswapV3GetMintV3sHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? pool, String? token0, String? token1, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/mintv3s/historical';

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
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (pool != null) {
      queryParams.addAll(_queryParams('', 'pool', pool));
    }
    if (token0 != null) {
      queryParams.addAll(_queryParams('', 'token_0', token0));
    }
    if (token1 != null) {
      queryParams.addAll(_queryParams('', 'token_1', token1));
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

  /// MintV3s (historical) 🔥
  ///
  /// Gets mintv3s.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Transaction hash + '#' + index in mints Transaction array.
  ///
  /// * [String] pool:
  ///   Pool address.
  ///
  /// * [String] token0:
  ///   Reference to token0 as stored in pool contract.
  ///
  /// * [String] token1:
  ///   Reference to token1 as stored in pool contract.
  Future<List<UniswapV3MintV3DTO>?> uniswapV3GetMintV3sHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? pool, String? token0, String? token1, }) async {
    final response = await uniswapV3GetMintV3sHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, pool: pool, token0: token0, token1: token1, );
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

  /// PoolDayDataV3s (historical) 🔥
  ///
  /// Gets pooldaydatav3s.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
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
  /// * [String] id:
  ///
  /// * [String] pool:
  Future<Response> uniswapV3GetPoolDayDataV3sHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? pool, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/pooldaydatav3s/historical';

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
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (pool != null) {
      queryParams.addAll(_queryParams('', 'pool', pool));
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

  /// PoolDayDataV3s (historical) 🔥
  ///
  /// Gets pooldaydatav3s.
  ///
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
  /// * [String] id:
  ///
  /// * [String] pool:
  Future<List<UniswapV3PoolDayDataV3DTO>?> uniswapV3GetPoolDayDataV3sHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? pool, }) async {
    final response = await uniswapV3GetPoolDayDataV3sHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, pool: pool, );
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

  /// PoolHourDataV3s (historical) 🔥
  ///
  /// Gets poolhourdatav3s.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
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
  /// * [String] id:
  ///
  /// * [String] pool:
  Future<Response> uniswapV3GetPoolHourDataV3sHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? pool, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/poolhourdatav3s/historical';

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
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (pool != null) {
      queryParams.addAll(_queryParams('', 'pool', pool));
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

  /// PoolHourDataV3s (historical) 🔥
  ///
  /// Gets poolhourdatav3s.
  ///
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
  /// * [String] id:
  ///
  /// * [String] pool:
  Future<List<UniswapV3PoolHourDataV3DTO>?> uniswapV3GetPoolHourDataV3sHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? pool, }) async {
    final response = await uniswapV3GetPoolHourDataV3sHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, pool: pool, );
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

  /// PoolV3s (historical) 🔥
  ///
  /// Gets poolv3s.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Pool address.
  ///
  /// * [String] token0:
  ///   Reference to token0 as stored in pool contract.
  ///
  /// * [String] token1:
  ///   Reference to token1 as stored in pool contract.
  Future<Response> uniswapV3GetPoolV3sHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? token0, String? token1, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/poolv3s/historical';

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
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (token0 != null) {
      queryParams.addAll(_queryParams('', 'token_0', token0));
    }
    if (token1 != null) {
      queryParams.addAll(_queryParams('', 'token_1', token1));
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

  /// PoolV3s (historical) 🔥
  ///
  /// Gets poolv3s.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Pool address.
  ///
  /// * [String] token0:
  ///   Reference to token0 as stored in pool contract.
  ///
  /// * [String] token1:
  ///   Reference to token1 as stored in pool contract.
  Future<List<UniswapV3PoolV3DTO>?> uniswapV3GetPoolV3sHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? token0, String? token1, }) async {
    final response = await uniswapV3GetPoolV3sHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, token0: token0, token1: token1, );
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

  /// PositionSnapshotV3s (historical) 🔥
  ///
  /// Gets positionsnapshotv3s.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
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
  /// * [String] id:
  ///
  /// * [String] pool:
  Future<Response> uniswapV3GetPositionSnapshotV3sHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? pool, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/positionsnapshotv3s/historical';

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
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (pool != null) {
      queryParams.addAll(_queryParams('', 'pool', pool));
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

  /// PositionSnapshotV3s (historical) 🔥
  ///
  /// Gets positionsnapshotv3s.
  ///
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
  /// * [String] id:
  ///
  /// * [String] pool:
  Future<List<UniswapV3PositionSnapshotV3DTO>?> uniswapV3GetPositionSnapshotV3sHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? pool, }) async {
    final response = await uniswapV3GetPositionSnapshotV3sHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, pool: pool, );
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

  /// PositionV3s (historical) 🔥
  ///
  /// Gets positionv3s.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   NFT token identifier.
  ///
  /// * [String] pool:
  ///   Pool position is within.
  ///
  /// * [String] token0:
  ///   Reference to token0 as stored in pair contract.
  ///
  /// * [String] token1:
  ///   Reference to token1 as stored in pair contract.
  Future<Response> uniswapV3GetPositionV3sHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? pool, String? token0, String? token1, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/positionv3s/historical';

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
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (pool != null) {
      queryParams.addAll(_queryParams('', 'pool', pool));
    }
    if (token0 != null) {
      queryParams.addAll(_queryParams('', 'token_0', token0));
    }
    if (token1 != null) {
      queryParams.addAll(_queryParams('', 'token_1', token1));
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

  /// PositionV3s (historical) 🔥
  ///
  /// Gets positionv3s.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   NFT token identifier.
  ///
  /// * [String] pool:
  ///   Pool position is within.
  ///
  /// * [String] token0:
  ///   Reference to token0 as stored in pair contract.
  ///
  /// * [String] token1:
  ///   Reference to token1 as stored in pair contract.
  Future<List<UniswapV3PositionV3DTO>?> uniswapV3GetPositionV3sHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? pool, String? token0, String? token1, }) async {
    final response = await uniswapV3GetPositionV3sHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, pool: pool, token0: token0, token1: token1, );
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

  /// SwapV3s (historical) 🔥
  ///
  /// Gets swapv3s.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Identifier, format: transaction hash + \"#\" + index in swaps Transaction array.
  ///
  /// * [String] pool:
  ///   Pool swap occured within.
  ///
  /// * [String] token0:
  ///   Reference to token0 as stored in pair contract.
  ///
  /// * [String] token1:
  ///   Reference to token1 as stored in pair contract.
  Future<Response> uniswapV3GetSwapV3sHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? pool, String? token0, String? token1, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/swapv3s/historical';

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
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (pool != null) {
      queryParams.addAll(_queryParams('', 'pool', pool));
    }
    if (token0 != null) {
      queryParams.addAll(_queryParams('', 'token_0', token0));
    }
    if (token1 != null) {
      queryParams.addAll(_queryParams('', 'token_1', token1));
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

  /// SwapV3s (historical) 🔥
  ///
  /// Gets swapv3s.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Identifier, format: transaction hash + \"#\" + index in swaps Transaction array.
  ///
  /// * [String] pool:
  ///   Pool swap occured within.
  ///
  /// * [String] token0:
  ///   Reference to token0 as stored in pair contract.
  ///
  /// * [String] token1:
  ///   Reference to token1 as stored in pair contract.
  Future<List<UniswapV3SwapV3DTO>?> uniswapV3GetSwapV3sHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? pool, String? token0, String? token1, }) async {
    final response = await uniswapV3GetSwapV3sHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, pool: pool, token0: token0, token1: token1, );
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

  /// TickDayDataV3s (historical) 🔥
  ///
  /// Gets tickdaydatav3s.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
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
  /// * [String] id:
  ///
  /// * [String] pool:
  Future<Response> uniswapV3GetTickDayDataV3sHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? pool, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/tickdaydatav3s/historical';

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
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (pool != null) {
      queryParams.addAll(_queryParams('', 'pool', pool));
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

  /// TickDayDataV3s (historical) 🔥
  ///
  /// Gets tickdaydatav3s.
  ///
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
  /// * [String] id:
  ///
  /// * [String] pool:
  Future<List<UniswapV3TickDayDataV3DTO>?> uniswapV3GetTickDayDataV3sHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? pool, }) async {
    final response = await uniswapV3GetTickDayDataV3sHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, pool: pool, );
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

  /// TickV3s (historical) 🔥
  ///
  /// Gets tickv3s.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
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
  /// * [String] id:
  ///
  /// * [String] pool:
  Future<Response> uniswapV3GetTickV3sHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? pool, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/tickv3s/historical';

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
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (pool != null) {
      queryParams.addAll(_queryParams('', 'pool', pool));
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

  /// TickV3s (historical) 🔥
  ///
  /// Gets tickv3s.
  ///
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
  /// * [String] id:
  ///
  /// * [String] pool:
  Future<List<UniswapV3TickV3DTO>?> uniswapV3GetTickV3sHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? pool, }) async {
    final response = await uniswapV3GetTickV3sHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, pool: pool, );
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

  /// TokenHourDataV3s (historical) 🔥
  ///
  /// Gets tokenhourdatav3s.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Token address concatendated with date.
  Future<Response> uniswapV3GetTokenHourDataV3sHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/tokenhourdatav3s/historical';

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
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
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

  /// TokenHourDataV3s (historical) 🔥
  ///
  /// Gets tokenhourdatav3s.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Token address concatendated with date.
  Future<List<UniswapV3TokenHourDataV3DTO>?> uniswapV3GetTokenHourDataV3sHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    final response = await uniswapV3GetTokenHourDataV3sHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, );
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

  /// TokenV3DayDatas (historical) 🔥
  ///
  /// Gets tokenv3daydatas.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Token address concatendated with date.
  Future<Response> uniswapV3GetTokenV3DayDatasHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/tokenv3daydatas/historical';

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
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
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

  /// TokenV3DayDatas (historical) 🔥
  ///
  /// Gets tokenv3daydatas.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Token address concatendated with date.
  Future<List<UniswapV3TokenV3DayDataDTO>?> uniswapV3GetTokenV3DayDatasHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    final response = await uniswapV3GetTokenV3DayDatasHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, );
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

  /// TokenV3s (historical) 🔥
  ///
  /// Gets tokenv3s.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Token address.
  ///
  /// * [String] symbol:
  ///   Token symbol.
  ///
  /// * [String] name:
  ///   Token name.
  Future<Response> uniswapV3GetTokenV3sHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? symbol, String? name, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/tokenv3s/historical';

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
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (symbol != null) {
      queryParams.addAll(_queryParams('', 'symbol', symbol));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
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

  /// TokenV3s (historical) 🔥
  ///
  /// Gets tokenv3s.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Token address.
  ///
  /// * [String] symbol:
  ///   Token symbol.
  ///
  /// * [String] name:
  ///   Token name.
  Future<List<UniswapV3TokenV3DTO>?> uniswapV3GetTokenV3sHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? symbol, String? name, }) async {
    final response = await uniswapV3GetTokenV3sHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, symbol: symbol, name: name, );
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

  /// TransactionV3s (historical) 🔥
  ///
  /// Gets transactionv3s.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Transaction hash.
  Future<Response> uniswapV3GetTransactionV3sHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/transactionv3s/historical';

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
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
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

  /// TransactionV3s (historical) 🔥
  ///
  /// Gets transactionv3s.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Transaction hash.
  Future<List<UniswapV3TransactionV3DTO>?> uniswapV3GetTransactionV3sHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    final response = await uniswapV3GetTransactionV3sHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UniswapV3TransactionV3DTO>') as List)
        .cast<UniswapV3TransactionV3DTO>()
        .toList();

    }
    return null;
  }

  /// UniswapDayDataV3s (historical) 🔥
  ///
  /// Gets uniswapdaydatav3s.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Timestamp rounded to current day by dividing by 86400.
  Future<Response> uniswapV3GetUniswapDayDataV3sHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/uniswapdaydatav3s/historical';

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
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
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

  /// UniswapDayDataV3s (historical) 🔥
  ///
  /// Gets uniswapdaydatav3s.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Timestamp rounded to current day by dividing by 86400.
  Future<List<UniswapV3UniswapDayDataV3DTO>?> uniswapV3GetUniswapDayDataV3sHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    final response = await uniswapV3GetUniswapDayDataV3sHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, );
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
}
