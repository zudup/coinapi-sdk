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

  /// BundleV3DTOs (historical) 🔥
  ///
  /// Gets BundleV3DTOs.
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
  Future<Response> uniswapV3GetBundleV3DTOsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/BundleV3DTOs/historical';

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

  /// BundleV3DTOs (historical) 🔥
  ///
  /// Gets BundleV3DTOs.
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
  Future<List<UniswapV3BundleV3DTO>?> uniswapV3GetBundleV3DTOsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV3GetBundleV3DTOsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
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
  Future<Response> uniswapV3GetBundlesHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/bundles/historical';

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
  Future<List<UniswapV3BundleV3DTO>?> uniswapV3GetBundlesHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await uniswapV3GetBundlesHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
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

  /// BurnV3DTOs (historical) 🔥
  ///
  /// Gets BurnV3DTOs.
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
  Future<Response> uniswapV3GetBurnV3DTOsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/BurnV3DTOs/historical';

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

  /// BurnV3DTOs (historical) 🔥
  ///
  /// Gets BurnV3DTOs.
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
  Future<List<UniswapV3BurnV3DTO>?> uniswapV3GetBurnV3DTOsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV3GetBurnV3DTOsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
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
  Future<Response> uniswapV3GetBurnsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/burns/historical';

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
  Future<List<UniswapV3BurnV3DTO>?> uniswapV3GetBurnsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV3GetBurnsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
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

  /// DayData (historical)
  ///
  /// Gets uniswapv3 day data.
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
  Future<Response> uniswapV3GetDayDataHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/dayData/historical';

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
  /// Gets uniswapv3 day data.
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
  Future<List<UniswapV3UniswapDayDataV3DTO>?> uniswapV3GetDayDataHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await uniswapV3GetDayDataHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
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
  Future<Response> uniswapV3GetFactoryHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/factory/historical';

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
  Future<List<UniswapV3FactoryV3DTO>?> uniswapV3GetFactoryHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await uniswapV3GetFactoryHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
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

  /// FactoryV3DTOs (historical) 🔥
  ///
  /// Gets FactoryV3DTOs.
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
  Future<Response> uniswapV3GetFactoryV3DTOsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/FactoryV3DTOs/historical';

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

  /// FactoryV3DTOs (historical) 🔥
  ///
  /// Gets FactoryV3DTOs.
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
  Future<List<UniswapV3FactoryV3DTO>?> uniswapV3GetFactoryV3DTOsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV3GetFactoryV3DTOsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
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

  /// MintV3DTOs (historical) 🔥
  ///
  /// Gets MintV3DTOs.
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
  Future<Response> uniswapV3GetMintV3DTOsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/MintV3DTOs/historical';

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

  /// MintV3DTOs (historical) 🔥
  ///
  /// Gets MintV3DTOs.
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
  Future<List<UniswapV3MintV3DTO>?> uniswapV3GetMintV3DTOsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV3GetMintV3DTOsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
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
  Future<Response> uniswapV3GetMintsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/mints/historical';

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
  Future<List<UniswapV3MintV3DTO>?> uniswapV3GetMintsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV3GetMintsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
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

  /// PoolDayDataV3DTOs (historical) 🔥
  ///
  /// Gets PoolDayDataV3DTOs.
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
  Future<Response> uniswapV3GetPoolDayDataV3DTOsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/PoolDayDataV3DTOs/historical';

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

  /// PoolDayDataV3DTOs (historical) 🔥
  ///
  /// Gets PoolDayDataV3DTOs.
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
  Future<List<UniswapV3PoolDayDataV3DTO>?> uniswapV3GetPoolDayDataV3DTOsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV3GetPoolDayDataV3DTOsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
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

  /// PoolHourDataV3DTOs (historical) 🔥
  ///
  /// Gets PoolHourDataV3DTOs.
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
  Future<Response> uniswapV3GetPoolHourDataV3DTOsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/PoolHourDataV3DTOs/historical';

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

  /// PoolHourDataV3DTOs (historical) 🔥
  ///
  /// Gets PoolHourDataV3DTOs.
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
  Future<List<UniswapV3PoolHourDataV3DTO>?> uniswapV3GetPoolHourDataV3DTOsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV3GetPoolHourDataV3DTOsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
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

  /// PoolV3DTOs (historical) 🔥
  ///
  /// Gets PoolV3DTOs.
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
  Future<Response> uniswapV3GetPoolV3DTOsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/PoolV3DTOs/historical';

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

  /// PoolV3DTOs (historical) 🔥
  ///
  /// Gets PoolV3DTOs.
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
  Future<List<UniswapV3PoolV3DTO>?> uniswapV3GetPoolV3DTOsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV3GetPoolV3DTOsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
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
  Future<Response> uniswapV3GetPoolsDayDataHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/poolsDayData/historical';

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
  Future<List<UniswapV3PoolDayDataV3DTO>?> uniswapV3GetPoolsDayDataHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV3GetPoolsDayDataHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
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
  Future<Response> uniswapV3GetPoolsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/pools/historical';

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
  Future<List<UniswapV3PoolV3DTO>?> uniswapV3GetPoolsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV3GetPoolsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
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

  /// PoolsHourData (historical)
  ///
  /// Gets pools hour data.
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
  Future<Response> uniswapV3GetPoolsHourDataHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/poolsHourData/historical';

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
  /// Gets pools hour data.
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
  Future<List<UniswapV3PoolHourDataV3DTO>?> uniswapV3GetPoolsHourDataHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV3GetPoolsHourDataHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
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

  /// PositionSnapshotV3DTOs (historical) 🔥
  ///
  /// Gets PositionSnapshotV3DTOs.
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
  Future<Response> uniswapV3GetPositionSnapshotV3DTOsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/PositionSnapshotV3DTOs/historical';

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

  /// PositionSnapshotV3DTOs (historical) 🔥
  ///
  /// Gets PositionSnapshotV3DTOs.
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
  Future<List<UniswapV3PositionSnapshotV3DTO>?> uniswapV3GetPositionSnapshotV3DTOsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV3GetPositionSnapshotV3DTOsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
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

  /// PositionV3DTOs (historical) 🔥
  ///
  /// Gets PositionV3DTOs.
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
  Future<Response> uniswapV3GetPositionV3DTOsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/PositionV3DTOs/historical';

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

  /// PositionV3DTOs (historical) 🔥
  ///
  /// Gets PositionV3DTOs.
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
  Future<List<UniswapV3PositionV3DTO>?> uniswapV3GetPositionV3DTOsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV3GetPositionV3DTOsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
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

  /// Positions (historical)
  ///
  /// Gets positions.
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
  Future<Response> uniswapV3GetPositionsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/positions/historical';

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

  /// Positions (historical)
  ///
  /// Gets positions.
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
  Future<List<UniswapV3PositionV3DTO>?> uniswapV3GetPositionsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV3GetPositionsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
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

  /// PositionsSnaphots (historical)
  ///
  /// Gets positions snapshots.
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
  Future<Response> uniswapV3GetPositionsSnaphotsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/positionsSnapshots/historical';

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

  /// PositionsSnaphots (historical)
  ///
  /// Gets positions snapshots.
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
  Future<List<UniswapV3PositionSnapshotV3DTO>?> uniswapV3GetPositionsSnaphotsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV3GetPositionsSnaphotsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
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

  /// SwapV3DTOs (historical) 🔥
  ///
  /// Gets SwapV3DTOs.
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
  Future<Response> uniswapV3GetSwapV3DTOsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/SwapV3DTOs/historical';

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

  /// SwapV3DTOs (historical) 🔥
  ///
  /// Gets SwapV3DTOs.
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
  Future<List<UniswapV3SwapV3DTO>?> uniswapV3GetSwapV3DTOsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV3GetSwapV3DTOsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
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
  Future<Response> uniswapV3GetSwapsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/swaps/historical';

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
  Future<List<UniswapV3SwapV3DTO>?> uniswapV3GetSwapsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV3GetSwapsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
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

  /// TickDayDataV3DTOs (historical) 🔥
  ///
  /// Gets TickDayDataV3DTOs.
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
  Future<Response> uniswapV3GetTickDayDataV3DTOsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/TickDayDataV3DTOs/historical';

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

  /// TickDayDataV3DTOs (historical) 🔥
  ///
  /// Gets TickDayDataV3DTOs.
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
  Future<List<UniswapV3TickDayDataV3DTO>?> uniswapV3GetTickDayDataV3DTOsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV3GetTickDayDataV3DTOsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
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

  /// TickV3DTOs (historical) 🔥
  ///
  /// Gets TickV3DTOs.
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
  Future<Response> uniswapV3GetTickV3DTOsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/TickV3DTOs/historical';

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

  /// TickV3DTOs (historical) 🔥
  ///
  /// Gets TickV3DTOs.
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
  Future<List<UniswapV3TickV3DTO>?> uniswapV3GetTickV3DTOsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV3GetTickV3DTOsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
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

  /// TicksDayData (historical)
  ///
  /// Gets ticks day data.
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
  Future<Response> uniswapV3GetTicksDayDataHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/ticksDayData/historical';

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

  /// TicksDayData (historical)
  ///
  /// Gets ticks day data.
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
  Future<List<UniswapV3TickDayDataV3DTO>?> uniswapV3GetTicksDayDataHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV3GetTicksDayDataHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
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

  /// Ticks (historical)
  ///
  /// Gets ticks.
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
  Future<Response> uniswapV3GetTicksHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/ticks/historical';

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

  /// Ticks (historical)
  ///
  /// Gets ticks.
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
  Future<List<UniswapV3TickV3DTO>?> uniswapV3GetTicksHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV3GetTicksHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
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

  /// TokenHourDataV3DTOs (historical) 🔥
  ///
  /// Gets TokenHourDataV3DTOs.
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
  Future<Response> uniswapV3GetTokenHourDataV3DTOsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/TokenHourDataV3DTOs/historical';

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

  /// TokenHourDataV3DTOs (historical) 🔥
  ///
  /// Gets TokenHourDataV3DTOs.
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
  Future<List<UniswapV3TokenHourDataV3DTO>?> uniswapV3GetTokenHourDataV3DTOsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV3GetTokenHourDataV3DTOsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
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

  /// TokenV3DTOs (historical) 🔥
  ///
  /// Gets TokenV3DTOs.
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
  Future<Response> uniswapV3GetTokenV3DTOsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/TokenV3DTOs/historical';

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

  /// TokenV3DTOs (historical) 🔥
  ///
  /// Gets TokenV3DTOs.
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
  Future<List<UniswapV3TokenV3DTO>?> uniswapV3GetTokenV3DTOsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV3GetTokenV3DTOsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
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

  /// TokenV3DayDataDTOs (historical) 🔥
  ///
  /// Gets TokenV3DayDataDTOs.
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
  Future<Response> uniswapV3GetTokenV3DayDataDTOsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/TokenV3DayDataDTOs/historical';

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

  /// TokenV3DayDataDTOs (historical) 🔥
  ///
  /// Gets TokenV3DayDataDTOs.
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
  Future<List<UniswapV3TokenV3DayDataDTO>?> uniswapV3GetTokenV3DayDataDTOsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV3GetTokenV3DayDataDTOsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
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
  Future<Response> uniswapV3GetTokensDayDataHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/tokensDayData/historical';

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
  Future<List<UniswapV3TokenV3DayDataDTO>?> uniswapV3GetTokensDayDataHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    final response = await uniswapV3GetTokensDayDataHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, tokenId: tokenId, );
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
  Future<Response> uniswapV3GetTokensHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/tokens/historical';

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
  Future<List<UniswapV3TokenV3DTO>?> uniswapV3GetTokensHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    final response = await uniswapV3GetTokensHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, tokenId: tokenId, );
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

  /// TokensHourData (historical)
  ///
  /// Gets tokens hour data.
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
  Future<Response> uniswapV3GetTokensHourDataHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/tokensHourData/historical';

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

  /// TokensHourData (historical)
  ///
  /// Gets tokens hour data.
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
  Future<List<UniswapV3TokenHourDataV3DTO>?> uniswapV3GetTokensHourDataHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? tokenId, }) async {
    final response = await uniswapV3GetTokensHourDataHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, tokenId: tokenId, );
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

  /// TransactionV3DTOs (historical) 🔥
  ///
  /// Gets TransactionV3DTOs.
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
  Future<Response> uniswapV3GetTransactionV3DTOsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/TransactionV3DTOs/historical';

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

  /// TransactionV3DTOs (historical) 🔥
  ///
  /// Gets TransactionV3DTOs.
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
  Future<List<UniswapV3TransactionV3DTO>?> uniswapV3GetTransactionV3DTOsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV3GetTransactionV3DTOsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
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
  Future<Response> uniswapV3GetTransactionsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/transactions/historical';

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
  Future<List<UniswapV3TransactionV3DTO>?> uniswapV3GetTransactionsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await uniswapV3GetTransactionsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
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

  /// UniswapDayDataV3DTOs (historical) 🔥
  ///
  /// Gets UniswapDayDataV3DTOs.
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
  Future<Response> uniswapV3GetUniswapDayDataV3DTOsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/uniswapv3/UniswapDayDataV3DTOs/historical';

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

  /// UniswapDayDataV3DTOs (historical) 🔥
  ///
  /// Gets UniswapDayDataV3DTOs.
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
  Future<List<UniswapV3UniswapDayDataV3DTO>?> uniswapV3GetUniswapDayDataV3DTOsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? poolId, }) async {
    final response = await uniswapV3GetUniswapDayDataV3DTOsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, poolId: poolId, );
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
