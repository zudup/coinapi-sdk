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

  /// Exchanges (current) 🔥
  ///
  /// Gets exchanges.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> curveGetExchangesCurrentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/sushiswap/exchanges/current';

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

  /// Exchanges (current) 🔥
  ///
  /// Gets exchanges.
  Future<List<CurveExchangeDTO>?> curveGetExchangesCurrent() async {
    final response = await curveGetExchangesCurrentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CurveExchangeDTO>') as List)
        .cast<CurveExchangeDTO>()
        .toList();

    }
    return null;
  }

  /// Trades (current) 🔥
  ///
  /// Gets trades.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> dexGetTradesCurrentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/sushiswap/trades/current';

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

  /// Trades (current) 🔥
  ///
  /// Gets trades.
  Future<List<DexTradeDTO>?> dexGetTradesCurrent() async {
    final response = await dexGetTradesCurrentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexTradeDTO>') as List)
        .cast<DexTradeDTO>()
        .toList();

    }
    return null;
  }

  /// Bundles (historical) 🔥
  ///
  /// Gets bundles.
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
  ///   Hardcoded to '1'.
  Future<Response> sushiswapGetBundlesHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/sushiswap/bundles/historical';

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

  /// Bundles (historical) 🔥
  ///
  /// Gets bundles.
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
  ///   Hardcoded to '1'.
  Future<List<SushiswapBundleDTO>?> sushiswapGetBundlesHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    final response = await sushiswapGetBundlesHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SushiswapBundleDTO>') as List)
        .cast<SushiswapBundleDTO>()
        .toList();

    }
    return null;
  }

  /// Burns (historical) 🔥
  ///
  /// Gets burns.
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
  /// * [String] pair:
  Future<Response> sushiswapGetBurnsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? pair, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/sushiswap/burns/historical';

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
    if (pair != null) {
      queryParams.addAll(_queryParams('', 'pair', pair));
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

  /// Burns (historical) 🔥
  ///
  /// Gets burns.
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
  /// * [String] pair:
  Future<List<SushiswapBurnDTO>?> sushiswapGetBurnsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? pair, }) async {
    final response = await sushiswapGetBurnsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, pair: pair, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SushiswapBurnDTO>') as List)
        .cast<SushiswapBurnDTO>()
        .toList();

    }
    return null;
  }

  /// DayDatas (historical) 🔥
  ///
  /// Gets daydatas.
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
  ///   Unix timestamp for start of day / 86400 giving a unique day index.
  Future<Response> sushiswapGetDayDatasHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/sushiswap/daydatas/historical';

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

  /// DayDatas (historical) 🔥
  ///
  /// Gets daydatas.
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
  ///   Unix timestamp for start of day / 86400 giving a unique day index.
  Future<List<SushiswapDayDataDTO>?> sushiswapGetDayDatasHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    final response = await sushiswapGetDayDatasHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SushiswapDayDataDTO>') as List)
        .cast<SushiswapDayDataDTO>()
        .toList();

    }
    return null;
  }

  /// Factorys (historical) 🔥
  ///
  /// Gets factorys.
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
  Future<Response> sushiswapGetFactorysHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/sushiswap/factorys/historical';

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

  /// Factorys (historical) 🔥
  ///
  /// Gets factorys.
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
  Future<List<SushiswapFactoryDTO>?> sushiswapGetFactorysHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    final response = await sushiswapGetFactorysHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SushiswapFactoryDTO>') as List)
        .cast<SushiswapFactoryDTO>()
        .toList();

    }
    return null;
  }

  /// HourDatas (historical) 🔥
  ///
  /// Gets hourdatas.
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
  ///   Start of hour timestamp.
  Future<Response> sushiswapGetHourDatasHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/sushiswap/hourdatas/historical';

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

  /// HourDatas (historical) 🔥
  ///
  /// Gets hourdatas.
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
  ///   Start of hour timestamp.
  Future<List<SushiswapHourDataDTO>?> sushiswapGetHourDatasHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    final response = await sushiswapGetHourDatasHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SushiswapHourDataDTO>') as List)
        .cast<SushiswapHourDataDTO>()
        .toList();

    }
    return null;
  }

  /// LiquidityPositionSnapshots (historical) 🔥
  ///
  /// Gets liquiditypositionsnapshots.
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
  /// * [String] user:
  ///
  /// * [String] pair:
  Future<Response> sushiswapGetLiquidityPositionSnapshotsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? user, String? pair, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/sushiswap/liquiditypositionsnapshots/historical';

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
    if (user != null) {
      queryParams.addAll(_queryParams('', 'user', user));
    }
    if (pair != null) {
      queryParams.addAll(_queryParams('', 'pair', pair));
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

  /// LiquidityPositionSnapshots (historical) 🔥
  ///
  /// Gets liquiditypositionsnapshots.
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
  /// * [String] user:
  ///
  /// * [String] pair:
  Future<List<SushiswapLiquidityPositionSnapshotDTO>?> sushiswapGetLiquidityPositionSnapshotsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? user, String? pair, }) async {
    final response = await sushiswapGetLiquidityPositionSnapshotsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, user: user, pair: pair, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SushiswapLiquidityPositionSnapshotDTO>') as List)
        .cast<SushiswapLiquidityPositionSnapshotDTO>()
        .toList();

    }
    return null;
  }

  /// LiquidityPositions (historical) 🔥
  ///
  /// Gets liquiditypositions.
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
  /// * [String] user:
  ///
  /// * [String] pair:
  Future<Response> sushiswapGetLiquidityPositionsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? user, String? pair, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/sushiswap/liquiditypositions/historical';

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
    if (user != null) {
      queryParams.addAll(_queryParams('', 'user', user));
    }
    if (pair != null) {
      queryParams.addAll(_queryParams('', 'pair', pair));
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

  /// LiquidityPositions (historical) 🔥
  ///
  /// Gets liquiditypositions.
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
  /// * [String] user:
  ///
  /// * [String] pair:
  Future<List<SushiswapLiquidityPositionDTO>?> sushiswapGetLiquidityPositionsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? user, String? pair, }) async {
    final response = await sushiswapGetLiquidityPositionsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, user: user, pair: pair, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SushiswapLiquidityPositionDTO>') as List)
        .cast<SushiswapLiquidityPositionDTO>()
        .toList();

    }
    return null;
  }

  /// Mints (historical) 🔥
  ///
  /// Gets mints.
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
  /// * [String] pair:
  Future<Response> sushiswapGetMintsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? pair, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/sushiswap/mints/historical';

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
    if (pair != null) {
      queryParams.addAll(_queryParams('', 'pair', pair));
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

  /// Mints (historical) 🔥
  ///
  /// Gets mints.
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
  /// * [String] pair:
  Future<List<SushiswapMintDTO>?> sushiswapGetMintsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? pair, }) async {
    final response = await sushiswapGetMintsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, pair: pair, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SushiswapMintDTO>') as List)
        .cast<SushiswapMintDTO>()
        .toList();

    }
    return null;
  }

  /// PairDayDatas (historical) 🔥
  ///
  /// Gets pairdaydatas.
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
  /// * [String] pair:
  ///
  /// * [String] token0:
  ///
  /// * [String] token1:
  Future<Response> sushiswapGetPairDayDatasHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? pair, String? token0, String? token1, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/sushiswap/pairdaydatas/historical';

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
    if (pair != null) {
      queryParams.addAll(_queryParams('', 'pair', pair));
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

  /// PairDayDatas (historical) 🔥
  ///
  /// Gets pairdaydatas.
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
  /// * [String] pair:
  ///
  /// * [String] token0:
  ///
  /// * [String] token1:
  Future<List<SushiswapPairDayDataDTO>?> sushiswapGetPairDayDatasHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? pair, String? token0, String? token1, }) async {
    final response = await sushiswapGetPairDayDatasHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, pair: pair, token0: token0, token1: token1, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SushiswapPairDayDataDTO>') as List)
        .cast<SushiswapPairDayDataDTO>()
        .toList();

    }
    return null;
  }

  /// PairHourDatas (historical) 🔥
  ///
  /// Gets pairhourdatas.
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
  /// * [String] pair:
  Future<Response> sushiswapGetPairHourDatasHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? pair, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/sushiswap/pairhourdatas/historical';

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
    if (pair != null) {
      queryParams.addAll(_queryParams('', 'pair', pair));
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

  /// PairHourDatas (historical) 🔥
  ///
  /// Gets pairhourdatas.
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
  /// * [String] pair:
  Future<List<SushiswapPairHourDataDTO>?> sushiswapGetPairHourDatasHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? pair, }) async {
    final response = await sushiswapGetPairHourDatasHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, pair: pair, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SushiswapPairHourDataDTO>') as List)
        .cast<SushiswapPairHourDataDTO>()
        .toList();

    }
    return null;
  }

  /// Pairs (historical) 🔥
  ///
  /// Gets pairs.
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
  /// * [String] name:
  ///
  /// * [String] token0:
  ///
  /// * [String] token1:
  Future<Response> sushiswapGetPairsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? name, String? token0, String? token1, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/sushiswap/pairs/historical';

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
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
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

  /// Pairs (historical) 🔥
  ///
  /// Gets pairs.
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
  /// * [String] name:
  ///
  /// * [String] token0:
  ///
  /// * [String] token1:
  Future<List<SushiswapPairDTO>?> sushiswapGetPairsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? name, String? token0, String? token1, }) async {
    final response = await sushiswapGetPairsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, name: name, token0: token0, token1: token1, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SushiswapPairDTO>') as List)
        .cast<SushiswapPairDTO>()
        .toList();

    }
    return null;
  }

  /// Pools (current) 🔥
  ///
  /// Gets pools.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> sushiswapGetPoolsCurrentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/sushiswap/pools/current';

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

  /// Pools (current) 🔥
  ///
  /// Gets pools.
  Future<List<SushiswapPairDTO>?> sushiswapGetPoolsCurrent() async {
    final response = await sushiswapGetPoolsCurrentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SushiswapPairDTO>') as List)
        .cast<SushiswapPairDTO>()
        .toList();

    }
    return null;
  }

  /// Swaps (current) 🔥
  ///
  /// Gets swaps.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> sushiswapGetSwapsCurrentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/sushiswap/swaps/current';

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
  Future<List<SushiswapSwapDTO>?> sushiswapGetSwapsCurrent() async {
    final response = await sushiswapGetSwapsCurrentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SushiswapSwapDTO>') as List)
        .cast<SushiswapSwapDTO>()
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
  ///   Transaction hash plus index in Transaction swap array.
  ///
  /// * [String] pair:
  ///   Reference to pair.
  Future<Response> sushiswapGetSwapsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? pair, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/sushiswap/swaps/historical';

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
    if (pair != null) {
      queryParams.addAll(_queryParams('', 'pair', pair));
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
  ///   Transaction hash plus index in Transaction swap array.
  ///
  /// * [String] pair:
  ///   Reference to pair.
  Future<List<SushiswapSwapDTO>?> sushiswapGetSwapsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? pair, }) async {
    final response = await sushiswapGetSwapsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, pair: pair, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SushiswapSwapDTO>') as List)
        .cast<SushiswapSwapDTO>()
        .toList();

    }
    return null;
  }

  /// TokenDayDatas (historical) 🔥
  ///
  /// Gets tokendaydatas.
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
  ///   Identifier, day start timestamp in unix / 86400.
  Future<Response> sushiswapGetTokenDayDatasHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/sushiswap/tokendaydatas/historical';

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

  /// TokenDayDatas (historical) 🔥
  ///
  /// Gets tokendaydatas.
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
  ///   Identifier, day start timestamp in unix / 86400.
  Future<List<SushiswapTokenDayDataDTO>?> sushiswapGetTokenDayDatasHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    final response = await sushiswapGetTokenDayDatasHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SushiswapTokenDayDataDTO>') as List)
        .cast<SushiswapTokenDayDataDTO>()
        .toList();

    }
    return null;
  }

  /// Tokens (current) 🔥
  ///
  /// Gets tokens.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> sushiswapGetTokensCurrentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/sushiswap/tokens/current';

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
  Future<List<SushiswapTokenDTO>?> sushiswapGetTokensCurrent() async {
    final response = await sushiswapGetTokensCurrentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SushiswapTokenDTO>') as List)
        .cast<SushiswapTokenDTO>()
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
  Future<Response> sushiswapGetTokensHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? symbol, String? name, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/sushiswap/tokens/historical';

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

  /// Tokens (historical) 🔥
  ///
  /// Gets tokens.
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
  Future<List<SushiswapTokenDTO>?> sushiswapGetTokensHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? symbol, String? name, }) async {
    final response = await sushiswapGetTokensHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, symbol: symbol, name: name, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SushiswapTokenDTO>') as List)
        .cast<SushiswapTokenDTO>()
        .toList();

    }
    return null;
  }

  /// Transactions (historical) 🔥
  ///
  /// Gets transactions.
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
  ///   Ethereum transaction hash.
  Future<Response> sushiswapGetTransactionsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/sushiswap/transactions/historical';

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

  /// Transactions (historical) 🔥
  ///
  /// Gets transactions.
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
  ///   Ethereum transaction hash.
  Future<List<SushiswapTransactionDTO>?> sushiswapGetTransactionsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    final response = await sushiswapGetTransactionsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SushiswapTransactionDTO>') as List)
        .cast<SushiswapTransactionDTO>()
        .toList();

    }
    return null;
  }

  /// Users (historical) 🔥
  ///
  /// Gets users.
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
  ///   User address.
  Future<Response> sushiswapGetUsersHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/sushiswap/users/historical';

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

  /// Users (historical) 🔥
  ///
  /// Gets users.
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
  ///   User address.
  Future<List<SushiswapUserDTO>?> sushiswapGetUsersHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    final response = await sushiswapGetUsersHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SushiswapUserDTO>') as List)
        .cast<SushiswapUserDTO>()
        .toList();

    }
    return null;
  }
}
