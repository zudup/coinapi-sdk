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
import 'package:openapi/src/api/accounts_api.dart';
import 'package:openapi/src/api/add_liquidity_event_api.dart';
import 'package:openapi/src/api/admin_fee_change_log_api.dart';
import 'package:openapi/src/api/amplification_coeff_change_log_api.dart';
import 'package:openapi/src/api/batch_api.dart';
import 'package:openapi/src/api/bundles_api.dart';
import 'package:openapi/src/api/burns_api.dart';
import 'package:openapi/src/api/coins_api.dart';
import 'package:openapi/src/api/contracts_api.dart';
import 'package:openapi/src/api/contracts_version_api.dart';
import 'package:openapi/src/api/daily_volume_api.dart';
import 'package:openapi/src/api/day_data_api.dart';
import 'package:openapi/src/api/deposit_api.dart';
import 'package:openapi/src/api/factory_api.dart';
import 'package:openapi/src/api/fee_change_log_api.dart';
import 'package:openapi/src/api/gauge_api.dart';
import 'package:openapi/src/api/gauge_deposit_api.dart';
import 'package:openapi/src/api/gauge_liquidity_api.dart';
import 'package:openapi/src/api/gauge_total_weight_api.dart';
import 'package:openapi/src/api/gauge_type_api.dart';
import 'package:openapi/src/api/gauge_type_weight_api.dart';
import 'package:openapi/src/api/gauge_weight_api.dart';
import 'package:openapi/src/api/gauge_weight_vote_api.dart';
import 'package:openapi/src/api/gauge_withdraw_api.dart';
import 'package:openapi/src/api/hour_data_api.dart';
import 'package:openapi/src/api/hourly_volume_api.dart';
import 'package:openapi/src/api/liquidity_position_api.dart';
import 'package:openapi/src/api/liquidity_position_snapshots_api.dart';
import 'package:openapi/src/api/lp_token_api.dart';
import 'package:openapi/src/api/mints_api.dart';
import 'package:openapi/src/api/orders_api.dart';
import 'package:openapi/src/api/poi_api.dart';
import 'package:openapi/src/api/pool_day_data_api.dart';
import 'package:openapi/src/api/pool_hour_data_api.dart';
import 'package:openapi/src/api/pools_api.dart';
import 'package:openapi/src/api/position_snapshot_api.dart';
import 'package:openapi/src/api/positions_api.dart';
import 'package:openapi/src/api/prices_api.dart';
import 'package:openapi/src/api/settlement_api.dart';
import 'package:openapi/src/api/solution_api.dart';
import 'package:openapi/src/api/stats_api.dart';
import 'package:openapi/src/api/sushiswap_api.dart';
import 'package:openapi/src/api/swaps_api.dart';
import 'package:openapi/src/api/tick_day_data_api.dart';
import 'package:openapi/src/api/ticks_api.dart';
import 'package:openapi/src/api/token_day_data_api.dart';
import 'package:openapi/src/api/token_hour_data_api.dart';
import 'package:openapi/src/api/tokens_api.dart';
import 'package:openapi/src/api/trades_api.dart';
import 'package:openapi/src/api/transactions_api.dart';
import 'package:openapi/src/api/uniswap_day_data_api.dart';
import 'package:openapi/src/api/uniswap_v2_api.dart';
import 'package:openapi/src/api/uniswap_v3_api.dart';
import 'package:openapi/src/api/users_api.dart';
import 'package:openapi/src/api/withdraw_api.dart';
import 'package:openapi/src/api/withdraw_request_api.dart';

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

  /// Get AccountsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AccountsApi getAccountsApi() {
    return AccountsApi(dio, serializers);
  }

  /// Get AddLiquidityEventApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AddLiquidityEventApi getAddLiquidityEventApi() {
    return AddLiquidityEventApi(dio, serializers);
  }

  /// Get AdminFeeChangeLogApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AdminFeeChangeLogApi getAdminFeeChangeLogApi() {
    return AdminFeeChangeLogApi(dio, serializers);
  }

  /// Get AmplificationCoeffChangeLogApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AmplificationCoeffChangeLogApi getAmplificationCoeffChangeLogApi() {
    return AmplificationCoeffChangeLogApi(dio, serializers);
  }

  /// Get BatchApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BatchApi getBatchApi() {
    return BatchApi(dio, serializers);
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

  /// Get CoinsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CoinsApi getCoinsApi() {
    return CoinsApi(dio, serializers);
  }

  /// Get ContractsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ContractsApi getContractsApi() {
    return ContractsApi(dio, serializers);
  }

  /// Get ContractsVersionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ContractsVersionApi getContractsVersionApi() {
    return ContractsVersionApi(dio, serializers);
  }

  /// Get DailyVolumeApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DailyVolumeApi getDailyVolumeApi() {
    return DailyVolumeApi(dio, serializers);
  }

  /// Get DayDataApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DayDataApi getDayDataApi() {
    return DayDataApi(dio, serializers);
  }

  /// Get DepositApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DepositApi getDepositApi() {
    return DepositApi(dio, serializers);
  }

  /// Get FactoryApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FactoryApi getFactoryApi() {
    return FactoryApi(dio, serializers);
  }

  /// Get FeeChangeLogApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FeeChangeLogApi getFeeChangeLogApi() {
    return FeeChangeLogApi(dio, serializers);
  }

  /// Get GaugeApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  GaugeApi getGaugeApi() {
    return GaugeApi(dio, serializers);
  }

  /// Get GaugeDepositApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  GaugeDepositApi getGaugeDepositApi() {
    return GaugeDepositApi(dio, serializers);
  }

  /// Get GaugeLiquidityApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  GaugeLiquidityApi getGaugeLiquidityApi() {
    return GaugeLiquidityApi(dio, serializers);
  }

  /// Get GaugeTotalWeightApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  GaugeTotalWeightApi getGaugeTotalWeightApi() {
    return GaugeTotalWeightApi(dio, serializers);
  }

  /// Get GaugeTypeApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  GaugeTypeApi getGaugeTypeApi() {
    return GaugeTypeApi(dio, serializers);
  }

  /// Get GaugeTypeWeightApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  GaugeTypeWeightApi getGaugeTypeWeightApi() {
    return GaugeTypeWeightApi(dio, serializers);
  }

  /// Get GaugeWeightApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  GaugeWeightApi getGaugeWeightApi() {
    return GaugeWeightApi(dio, serializers);
  }

  /// Get GaugeWeightVoteApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  GaugeWeightVoteApi getGaugeWeightVoteApi() {
    return GaugeWeightVoteApi(dio, serializers);
  }

  /// Get GaugeWithdrawApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  GaugeWithdrawApi getGaugeWithdrawApi() {
    return GaugeWithdrawApi(dio, serializers);
  }

  /// Get HourDataApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  HourDataApi getHourDataApi() {
    return HourDataApi(dio, serializers);
  }

  /// Get HourlyVolumeApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  HourlyVolumeApi getHourlyVolumeApi() {
    return HourlyVolumeApi(dio, serializers);
  }

  /// Get LiquidityPositionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LiquidityPositionApi getLiquidityPositionApi() {
    return LiquidityPositionApi(dio, serializers);
  }

  /// Get LiquidityPositionSnapshotsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LiquidityPositionSnapshotsApi getLiquidityPositionSnapshotsApi() {
    return LiquidityPositionSnapshotsApi(dio, serializers);
  }

  /// Get LpTokenApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LpTokenApi getLpTokenApi() {
    return LpTokenApi(dio, serializers);
  }

  /// Get MintsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MintsApi getMintsApi() {
    return MintsApi(dio, serializers);
  }

  /// Get OrdersApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  OrdersApi getOrdersApi() {
    return OrdersApi(dio, serializers);
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

  /// Get PricesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PricesApi getPricesApi() {
    return PricesApi(dio, serializers);
  }

  /// Get SettlementApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SettlementApi getSettlementApi() {
    return SettlementApi(dio, serializers);
  }

  /// Get SolutionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SolutionApi getSolutionApi() {
    return SolutionApi(dio, serializers);
  }

  /// Get StatsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  StatsApi getStatsApi() {
    return StatsApi(dio, serializers);
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

  /// Get TransactionsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TransactionsApi getTransactionsApi() {
    return TransactionsApi(dio, serializers);
  }

  /// Get UniswapDayDataApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UniswapDayDataApi getUniswapDayDataApi() {
    return UniswapDayDataApi(dio, serializers);
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

  /// Get UsersApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UsersApi getUsersApi() {
    return UsersApi(dio, serializers);
  }

  /// Get WithdrawApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WithdrawApi getWithdrawApi() {
    return WithdrawApi(dio, serializers);
  }

  /// Get WithdrawRequestApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WithdrawRequestApi getWithdrawRequestApi() {
    return WithdrawRequestApi(dio, serializers);
  }
}
