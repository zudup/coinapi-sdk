//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:openapi/src/api_util.dart';

class CurveApi {

  final Dio _dio;

  final Serializers _serializers;

  const CurveApi(this._dio, this._serializers);

  /// dappsCurveAccountsHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveAccountsHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/accounts/historical';
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
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveAddLiquidityEventHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [poolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveAddLiquidityEventHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? poolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/addLiquidityEvent/historical';
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
      if (poolId != null) r'poolId': encodeQueryParameter(_serializers, poolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveAdminFeeChangeLogHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [poolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveAdminFeeChangeLogHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? poolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/adminFeeChangeLog/historical';
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
      if (poolId != null) r'poolId': encodeQueryParameter(_serializers, poolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveAmplificationCoeffChangeLogHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [poolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveAmplificationCoeffChangeLogHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? poolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/amplificationCoeffChangeLog/historical';
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
      if (poolId != null) r'poolId': encodeQueryParameter(_serializers, poolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveCoinsHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [poolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveCoinsHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? poolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/coins/historical';
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
      if (poolId != null) r'poolId': encodeQueryParameter(_serializers, poolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveContractsHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [poolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveContractsHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? poolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/contracts/historical';
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
      if (poolId != null) r'poolId': encodeQueryParameter(_serializers, poolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveContractsVersionHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [poolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveContractsVersionHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? poolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/contractsVersion/historical';
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
      if (poolId != null) r'poolId': encodeQueryParameter(_serializers, poolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveDailyVolumeHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [poolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveDailyVolumeHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? poolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/dailyVolume/historical';
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
      if (poolId != null) r'poolId': encodeQueryParameter(_serializers, poolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveFeeChangeLogHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [poolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveFeeChangeLogHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? poolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/feeChangeLog/historical';
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
      if (poolId != null) r'poolId': encodeQueryParameter(_serializers, poolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveGaugeDepositHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveGaugeDepositHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/gaugeDeposit/historical';
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
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveGaugeHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [poolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveGaugeHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? poolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/gauge/historical';
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
      if (poolId != null) r'poolId': encodeQueryParameter(_serializers, poolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveGaugeLiquidityHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveGaugeLiquidityHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/gaugeLiquidity/historical';
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
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveGaugeTotalWeightHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveGaugeTotalWeightHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/gaugeTotalWeight/historical';
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
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveGaugeTypeHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveGaugeTypeHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/gaugeType/historical';
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
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveGaugeTypeWeightHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveGaugeTypeWeightHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/gaugeTypeWeight/historical';
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
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveGaugeWeightHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveGaugeWeightHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/gaugeWeight/historical';
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
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveGaugeWeightVoteHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveGaugeWeightVoteHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/gaugeWeightVote/historical';
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
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveGaugeWithdrawHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveGaugeWithdrawHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/gaugeWithdraw/historical';
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
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveHourlyVolumeHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [poolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveHourlyVolumeHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? poolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/hourlyVolume/historical';
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
      if (poolId != null) r'poolId': encodeQueryParameter(_serializers, poolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveLpTokenHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [poolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveLpTokenHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? poolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/lpToken/historical';
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
      if (poolId != null) r'poolId': encodeQueryParameter(_serializers, poolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurvePoiHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurvePoiHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/poi/historical';
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
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurvePoolsHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [poolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurvePoolsHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? poolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/pools/historical';
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
      if (poolId != null) r'poolId': encodeQueryParameter(_serializers, poolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveProposalsHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveProposalsHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/proposals/historical';
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
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveProposalsVoteHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveProposalsVoteHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/proposalsVote/historical';
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
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveRemoveLiquidityEventHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [poolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveRemoveLiquidityEventHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? poolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/removeLiquidityEvent/historical';
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
      if (poolId != null) r'poolId': encodeQueryParameter(_serializers, poolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveRemoveLiquidityOneEventHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [poolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveRemoveLiquidityOneEventHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? poolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/removeLiquidityOneEvent/historical';
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
      if (poolId != null) r'poolId': encodeQueryParameter(_serializers, poolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveSwapsHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [poolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveSwapsHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? poolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/swaps/historical';
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
      if (poolId != null) r'poolId': encodeQueryParameter(_serializers, poolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveSystemStateHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveSystemStateHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/systemState/historical';
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
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveTokensHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [tokenId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveTokensHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? tokenId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/tokens/historical';
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
      if (tokenId != null) r'tokenId': encodeQueryParameter(_serializers, tokenId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveTransferOwnershipEventHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [poolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveTransferOwnershipEventHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? poolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/transferOwnershipEvent/historical';
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
      if (poolId != null) r'poolId': encodeQueryParameter(_serializers, poolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveUnderlyingCoinHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [poolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveUnderlyingCoinHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? poolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/underlyingCoin/historical';
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
      if (poolId != null) r'poolId': encodeQueryParameter(_serializers, poolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveVotingAppHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveVotingAppHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/votingApp/historical';
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
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// dappsCurveWeeklyVolumeHistoricalGet
  /// 
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [poolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> dappsCurveWeeklyVolumeHistoricalGet({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? poolId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/curve/weeklyVolume/historical';
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
      if (poolId != null) r'poolId': encodeQueryParameter(_serializers, poolId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

}
