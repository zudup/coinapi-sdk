//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/api_util.dart';
import 'package:openapi/src/model/curve_account_dto.dart';
import 'package:openapi/src/model/curve_add_liquidity_event_dto.dart';
import 'package:openapi/src/model/curve_admin_fee_change_log_dto.dart';
import 'package:openapi/src/model/curve_amplification_coeff_change_log_dto.dart';
import 'package:openapi/src/model/curve_coin_dto.dart';
import 'package:openapi/src/model/curve_contract_dto.dart';
import 'package:openapi/src/model/curve_contract_version_dto.dart';
import 'package:openapi/src/model/curve_daily_volume_dto.dart';
import 'package:openapi/src/model/curve_exchange_dto.dart';
import 'package:openapi/src/model/curve_fee_change_log_dto.dart';
import 'package:openapi/src/model/curve_gauge_deposit_dto.dart';
import 'package:openapi/src/model/curve_gauge_dto.dart';
import 'package:openapi/src/model/curve_gauge_liquidity_dto.dart';
import 'package:openapi/src/model/curve_gauge_total_weight_dto.dart';
import 'package:openapi/src/model/curve_gauge_type_dto.dart';
import 'package:openapi/src/model/curve_gauge_type_weight_dto.dart';
import 'package:openapi/src/model/curve_gauge_weight_dto.dart';
import 'package:openapi/src/model/curve_gauge_weight_vote_dto.dart';
import 'package:openapi/src/model/curve_gauge_withdraw_dto.dart';
import 'package:openapi/src/model/curve_hourly_volume_dto.dart';
import 'package:openapi/src/model/curve_lp_token_dto.dart';
import 'package:openapi/src/model/curve_pool_dto.dart';
import 'package:openapi/src/model/curve_proposal_dto.dart';
import 'package:openapi/src/model/curve_proposal_vote_dto.dart';
import 'package:openapi/src/model/curve_remove_liquidity_event_dto.dart';
import 'package:openapi/src/model/curve_remove_liquidity_one_event_dto.dart';
import 'package:openapi/src/model/curve_system_state_dto.dart';
import 'package:openapi/src/model/curve_token_dto.dart';
import 'package:openapi/src/model/curve_transfer_ownership_event_dto.dart';
import 'package:openapi/src/model/curve_underlying_coin_dto.dart';
import 'package:openapi/src/model/curve_voting_app_dto.dart';
import 'package:openapi/src/model/curve_weekly_volume_dto.dart';

class CurveApi {

  final Dio _dio;

  final Serializers _serializers;

  const CurveApi(this._dio, this._serializers);

  /// GetAccounts (historical)
  /// Gets accounts.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveAccountDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveAccountDTO>>> curveGetAccountsHistorical({ 
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

    BuiltList<CurveAccountDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveAccountDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveAccountDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveAccountDTO>>(
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

  /// GetAddLiquidityEvents (historical)
  /// Gets add liquidity events.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [poolId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveAddLiquidityEventDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveAddLiquidityEventDTO>>> curveGetAddLiquidityEventsHistorical({ 
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
    final _path = r'/dapps/curve/addLiquidityEvents/historical';
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

    BuiltList<CurveAddLiquidityEventDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveAddLiquidityEventDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveAddLiquidityEventDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveAddLiquidityEventDTO>>(
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

  /// GetAdminFeeChangeLogs (historical)
  /// Gets admin fee change logs.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [poolId] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveAdminFeeChangeLogDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveAdminFeeChangeLogDTO>>> curveGetAdminFeeChangeLogsHistorical({ 
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
    final _path = r'/dapps/curve/adminFeeChangeLogs/historical';
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

    BuiltList<CurveAdminFeeChangeLogDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveAdminFeeChangeLogDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveAdminFeeChangeLogDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveAdminFeeChangeLogDTO>>(
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

  /// GetAmplificationCoeffChangeLogs (historical)
  /// Gets amplification coeff change logs.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [poolId] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveAmplificationCoeffChangeLogDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveAmplificationCoeffChangeLogDTO>>> curveGetAmplificationCoeffChangeLogsHistorical({ 
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
    final _path = r'/dapps/curve/amplificationCoeffChangeLogs/historical';
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

    BuiltList<CurveAmplificationCoeffChangeLogDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveAmplificationCoeffChangeLogDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveAmplificationCoeffChangeLogDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveAmplificationCoeffChangeLogDTO>>(
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

  /// GetCoins (historical)
  /// Gets coins.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [poolId] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveCoinDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveCoinDTO>>> curveGetCoinsHistorical({ 
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

    BuiltList<CurveCoinDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveCoinDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveCoinDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveCoinDTO>>(
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

  /// GetContracts (historical)
  /// Gets contracts.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [poolId] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveContractDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveContractDTO>>> curveGetContractsHistorical({ 
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

    BuiltList<CurveContractDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveContractDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveContractDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveContractDTO>>(
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

  /// GetContractsVersions (historical)
  /// Gets contracts versions.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [poolId] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveContractVersionDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveContractVersionDTO>>> curveGetContractsVersionsHistorical({ 
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
    final _path = r'/dapps/curve/contractsVersions/historical';
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

    BuiltList<CurveContractVersionDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveContractVersionDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveContractVersionDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveContractVersionDTO>>(
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

  /// GetDailyVolumes (historical)
  /// Gets daily volumes.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [poolId] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveDailyVolumeDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveDailyVolumeDTO>>> curveGetDailyVolumesHistorical({ 
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
    final _path = r'/dapps/curve/dailyVolumes/historical';
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

    BuiltList<CurveDailyVolumeDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveDailyVolumeDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveDailyVolumeDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveDailyVolumeDTO>>(
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

  /// GetExchanges (historical) 🔥
  /// Gets exchanges.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [poolId] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveExchangeDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveExchangeDTO>>> curveGetExchangesHistorical({ 
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
    final _path = r'/dapps/curve/exchanges/historical';
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

    BuiltList<CurveExchangeDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveExchangeDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveExchangeDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveExchangeDTO>>(
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

  /// GetFeeChangeLogs (historical)
  /// Gets fee change logs.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [poolId] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveFeeChangeLogDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveFeeChangeLogDTO>>> curveGetFeeChangeLogsHistorical({ 
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
    final _path = r'/dapps/curve/feeChangeLogs/historical';
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

    BuiltList<CurveFeeChangeLogDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveFeeChangeLogDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveFeeChangeLogDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveFeeChangeLogDTO>>(
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

  /// GetGaugesDeposits (historical)
  /// Gets gauges deposits.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveGaugeDepositDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveGaugeDepositDTO>>> curveGetGaugesDepositsHistorical({ 
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
    final _path = r'/dapps/curve/gaugesDeposits/historical';
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

    BuiltList<CurveGaugeDepositDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveGaugeDepositDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveGaugeDepositDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveGaugeDepositDTO>>(
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

  /// GetGauges (historical)
  /// Gets gauges.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [poolId] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveGaugeDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveGaugeDTO>>> curveGetGaugesHistorical({ 
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
    final _path = r'/dapps/curve/gauges/historical';
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

    BuiltList<CurveGaugeDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveGaugeDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveGaugeDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveGaugeDTO>>(
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

  /// GetGaugesLiquidity (historical)
  /// Gets gauges liquidity.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveGaugeLiquidityDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveGaugeLiquidityDTO>>> curveGetGaugesLiquidityHistorical({ 
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
    final _path = r'/dapps/curve/gaugesLiquidity/historical';
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

    BuiltList<CurveGaugeLiquidityDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveGaugeLiquidityDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveGaugeLiquidityDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveGaugeLiquidityDTO>>(
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

  /// GetGaugesTotalWeights (historical)
  /// Gets gauges total weights.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveGaugeTotalWeightDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveGaugeTotalWeightDTO>>> curveGetGaugesTotalWeightsHistorical({ 
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
    final _path = r'/dapps/curve/gaugesTotalWeights/historical';
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

    BuiltList<CurveGaugeTotalWeightDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveGaugeTotalWeightDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveGaugeTotalWeightDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveGaugeTotalWeightDTO>>(
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

  /// GetGaugesTypes (historical)
  /// Gets gauges types.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveGaugeTypeDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveGaugeTypeDTO>>> curveGetGaugesTypesHistorical({ 
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
    final _path = r'/dapps/curve/gaugesTypes/historical';
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

    BuiltList<CurveGaugeTypeDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveGaugeTypeDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveGaugeTypeDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveGaugeTypeDTO>>(
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

  /// GetGaugesTypesWeights (historical)
  /// Gets gauges types weights.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveGaugeTypeWeightDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveGaugeTypeWeightDTO>>> curveGetGaugesTypesWeightsHistorical({ 
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
    final _path = r'/dapps/curve/gaugesTypesWeights/historical';
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

    BuiltList<CurveGaugeTypeWeightDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveGaugeTypeWeightDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveGaugeTypeWeightDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveGaugeTypeWeightDTO>>(
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

  /// GetGaugesWeights (historical)
  /// Gets gauges weights.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveGaugeWeightDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveGaugeWeightDTO>>> curveGetGaugesWeightsHistorical({ 
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
    final _path = r'/dapps/curve/gaugesWeights/historical';
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

    BuiltList<CurveGaugeWeightDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveGaugeWeightDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveGaugeWeightDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveGaugeWeightDTO>>(
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

  /// GetGaugesWeightsVotes (historical)
  /// Gets gauges weights votes.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveGaugeWeightVoteDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveGaugeWeightVoteDTO>>> curveGetGaugesWeightsVotesHistorical({ 
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
    final _path = r'/dapps/curve/gaugesWeightsVotes/historical';
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

    BuiltList<CurveGaugeWeightVoteDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveGaugeWeightVoteDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveGaugeWeightVoteDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveGaugeWeightVoteDTO>>(
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

  /// GetGaugesWithdraw (historical)
  /// Gets gauges withdraws.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveGaugeWithdrawDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveGaugeWithdrawDTO>>> curveGetGaugesWithdrawHistorical({ 
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
    final _path = r'/dapps/curve/gaugesWithdraws/historical';
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

    BuiltList<CurveGaugeWithdrawDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveGaugeWithdrawDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveGaugeWithdrawDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveGaugeWithdrawDTO>>(
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

  /// GetHourlyVolumes (historical)
  /// Gets hourly volumes.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [poolId] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveHourlyVolumeDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveHourlyVolumeDTO>>> curveGetHourlyVolumesHistorical({ 
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
    final _path = r'/dapps/curve/hourlyVolumes/historical';
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

    BuiltList<CurveHourlyVolumeDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveHourlyVolumeDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveHourlyVolumeDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveHourlyVolumeDTO>>(
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

  /// GetLpTokens (historical)
  /// Gets lp tokens.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [poolId] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveLpTokenDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveLpTokenDTO>>> curveGetLpTokensHistorical({ 
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
    final _path = r'/dapps/curve/lpTokens/historical';
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

    BuiltList<CurveLpTokenDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveLpTokenDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveLpTokenDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveLpTokenDTO>>(
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

  /// GetPools (historical) 🔥
  /// Gets pools.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [poolId] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurvePoolDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurvePoolDTO>>> curveGetPoolsHistorical({ 
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

    BuiltList<CurvePoolDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurvePoolDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurvePoolDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurvePoolDTO>>(
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

  /// GetProposals (historical)
  /// Gets proposals.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveProposalDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveProposalDTO>>> curveGetProposalsHistorical({ 
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

    BuiltList<CurveProposalDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveProposalDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveProposalDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveProposalDTO>>(
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

  /// GetProposalsVotes (historical)
  /// Gets proposals votes.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveProposalVoteDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveProposalVoteDTO>>> curveGetProposalsVotesHistorical({ 
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
    final _path = r'/dapps/curve/proposalsVotes/historical';
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

    BuiltList<CurveProposalVoteDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveProposalVoteDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveProposalVoteDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveProposalVoteDTO>>(
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

  /// GetRemoveLiquidityEvents (historical)
  /// Gets remove liquidity events.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [poolId] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveRemoveLiquidityEventDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveRemoveLiquidityEventDTO>>> curveGetRemoveLiquidityEventsHistorical({ 
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
    final _path = r'/dapps/curve/removeLiquidityEvents/historical';
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

    BuiltList<CurveRemoveLiquidityEventDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveRemoveLiquidityEventDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveRemoveLiquidityEventDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveRemoveLiquidityEventDTO>>(
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

  /// GetRemoveLiquidityOneEvents (historical)
  /// Gets remove liquidity one events.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [poolId] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveRemoveLiquidityOneEventDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveRemoveLiquidityOneEventDTO>>> curveGetRemoveLiquidityOneEventsHistorical({ 
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
    final _path = r'/dapps/curve/removeLiquidityOneEvents/historical';
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

    BuiltList<CurveRemoveLiquidityOneEventDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveRemoveLiquidityOneEventDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveRemoveLiquidityOneEventDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveRemoveLiquidityOneEventDTO>>(
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

  /// GetSystemStates (historical)
  /// Gets system states.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveSystemStateDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveSystemStateDTO>>> curveGetSystemStatesHistorical({ 
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
    final _path = r'/dapps/curve/systemStates/historical';
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

    BuiltList<CurveSystemStateDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveSystemStateDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveSystemStateDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveSystemStateDTO>>(
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

  /// GetTokens (historical) 🔥
  /// Gets tokens.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [tokenId] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveTokenDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveTokenDTO>>> curveGetTokensHistorical({ 
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

    BuiltList<CurveTokenDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveTokenDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveTokenDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveTokenDTO>>(
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

  /// GetTransferOwnershipEvents (historical)
  /// Gets transfer ownership events.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [poolId] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveTransferOwnershipEventDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveTransferOwnershipEventDTO>>> curveGetTransferOwnershipEventsHistorical({ 
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
    final _path = r'/dapps/curve/transferOwnershipEvents/historical';
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

    BuiltList<CurveTransferOwnershipEventDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveTransferOwnershipEventDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveTransferOwnershipEventDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveTransferOwnershipEventDTO>>(
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

  /// GetUnderlyingCoins (historical)
  /// Gets underlying coins.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [poolId] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveUnderlyingCoinDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveUnderlyingCoinDTO>>> curveGetUnderlyingCoinsHistorical({ 
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
    final _path = r'/dapps/curve/underlyingCoins/historical';
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

    BuiltList<CurveUnderlyingCoinDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveUnderlyingCoinDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveUnderlyingCoinDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveUnderlyingCoinDTO>>(
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

  /// GetVotingApps (historical)
  /// Gets voting apps.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveVotingAppDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveVotingAppDTO>>> curveGetVotingAppsHistorical({ 
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
    final _path = r'/dapps/curve/votingApps/historical';
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

    BuiltList<CurveVotingAppDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveVotingAppDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveVotingAppDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveVotingAppDTO>>(
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

  /// GetWeeklyVolumes (historical)
  /// Gets weekly volumes.
  ///
  /// Parameters:
  /// * [startBlock] - 
  /// * [endBlock] - 
  /// * [startDate] - 
  /// * [endDate] - 
  /// * [poolId] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveWeeklyVolumeDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveWeeklyVolumeDTO>>> curveGetWeeklyVolumesHistorical({ 
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
    final _path = r'/dapps/curve/weeklyVolumes/historical';
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

    BuiltList<CurveWeeklyVolumeDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveWeeklyVolumeDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveWeeklyVolumeDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveWeeklyVolumeDTO>>(
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
