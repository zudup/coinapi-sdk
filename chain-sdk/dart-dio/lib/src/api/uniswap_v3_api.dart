//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/api_util.dart';
import 'package:openapi/src/model/uniswap_v3_bundle_v3_dto.dart';
import 'package:openapi/src/model/uniswap_v3_burn_v3_dto.dart';
import 'package:openapi/src/model/uniswap_v3_factory_v3_dto.dart';
import 'package:openapi/src/model/uniswap_v3_mint_v3_dto.dart';
import 'package:openapi/src/model/uniswap_v3_pool_day_data_v3_dto.dart';
import 'package:openapi/src/model/uniswap_v3_pool_hour_data_v3_dto.dart';
import 'package:openapi/src/model/uniswap_v3_pool_v3_dto.dart';
import 'package:openapi/src/model/uniswap_v3_position_snapshot_v3_dto.dart';
import 'package:openapi/src/model/uniswap_v3_position_v3_dto.dart';
import 'package:openapi/src/model/uniswap_v3_swap_v3_dto.dart';
import 'package:openapi/src/model/uniswap_v3_tick_day_data_v3_dto.dart';
import 'package:openapi/src/model/uniswap_v3_tick_v3_dto.dart';
import 'package:openapi/src/model/uniswap_v3_token_hour_data_v3_dto.dart';
import 'package:openapi/src/model/uniswap_v3_token_v3_day_data_dto.dart';
import 'package:openapi/src/model/uniswap_v3_token_v3_dto.dart';
import 'package:openapi/src/model/uniswap_v3_transaction_v3_dto.dart';
import 'package:openapi/src/model/uniswap_v3_uniswap_day_data_v3_dto.dart';

class UniswapV3Api {

  final Dio _dio;

  final Serializers _serializers;

  const UniswapV3Api(this._dio, this._serializers);

  /// BundleV3s (historical) 🔥
  /// Gets bundlev3s.
  ///
  /// Parameters:
  /// * [startBlock] - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  /// * [endBlock] - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  /// * [startDate] - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  /// * [endDate] - The end date of timeframe.
  /// * [id] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3BundleV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3BundleV3DTO>>> uniswapV3GetBundleV3sHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/bundlev3s/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3BundleV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3BundleV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3BundleV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3BundleV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Bundles (current)
  /// Gets bundles.
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3BundleV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3BundleV3DTO>>> uniswapV3GetBundlesCurrent({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/bundles/current';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3BundleV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3BundleV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3BundleV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3BundleV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// BurnV3s (historical) 🔥
  /// Gets burnv3s.
  ///
  /// Parameters:
  /// * [startBlock] - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  /// * [endBlock] - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  /// * [startDate] - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  /// * [endDate] - The end date of timeframe.
  /// * [id] - Transaction hash + '#' + index in mints Transaction array.
  /// * [pool] - Pool position is within.
  /// * [token0] - Reference to token0 as stored in pool contract.
  /// * [token1] - Reference to token1 as stored in pool contract.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3BurnV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3BurnV3DTO>>> uniswapV3GetBurnV3sHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    String? pool,
    String? token0,
    String? token1,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/burnv3s/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
      if (pool != null) r'pool': encodeQueryParameter(_serializers, pool, const FullType(String)),
      if (token0 != null) r'token_0': encodeQueryParameter(_serializers, token0, const FullType(String)),
      if (token1 != null) r'token_1': encodeQueryParameter(_serializers, token1, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3BurnV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3BurnV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3BurnV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3BurnV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Burns (current)
  /// Gets burns.
  ///
  /// Parameters:
  /// * [filterPoolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3BurnV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3BurnV3DTO>>> uniswapV3GetBurnsCurrent({ 
    String? filterPoolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/burns/current';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (filterPoolId != null) r'filter_pool_id': encodeQueryParameter(_serializers, filterPoolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3BurnV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3BurnV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3BurnV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3BurnV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// DayData (current)
  /// Gets uniswapv3 day data.
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3UniswapDayDataV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3UniswapDayDataV3DTO>>> uniswapV3GetDayDataCurrent({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/dayData/current';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3UniswapDayDataV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3UniswapDayDataV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3UniswapDayDataV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3UniswapDayDataV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Factory (current)
  /// Gets factory.
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3FactoryV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3FactoryV3DTO>>> uniswapV3GetFactoryCurrent({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/factory/current';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3FactoryV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3FactoryV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3FactoryV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3FactoryV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// FactoryV3s (historical) 🔥
  /// Gets factoryv3s.
  ///
  /// Parameters:
  /// * [startBlock] - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  /// * [endBlock] - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  /// * [startDate] - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  /// * [endDate] - The end date of timeframe.
  /// * [id] - Factory address.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3FactoryV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3FactoryV3DTO>>> uniswapV3GetFactoryV3sHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/factoryv3s/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3FactoryV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3FactoryV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3FactoryV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3FactoryV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// MintV3s (historical) 🔥
  /// Gets mintv3s.
  ///
  /// Parameters:
  /// * [startBlock] - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  /// * [endBlock] - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  /// * [startDate] - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  /// * [endDate] - The end date of timeframe.
  /// * [id] - Transaction hash + '#' + index in mints Transaction array.
  /// * [pool] - Pool address.
  /// * [token0] - Reference to token0 as stored in pool contract.
  /// * [token1] - Reference to token1 as stored in pool contract.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3MintV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3MintV3DTO>>> uniswapV3GetMintV3sHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    String? pool,
    String? token0,
    String? token1,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/mintv3s/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
      if (pool != null) r'pool': encodeQueryParameter(_serializers, pool, const FullType(String)),
      if (token0 != null) r'token_0': encodeQueryParameter(_serializers, token0, const FullType(String)),
      if (token1 != null) r'token_1': encodeQueryParameter(_serializers, token1, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3MintV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3MintV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3MintV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3MintV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Mints (current)
  /// Gets mints.
  ///
  /// Parameters:
  /// * [filterPoolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3MintV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3MintV3DTO>>> uniswapV3GetMintsCurrent({ 
    String? filterPoolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/mints/current';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (filterPoolId != null) r'filter_pool_id': encodeQueryParameter(_serializers, filterPoolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3MintV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3MintV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3MintV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3MintV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// PoolDayDataV3s (historical) 🔥
  /// Gets pooldaydatav3s.
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [id] 
  /// * [pool] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3PoolDayDataV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3PoolDayDataV3DTO>>> uniswapV3GetPoolDayDataV3sHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    String? pool,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/pooldaydatav3s/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
      if (pool != null) r'pool': encodeQueryParameter(_serializers, pool, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3PoolDayDataV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3PoolDayDataV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3PoolDayDataV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3PoolDayDataV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// PoolHourDataV3s (historical) 🔥
  /// Gets poolhourdatav3s.
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [id] 
  /// * [pool] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3PoolHourDataV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3PoolHourDataV3DTO>>> uniswapV3GetPoolHourDataV3sHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    String? pool,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/poolhourdatav3s/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
      if (pool != null) r'pool': encodeQueryParameter(_serializers, pool, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3PoolHourDataV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3PoolHourDataV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3PoolHourDataV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3PoolHourDataV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// PoolV3s (historical) 🔥
  /// Gets poolv3s.
  ///
  /// Parameters:
  /// * [startBlock] - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  /// * [endBlock] - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  /// * [startDate] - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  /// * [endDate] - The end date of timeframe.
  /// * [id] - Pool address.
  /// * [token0] - Reference to token0 as stored in pool contract.
  /// * [token1] - Reference to token1 as stored in pool contract.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3PoolV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3PoolV3DTO>>> uniswapV3GetPoolV3sHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    String? token0,
    String? token1,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/poolv3s/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
      if (token0 != null) r'token_0': encodeQueryParameter(_serializers, token0, const FullType(String)),
      if (token1 != null) r'token_1': encodeQueryParameter(_serializers, token1, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3PoolV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3PoolV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3PoolV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3PoolV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Pools (current) 🔥
  /// Gets pools.
  ///
  /// Parameters:
  /// * [filterPoolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3PoolV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3PoolV3DTO>>> uniswapV3GetPoolsCurrent({ 
    String? filterPoolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/pools/current';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (filterPoolId != null) r'filter_pool_id': encodeQueryParameter(_serializers, filterPoolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3PoolV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3PoolV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3PoolV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3PoolV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// PoolsDayData (current)
  /// Gets pools day data.
  ///
  /// Parameters:
  /// * [filterPoolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3PoolDayDataV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3PoolDayDataV3DTO>>> uniswapV3GetPoolsDayDataCurrent({ 
    String? filterPoolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/poolsDayData/current';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (filterPoolId != null) r'filter_pool_id': encodeQueryParameter(_serializers, filterPoolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3PoolDayDataV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3PoolDayDataV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3PoolDayDataV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3PoolDayDataV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// PoolsHourData (current)
  /// Gets pools hour data.
  ///
  /// Parameters:
  /// * [filterPoolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3PoolHourDataV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3PoolHourDataV3DTO>>> uniswapV3GetPoolsHourDataCurrent({ 
    String? filterPoolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/poolsHourData/current';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (filterPoolId != null) r'filter_pool_id': encodeQueryParameter(_serializers, filterPoolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3PoolHourDataV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3PoolHourDataV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3PoolHourDataV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3PoolHourDataV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// PositionSnapshotV3s (historical) 🔥
  /// Gets positionsnapshotv3s.
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [id] 
  /// * [pool] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3PositionSnapshotV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3PositionSnapshotV3DTO>>> uniswapV3GetPositionSnapshotV3sHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    String? pool,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/positionsnapshotv3s/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
      if (pool != null) r'pool': encodeQueryParameter(_serializers, pool, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3PositionSnapshotV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3PositionSnapshotV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3PositionSnapshotV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3PositionSnapshotV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// PositionV3s (historical) 🔥
  /// Gets positionv3s.
  ///
  /// Parameters:
  /// * [startBlock] - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  /// * [endBlock] - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  /// * [startDate] - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  /// * [endDate] - The end date of timeframe.
  /// * [id] - NFT token identifier.
  /// * [pool] - Pool position is within.
  /// * [token0] - Reference to token0 as stored in pair contract.
  /// * [token1] - Reference to token1 as stored in pair contract.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3PositionV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3PositionV3DTO>>> uniswapV3GetPositionV3sHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    String? pool,
    String? token0,
    String? token1,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/positionv3s/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
      if (pool != null) r'pool': encodeQueryParameter(_serializers, pool, const FullType(String)),
      if (token0 != null) r'token_0': encodeQueryParameter(_serializers, token0, const FullType(String)),
      if (token1 != null) r'token_1': encodeQueryParameter(_serializers, token1, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3PositionV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3PositionV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3PositionV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3PositionV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Positions (current)
  /// Gets positions.
  ///
  /// Parameters:
  /// * [filterPoolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3PositionV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3PositionV3DTO>>> uniswapV3GetPositionsCurrent({ 
    String? filterPoolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/positions/current';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (filterPoolId != null) r'filter_pool_id': encodeQueryParameter(_serializers, filterPoolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3PositionV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3PositionV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3PositionV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3PositionV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// PositionsSnapshots (current)
  /// Gets positions snapshots.
  ///
  /// Parameters:
  /// * [filterPoolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3PositionSnapshotV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3PositionSnapshotV3DTO>>> uniswapV3GetPositionsSnapshotsCurrent({ 
    String? filterPoolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/positionSnapshots/current';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (filterPoolId != null) r'filter_pool_id': encodeQueryParameter(_serializers, filterPoolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3PositionSnapshotV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3PositionSnapshotV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3PositionSnapshotV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3PositionSnapshotV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// SwapV3s (historical) 🔥
  /// Gets swapv3s.
  ///
  /// Parameters:
  /// * [startBlock] - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  /// * [endBlock] - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  /// * [startDate] - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  /// * [endDate] - The end date of timeframe.
  /// * [id] - Identifier, format: transaction hash + \"#\" + index in swaps Transaction array.
  /// * [pool] - Pool swap occured within.
  /// * [token0] - Reference to token0 as stored in pair contract.
  /// * [token1] - Reference to token1 as stored in pair contract.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3SwapV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3SwapV3DTO>>> uniswapV3GetSwapV3sHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    String? pool,
    String? token0,
    String? token1,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/swapv3s/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
      if (pool != null) r'pool': encodeQueryParameter(_serializers, pool, const FullType(String)),
      if (token0 != null) r'token_0': encodeQueryParameter(_serializers, token0, const FullType(String)),
      if (token1 != null) r'token_1': encodeQueryParameter(_serializers, token1, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3SwapV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3SwapV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3SwapV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3SwapV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Swaps (current) 🔥
  /// Gets swaps.
  ///
  /// Parameters:
  /// * [filterPoolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3SwapV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3SwapV3DTO>>> uniswapV3GetSwapsCurrent({ 
    String? filterPoolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/swaps/current';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (filterPoolId != null) r'filter_pool_id': encodeQueryParameter(_serializers, filterPoolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3SwapV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3SwapV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3SwapV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3SwapV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// TickDayDataV3s (historical) 🔥
  /// Gets tickdaydatav3s.
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [id] 
  /// * [pool] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3TickDayDataV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3TickDayDataV3DTO>>> uniswapV3GetTickDayDataV3sHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    String? pool,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/tickdaydatav3s/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
      if (pool != null) r'pool': encodeQueryParameter(_serializers, pool, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3TickDayDataV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3TickDayDataV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3TickDayDataV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3TickDayDataV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// TickV3s (historical) 🔥
  /// Gets tickv3s.
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [id] 
  /// * [pool] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3TickV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3TickV3DTO>>> uniswapV3GetTickV3sHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    String? pool,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/tickv3s/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
      if (pool != null) r'pool': encodeQueryParameter(_serializers, pool, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3TickV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3TickV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3TickV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3TickV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Ticks (current)
  /// Gets ticks.
  ///
  /// Parameters:
  /// * [filterPoolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3TickV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3TickV3DTO>>> uniswapV3GetTicksCurrent({ 
    String? filterPoolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/ticks/current';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (filterPoolId != null) r'filter_pool_id': encodeQueryParameter(_serializers, filterPoolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3TickV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3TickV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3TickV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3TickV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// TicksDayData (current)
  /// Gets ticks day data.
  ///
  /// Parameters:
  /// * [filterPoolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3TickDayDataV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3TickDayDataV3DTO>>> uniswapV3GetTicksDayDataCurrent({ 
    String? filterPoolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/ticksDayData/current';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (filterPoolId != null) r'filter_pool_id': encodeQueryParameter(_serializers, filterPoolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3TickDayDataV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3TickDayDataV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3TickDayDataV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3TickDayDataV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// TokenHourDataV3s (historical) 🔥
  /// Gets tokenhourdatav3s.
  ///
  /// Parameters:
  /// * [startBlock] - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  /// * [endBlock] - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  /// * [startDate] - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  /// * [endDate] - The end date of timeframe.
  /// * [id] - Token address concatendated with date.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3TokenHourDataV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3TokenHourDataV3DTO>>> uniswapV3GetTokenHourDataV3sHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/tokenhourdatav3s/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3TokenHourDataV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3TokenHourDataV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3TokenHourDataV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3TokenHourDataV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// TokenV3DayDatas (historical) 🔥
  /// Gets tokenv3daydatas.
  ///
  /// Parameters:
  /// * [startBlock] - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  /// * [endBlock] - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  /// * [startDate] - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  /// * [endDate] - The end date of timeframe.
  /// * [id] - Token address concatendated with date.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3TokenV3DayDataDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3TokenV3DayDataDTO>>> uniswapV3GetTokenV3DayDatasHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/tokenv3daydatas/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3TokenV3DayDataDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3TokenV3DayDataDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3TokenV3DayDataDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3TokenV3DayDataDTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// TokenV3s (historical) 🔥
  /// Gets tokenv3s.
  ///
  /// Parameters:
  /// * [startBlock] - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  /// * [endBlock] - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  /// * [startDate] - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  /// * [endDate] - The end date of timeframe.
  /// * [id] - Token address.
  /// * [symbol] - Token symbol.
  /// * [name] - Token name.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3TokenV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3TokenV3DTO>>> uniswapV3GetTokenV3sHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    String? symbol,
    String? name,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/tokenv3s/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
      if (symbol != null) r'symbol': encodeQueryParameter(_serializers, symbol, const FullType(String)),
      if (name != null) r'name': encodeQueryParameter(_serializers, name, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3TokenV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3TokenV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3TokenV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3TokenV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Tokens (current) 🔥
  /// Gets tokens.
  ///
  /// Parameters:
  /// * [filterTokenId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3TokenV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3TokenV3DTO>>> uniswapV3GetTokensCurrent({ 
    String? filterTokenId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/tokens/current';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (filterTokenId != null) r'filter_token_id': encodeQueryParameter(_serializers, filterTokenId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3TokenV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3TokenV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3TokenV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3TokenV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// TokensDayData (current)
  /// Gets tokens day data.
  ///
  /// Parameters:
  /// * [filterTokenId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3TokenV3DayDataDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3TokenV3DayDataDTO>>> uniswapV3GetTokensDayDataCurrent({ 
    String? filterTokenId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/tokensDayData/current';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (filterTokenId != null) r'filter_token_id': encodeQueryParameter(_serializers, filterTokenId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3TokenV3DayDataDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3TokenV3DayDataDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3TokenV3DayDataDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3TokenV3DayDataDTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// TokensHourData (current)
  /// Gets tokens hour data.
  ///
  /// Parameters:
  /// * [filterTokenId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3TokenHourDataV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3TokenHourDataV3DTO>>> uniswapV3GetTokensHourDataCurrent({ 
    String? filterTokenId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/tokensHourData/current';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (filterTokenId != null) r'filter_token_id': encodeQueryParameter(_serializers, filterTokenId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3TokenHourDataV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3TokenHourDataV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3TokenHourDataV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3TokenHourDataV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// TransactionV3s (historical) 🔥
  /// Gets transactionv3s.
  ///
  /// Parameters:
  /// * [startBlock] - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  /// * [endBlock] - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  /// * [startDate] - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  /// * [endDate] - The end date of timeframe.
  /// * [id] - Transaction hash.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3TransactionV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3TransactionV3DTO>>> uniswapV3GetTransactionV3sHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/transactionv3s/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3TransactionV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3TransactionV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3TransactionV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3TransactionV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// UniswapDayDataV3s (historical) 🔥
  /// Gets uniswapdaydatav3s.
  ///
  /// Parameters:
  /// * [startBlock] - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  /// * [endBlock] - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  /// * [startDate] - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  /// * [endDate] - The end date of timeframe.
  /// * [id] - Timestamp rounded to current day by dividing by 86400.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<UniswapV3UniswapDayDataV3DTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<UniswapV3UniswapDayDataV3DTO>>> uniswapV3GetUniswapDayDataV3sHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/uniswapv3/uniswapdaydatav3s/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<UniswapV3UniswapDayDataV3DTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(UniswapV3UniswapDayDataV3DTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<UniswapV3UniswapDayDataV3DTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<UniswapV3UniswapDayDataV3DTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
