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

import 'package:openapi/src/model/big_integer.dart';
import 'package:openapi/src/model/bundle_v3_dto.dart';
import 'package:openapi/src/model/burn_v3_dto.dart';
import 'package:openapi/src/model/e_trade_aggressive_side.dart';
import 'package:openapi/src/model/factory_v3_dto.dart';
import 'package:openapi/src/model/mint_v3_dto.dart';
import 'package:openapi/src/model/pair_dto.dart';
import 'package:openapi/src/model/pair_v2_dto.dart';
import 'package:openapi/src/model/pool_day_data_v3_dto.dart';
import 'package:openapi/src/model/pool_hour_data_v3_dto.dart';
import 'package:openapi/src/model/pool_v3_dto.dart';
import 'package:openapi/src/model/position_snapshot_v3_dto.dart';
import 'package:openapi/src/model/position_v3_dto.dart';
import 'package:openapi/src/model/swap_dto.dart';
import 'package:openapi/src/model/swap_v2_dto.dart';
import 'package:openapi/src/model/swap_v3_dto.dart';
import 'package:openapi/src/model/tick_day_data_v3_dto.dart';
import 'package:openapi/src/model/tick_v3_dto.dart';
import 'package:openapi/src/model/token_dto.dart';
import 'package:openapi/src/model/token_hour_data_v3_dto.dart';
import 'package:openapi/src/model/token_v2_dto.dart';
import 'package:openapi/src/model/token_v3_dto.dart';
import 'package:openapi/src/model/token_v3_day_data_dto.dart';
import 'package:openapi/src/model/uniswap_day_data_v3_dto.dart';

part 'serializers.g.dart';

@SerializersFor([
  BigInteger,
  BundleV3DTO,
  BurnV3DTO,
  ETradeAggressiveSide,
  FactoryV3DTO,
  MintV3DTO,
  PairDTO,
  PairV2DTO,
  PoolDayDataV3DTO,
  PoolHourDataV3DTO,
  PoolV3DTO,
  PositionSnapshotV3DTO,
  PositionV3DTO,
  SwapDTO,
  SwapV2DTO,
  SwapV3DTO,
  TickDayDataV3DTO,
  TickV3DTO,
  TokenDTO,
  TokenHourDataV3DTO,
  TokenV2DTO,
  TokenV3DTO,
  TokenV3DayDataDTO,
  UniswapDayDataV3DTO,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SwapV3DTO)]),
        () => ListBuilder<SwapV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(FactoryV3DTO)]),
        () => ListBuilder<FactoryV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TickDayDataV3DTO)]),
        () => ListBuilder<TickDayDataV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PoolV3DTO)]),
        () => ListBuilder<PoolV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TokenHourDataV3DTO)]),
        () => ListBuilder<TokenHourDataV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SwapV2DTO)]),
        () => ListBuilder<SwapV2DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PairDTO)]),
        () => ListBuilder<PairDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PoolDayDataV3DTO)]),
        () => ListBuilder<PoolDayDataV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PositionSnapshotV3DTO)]),
        () => ListBuilder<PositionSnapshotV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TokenDTO)]),
        () => ListBuilder<TokenDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(BundleV3DTO)]),
        () => ListBuilder<BundleV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(BurnV3DTO)]),
        () => ListBuilder<BurnV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SwapDTO)]),
        () => ListBuilder<SwapDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(MintV3DTO)]),
        () => ListBuilder<MintV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PositionV3DTO)]),
        () => ListBuilder<PositionV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TokenV3DTO)]),
        () => ListBuilder<TokenV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TokenV3DayDataDTO)]),
        () => ListBuilder<TokenV3DayDataDTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TokenV2DTO)]),
        () => ListBuilder<TokenV2DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PoolHourDataV3DTO)]),
        () => ListBuilder<PoolHourDataV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PairV2DTO)]),
        () => ListBuilder<PairV2DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TickV3DTO)]),
        () => ListBuilder<TickV3DTO>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UniswapDayDataV3DTO)]),
        () => ListBuilder<UniswapDayDataV3DTO>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
