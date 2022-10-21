//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:openapi/src/serializers.dart';
import 'package:openapi/src/auth/api_key_auth.dart';
import 'package:openapi/src/auth/basic_auth.dart';
import 'package:openapi/src/auth/bearer_auth.dart';
import 'package:openapi/src/auth/oauth.dart';
import 'package:openapi/src/api/bundles_api.dart';
import 'package:openapi/src/api/burns_api.dart';
import 'package:openapi/src/api/factory_api.dart';
import 'package:openapi/src/api/mints_api.dart';
import 'package:openapi/src/api/poi_api.dart';
import 'package:openapi/src/api/pool_day_data_api.dart';
import 'package:openapi/src/api/pool_hour_data_api.dart';
import 'package:openapi/src/api/pools_api.dart';
import 'package:openapi/src/api/position_snapshot_api.dart';
import 'package:openapi/src/api/positions_api.dart';
import 'package:openapi/src/api/sushiswap_api.dart';
import 'package:openapi/src/api/swaps_api.dart';
import 'package:openapi/src/api/tick_day_data_api.dart';
import 'package:openapi/src/api/ticks_api.dart';
import 'package:openapi/src/api/token_day_data_api.dart';
import 'package:openapi/src/api/token_hour_data_api.dart';
import 'package:openapi/src/api/tokens_api.dart';
import 'package:openapi/src/api/trades_api.dart';
import 'package:openapi/src/api/uniswap_v2_api.dart';
import 'package:openapi/src/api/uniswap_v3_api.dart';

class Openapi {
  static const String basePath = r'https://onchain.coinapi.io';

  final Dio dio;
  final Serializers serializers;

  Openapi({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: 5000,
              receiveTimeout: 3000,
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get BundlesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BundlesApi getBundlesApi() {
    return BundlesApi(dio, serializers);
  }

  /// Get BurnsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BurnsApi getBurnsApi() {
    return BurnsApi(dio, serializers);
  }

  /// Get FactoryApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FactoryApi getFactoryApi() {
    return FactoryApi(dio, serializers);
  }

  /// Get MintsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MintsApi getMintsApi() {
    return MintsApi(dio, serializers);
  }

  /// Get PoiApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PoiApi getPoiApi() {
    return PoiApi(dio, serializers);
  }

  /// Get PoolDayDataApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PoolDayDataApi getPoolDayDataApi() {
    return PoolDayDataApi(dio, serializers);
  }

  /// Get PoolHourDataApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PoolHourDataApi getPoolHourDataApi() {
    return PoolHourDataApi(dio, serializers);
  }

  /// Get PoolsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PoolsApi getPoolsApi() {
    return PoolsApi(dio, serializers);
  }

  /// Get PositionSnapshotApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PositionSnapshotApi getPositionSnapshotApi() {
    return PositionSnapshotApi(dio, serializers);
  }

  /// Get PositionsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PositionsApi getPositionsApi() {
    return PositionsApi(dio, serializers);
  }

  /// Get SushiswapApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SushiswapApi getSushiswapApi() {
    return SushiswapApi(dio, serializers);
  }

  /// Get SwapsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SwapsApi getSwapsApi() {
    return SwapsApi(dio, serializers);
  }

  /// Get TickDayDataApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TickDayDataApi getTickDayDataApi() {
    return TickDayDataApi(dio, serializers);
  }

  /// Get TicksApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TicksApi getTicksApi() {
    return TicksApi(dio, serializers);
  }

  /// Get TokenDayDataApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TokenDayDataApi getTokenDayDataApi() {
    return TokenDayDataApi(dio, serializers);
  }

  /// Get TokenHourDataApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TokenHourDataApi getTokenHourDataApi() {
    return TokenHourDataApi(dio, serializers);
  }

  /// Get TokensApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TokensApi getTokensApi() {
    return TokensApi(dio, serializers);
  }

  /// Get TradesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TradesApi getTradesApi() {
    return TradesApi(dio, serializers);
  }

  /// Get UniswapV2Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UniswapV2Api getUniswapV2Api() {
    return UniswapV2Api(dio, serializers);
  }

  /// Get UniswapV3Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UniswapV3Api getUniswapV3Api() {
    return UniswapV3Api(dio, serializers);
  }
}
