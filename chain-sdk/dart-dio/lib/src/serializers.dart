//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/numerics_big_integer.dart';
import 'package:openapi/src/model/sushiswap_bundle_dto.dart';
import 'package:openapi/src/model/sushiswap_burn_dto.dart';
import 'package:openapi/src/model/sushiswap_day_data_dto.dart';
import 'package:openapi/src/model/sushiswap_factory_dto.dart';
import 'package:openapi/src/model/sushiswap_hour_data_dto.dart';
import 'package:openapi/src/model/sushiswap_liquidity_position_dto.dart';
import 'package:openapi/src/model/sushiswap_liquidity_position_snapshot_dto.dart';
import 'package:openapi/src/model/sushiswap_mint_dto.dart';
import 'package:openapi/src/model/sushiswap_pair_dto.dart';
import 'package:openapi/src/model/sushiswap_pair_day_data_dto.dart';
import 'package:openapi/src/model/sushiswap_pair_hour_data_dto.dart';
import 'package:openapi/src/model/sushiswap_swap_dto.dart';
import 'package:openapi/src/model/sushiswap_token_dto.dart';
import 'package:openapi/src/model/sushiswap_token_day_data_dto.dart';
import 'package:openapi/src/model/sushiswap_transaction_dto.dart';
import 'package:openapi/src/model/sushiswap_user_dto.dart';
import 'package:openapi/src/model/transactions_e_trade_aggressive_side.dart';
import 'package:openapi/src/model/uniswap_v2_pair_v2_dto.dart';
import 'package:openapi/src/model/uniswap_v2_swap_v2_dto.dart';
import 'package:openapi/src/model/uniswap_v2_token_v2_dto.dart';
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
import 'package:openapi/src/model/uniswap_v3_token_v3_dto.dart';
import 'package:openapi/src/model/uniswap_v3_token_v3_day_data_dto.dart';
import 'package:openapi/src/model/uniswap_v3_uniswap_day_data_v3_dto.dart';

part 'serializers.g.dart';

@SerializersFor([
  NumericsBigInteger,
  SushiswapBundleDTO,
  SushiswapBurnDTO,
  SushiswapDayDataDTO,
  SushiswapFactoryDTO,
  SushiswapHourDataDTO,
  SushiswapLiquidityPositionDTO,
  SushiswapLiquidityPositionSnapshotDTO,
  SushiswapMintDTO,
  SushiswapPairDTO,
  SushiswapPairDayDataDTO,
  SushiswapPairHourDataDTO,
  SushiswapSwapDTO,
  SushiswapTokenDTO,
  SushiswapTokenDayDataDTO,
  SushiswapTransactionDTO,
  SushiswapUserDTO,
  TransactionsETradeAggressiveSide,
  UniswapV2PairV2DTO,
  UniswapV2SwapV2DTO,
  UniswapV2TokenV2DTO,
  UniswapV3BundleV3DTO,
  UniswapV3BurnV3DTO,
  UniswapV3FactoryV3DTO,
  UniswapV3MintV3DTO,
  UniswapV3PoolDayDataV3DTO,
  UniswapV3PoolHourDataV3DTO,
  UniswapV3PoolV3DTO,
  UniswapV3PositionSnapshotV3DTO,
  UniswapV3PositionV3DTO,
  UniswapV3SwapV3DTO,
  UniswapV3TickDayDataV3DTO,
  UniswapV3TickV3DTO,
  UniswapV3TokenHourDataV3DTO,
  UniswapV3TokenV3DTO,
  UniswapV3TokenV3DayDataDTO,
  UniswapV3UniswapDayDataV3DTO,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UniswapV3PoolDayDataV3DTO)]),
        () => ListBuilder<UniswapV3PoolDayDataV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UniswapV3TickV3DTO)]),
        () => ListBuilder<UniswapV3TickV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SushiswapFactoryDTO)]),
        () => ListBuilder<SushiswapFactoryDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UniswapV3MintV3DTO)]),
        () => ListBuilder<UniswapV3MintV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UniswapV3UniswapDayDataV3DTO)]),
        () => ListBuilder<UniswapV3UniswapDayDataV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UniswapV3PositionV3DTO)]),
        () => ListBuilder<UniswapV3PositionV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UniswapV3PoolHourDataV3DTO)]),
        () => ListBuilder<UniswapV3PoolHourDataV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SushiswapHourDataDTO)]),
        () => ListBuilder<SushiswapHourDataDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UniswapV3SwapV3DTO)]),
        () => ListBuilder<UniswapV3SwapV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SushiswapTransactionDTO)]),
        () => ListBuilder<SushiswapTransactionDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UniswapV2PairV2DTO)]),
        () => ListBuilder<UniswapV2PairV2DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UniswapV3BurnV3DTO)]),
        () => ListBuilder<UniswapV3BurnV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UniswapV3PositionSnapshotV3DTO)]),
        () => ListBuilder<UniswapV3PositionSnapshotV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SushiswapBundleDTO)]),
        () => ListBuilder<SushiswapBundleDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UniswapV3TickDayDataV3DTO)]),
        () => ListBuilder<UniswapV3TickDayDataV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SushiswapPairHourDataDTO)]),
        () => ListBuilder<SushiswapPairHourDataDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UniswapV3FactoryV3DTO)]),
        () => ListBuilder<UniswapV3FactoryV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UniswapV3BundleV3DTO)]),
        () => ListBuilder<UniswapV3BundleV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SushiswapPairDayDataDTO)]),
        () => ListBuilder<SushiswapPairDayDataDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SushiswapUserDTO)]),
        () => ListBuilder<SushiswapUserDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UniswapV2TokenV2DTO)]),
        () => ListBuilder<UniswapV2TokenV2DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UniswapV3TokenV3DTO)]),
        () => ListBuilder<UniswapV3TokenV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SushiswapTokenDayDataDTO)]),
        () => ListBuilder<SushiswapTokenDayDataDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UniswapV3TokenV3DayDataDTO)]),
        () => ListBuilder<UniswapV3TokenV3DayDataDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UniswapV3PoolV3DTO)]),
        () => ListBuilder<UniswapV3PoolV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SushiswapDayDataDTO)]),
        () => ListBuilder<SushiswapDayDataDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SushiswapLiquidityPositionDTO)]),
        () => ListBuilder<SushiswapLiquidityPositionDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SushiswapLiquidityPositionSnapshotDTO)]),
        () => ListBuilder<SushiswapLiquidityPositionSnapshotDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SushiswapBurnDTO)]),
        () => ListBuilder<SushiswapBurnDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SushiswapPairDTO)]),
        () => ListBuilder<SushiswapPairDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SushiswapTokenDTO)]),
        () => ListBuilder<SushiswapTokenDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UniswapV2SwapV2DTO)]),
        () => ListBuilder<UniswapV2SwapV2DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UniswapV3TokenHourDataV3DTO)]),
        () => ListBuilder<UniswapV3TokenHourDataV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SushiswapSwapDTO)]),
        () => ListBuilder<SushiswapSwapDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SushiswapMintDTO)]),
        () => ListBuilder<SushiswapMintDTO>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
