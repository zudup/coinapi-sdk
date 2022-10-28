//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/big_integer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pool_v3_dto.g.dart';

/// PoolV3DTO
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] - 
/// * [vid] - 
/// * [id] - 
/// * [createdAtTimestamp] - 
/// * [token0] - 
/// * [token1] - 
/// * [feeTier] 
/// * [liquidity] 
/// * [sqrtPrice] 
/// * [feeGrowthGlobal0x128] 
/// * [feeGrowthGlobal1x128] 
/// * [token0Price] - 
/// * [token1Price] - 
/// * [tick] 
/// * [observationIndex] 
/// * [volumeToken0] - 
/// * [volumeToken1] - 
/// * [volumeUsd] - 
/// * [untrackedVolumeUsd] - 
/// * [feesUsd] - 
/// * [txCount] 
/// * [collectedFeesToken0] - 
/// * [collectedFeesToken1] - 
/// * [collectedFeesUsd] - 
/// * [totalValueLockedToken0] - 
/// * [totalValueLockedToken1] - 
/// * [totalValueLockedEth] - 
/// * [totalValueLockedUsd] - 
/// * [totalValueLockedUsdUntracked] - 
/// * [liquidityProviderCount] - 
/// * [evaluatedAsk] 
@BuiltValue()
abstract class PoolV3DTO implements Built<PoolV3DTO, PoolV3DTOBuilder> {
  @BuiltValueField(wireName: r'entry_time')
  DateTime? get entryTime;

  @BuiltValueField(wireName: r'recv_time')
  DateTime? get recvTime;

  /// 
  @BuiltValueField(wireName: r'block_number')
  int? get blockNumber;

  /// 
  @BuiltValueField(wireName: r'vid')
  int? get vid;

  /// 
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// 
  @BuiltValueField(wireName: r'created_at_timestamp')
  DateTime? get createdAtTimestamp;

  /// 
  @BuiltValueField(wireName: r'token_0')
  String? get token0;

  /// 
  @BuiltValueField(wireName: r'token_1')
  String? get token1;

  @BuiltValueField(wireName: r'fee_tier')
  BigInteger? get feeTier;

  @BuiltValueField(wireName: r'liquidity')
  BigInteger? get liquidity;

  @BuiltValueField(wireName: r'sqrt_price')
  BigInteger? get sqrtPrice;

  @BuiltValueField(wireName: r'fee_growth_global_0x128')
  BigInteger? get feeGrowthGlobal0x128;

  @BuiltValueField(wireName: r'fee_growth_global_1x128')
  BigInteger? get feeGrowthGlobal1x128;

  /// 
  @BuiltValueField(wireName: r'token_0_price')
  String? get token0Price;

  /// 
  @BuiltValueField(wireName: r'token_1_price')
  String? get token1Price;

  @BuiltValueField(wireName: r'tick')
  BigInteger? get tick;

  @BuiltValueField(wireName: r'observation_index')
  BigInteger? get observationIndex;

  /// 
  @BuiltValueField(wireName: r'volume_token_0')
  String? get volumeToken0;

  /// 
  @BuiltValueField(wireName: r'volume_token_1')
  String? get volumeToken1;

  /// 
  @BuiltValueField(wireName: r'volume_usd')
  String? get volumeUsd;

  /// 
  @BuiltValueField(wireName: r'untracked_volume_usd')
  String? get untrackedVolumeUsd;

  /// 
  @BuiltValueField(wireName: r'fees_usd')
  String? get feesUsd;

  @BuiltValueField(wireName: r'tx_count')
  BigInteger? get txCount;

  /// 
  @BuiltValueField(wireName: r'collected_fees_token_0')
  String? get collectedFeesToken0;

  /// 
  @BuiltValueField(wireName: r'collected_fees_token_1')
  String? get collectedFeesToken1;

  /// 
  @BuiltValueField(wireName: r'collected_fees_usd')
  String? get collectedFeesUsd;

  /// 
  @BuiltValueField(wireName: r'total_value_locked_token_0')
  String? get totalValueLockedToken0;

  /// 
  @BuiltValueField(wireName: r'total_value_locked_token_1')
  String? get totalValueLockedToken1;

  /// 
  @BuiltValueField(wireName: r'total_value_locked_eth')
  String? get totalValueLockedEth;

  /// 
  @BuiltValueField(wireName: r'total_value_locked_usd')
  String? get totalValueLockedUsd;

  /// 
  @BuiltValueField(wireName: r'total_value_locked_usd_untracked')
  String? get totalValueLockedUsdUntracked;

  /// 
  @BuiltValueField(wireName: r'liquidity_provider_count')
  String? get liquidityProviderCount;

  @BuiltValueField(wireName: r'evaluated_ask')
  double? get evaluatedAsk;

  PoolV3DTO._();

  factory PoolV3DTO([void updates(PoolV3DTOBuilder b)]) = _$PoolV3DTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PoolV3DTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PoolV3DTO> get serializer => _$PoolV3DTOSerializer();
}

class _$PoolV3DTOSerializer implements PrimitiveSerializer<PoolV3DTO> {
  @override
  final Iterable<Type> types = const [PoolV3DTO, _$PoolV3DTO];

  @override
  final String wireName = r'PoolV3DTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PoolV3DTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.entryTime != null) {
      yield r'entry_time';
      yield serializers.serialize(
        object.entryTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.recvTime != null) {
      yield r'recv_time';
      yield serializers.serialize(
        object.recvTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.blockNumber != null) {
      yield r'block_number';
      yield serializers.serialize(
        object.blockNumber,
        specifiedType: const FullType(int),
      );
    }
    if (object.vid != null) {
      yield r'vid';
      yield serializers.serialize(
        object.vid,
        specifiedType: const FullType(int),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.createdAtTimestamp != null) {
      yield r'created_at_timestamp';
      yield serializers.serialize(
        object.createdAtTimestamp,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.token0 != null) {
      yield r'token_0';
      yield serializers.serialize(
        object.token0,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.token1 != null) {
      yield r'token_1';
      yield serializers.serialize(
        object.token1,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.feeTier != null) {
      yield r'fee_tier';
      yield serializers.serialize(
        object.feeTier,
        specifiedType: const FullType(BigInteger),
      );
    }
    if (object.liquidity != null) {
      yield r'liquidity';
      yield serializers.serialize(
        object.liquidity,
        specifiedType: const FullType(BigInteger),
      );
    }
    if (object.sqrtPrice != null) {
      yield r'sqrt_price';
      yield serializers.serialize(
        object.sqrtPrice,
        specifiedType: const FullType(BigInteger),
      );
    }
    if (object.feeGrowthGlobal0x128 != null) {
      yield r'fee_growth_global_0x128';
      yield serializers.serialize(
        object.feeGrowthGlobal0x128,
        specifiedType: const FullType(BigInteger),
      );
    }
    if (object.feeGrowthGlobal1x128 != null) {
      yield r'fee_growth_global_1x128';
      yield serializers.serialize(
        object.feeGrowthGlobal1x128,
        specifiedType: const FullType(BigInteger),
      );
    }
    if (object.token0Price != null) {
      yield r'token_0_price';
      yield serializers.serialize(
        object.token0Price,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.token1Price != null) {
      yield r'token_1_price';
      yield serializers.serialize(
        object.token1Price,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tick != null) {
      yield r'tick';
      yield serializers.serialize(
        object.tick,
        specifiedType: const FullType(BigInteger),
      );
    }
    if (object.observationIndex != null) {
      yield r'observation_index';
      yield serializers.serialize(
        object.observationIndex,
        specifiedType: const FullType(BigInteger),
      );
    }
    if (object.volumeToken0 != null) {
      yield r'volume_token_0';
      yield serializers.serialize(
        object.volumeToken0,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.volumeToken1 != null) {
      yield r'volume_token_1';
      yield serializers.serialize(
        object.volumeToken1,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.volumeUsd != null) {
      yield r'volume_usd';
      yield serializers.serialize(
        object.volumeUsd,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.untrackedVolumeUsd != null) {
      yield r'untracked_volume_usd';
      yield serializers.serialize(
        object.untrackedVolumeUsd,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.feesUsd != null) {
      yield r'fees_usd';
      yield serializers.serialize(
        object.feesUsd,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.txCount != null) {
      yield r'tx_count';
      yield serializers.serialize(
        object.txCount,
        specifiedType: const FullType(BigInteger),
      );
    }
    if (object.collectedFeesToken0 != null) {
      yield r'collected_fees_token_0';
      yield serializers.serialize(
        object.collectedFeesToken0,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.collectedFeesToken1 != null) {
      yield r'collected_fees_token_1';
      yield serializers.serialize(
        object.collectedFeesToken1,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.collectedFeesUsd != null) {
      yield r'collected_fees_usd';
      yield serializers.serialize(
        object.collectedFeesUsd,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.totalValueLockedToken0 != null) {
      yield r'total_value_locked_token_0';
      yield serializers.serialize(
        object.totalValueLockedToken0,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.totalValueLockedToken1 != null) {
      yield r'total_value_locked_token_1';
      yield serializers.serialize(
        object.totalValueLockedToken1,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.totalValueLockedEth != null) {
      yield r'total_value_locked_eth';
      yield serializers.serialize(
        object.totalValueLockedEth,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.totalValueLockedUsd != null) {
      yield r'total_value_locked_usd';
      yield serializers.serialize(
        object.totalValueLockedUsd,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.totalValueLockedUsdUntracked != null) {
      yield r'total_value_locked_usd_untracked';
      yield serializers.serialize(
        object.totalValueLockedUsdUntracked,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.liquidityProviderCount != null) {
      yield r'liquidity_provider_count';
      yield serializers.serialize(
        object.liquidityProviderCount,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.evaluatedAsk != null) {
      yield r'evaluated_ask';
      yield serializers.serialize(
        object.evaluatedAsk,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PoolV3DTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PoolV3DTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entry_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.entryTime = valueDes;
          break;
        case r'recv_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.recvTime = valueDes;
          break;
        case r'block_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.blockNumber = valueDes;
          break;
        case r'vid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.vid = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'created_at_timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAtTimestamp = valueDes;
          break;
        case r'token_0':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.token0 = valueDes;
          break;
        case r'token_1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.token1 = valueDes;
          break;
        case r'fee_tier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BigInteger),
          ) as BigInteger;
          result.feeTier.replace(valueDes);
          break;
        case r'liquidity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BigInteger),
          ) as BigInteger;
          result.liquidity.replace(valueDes);
          break;
        case r'sqrt_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BigInteger),
          ) as BigInteger;
          result.sqrtPrice.replace(valueDes);
          break;
        case r'fee_growth_global_0x128':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BigInteger),
          ) as BigInteger;
          result.feeGrowthGlobal0x128.replace(valueDes);
          break;
        case r'fee_growth_global_1x128':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BigInteger),
          ) as BigInteger;
          result.feeGrowthGlobal1x128.replace(valueDes);
          break;
        case r'token_0_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.token0Price = valueDes;
          break;
        case r'token_1_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.token1Price = valueDes;
          break;
        case r'tick':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BigInteger),
          ) as BigInteger;
          result.tick.replace(valueDes);
          break;
        case r'observation_index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BigInteger),
          ) as BigInteger;
          result.observationIndex.replace(valueDes);
          break;
        case r'volume_token_0':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.volumeToken0 = valueDes;
          break;
        case r'volume_token_1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.volumeToken1 = valueDes;
          break;
        case r'volume_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.volumeUsd = valueDes;
          break;
        case r'untracked_volume_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.untrackedVolumeUsd = valueDes;
          break;
        case r'fees_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.feesUsd = valueDes;
          break;
        case r'tx_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BigInteger),
          ) as BigInteger;
          result.txCount.replace(valueDes);
          break;
        case r'collected_fees_token_0':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.collectedFeesToken0 = valueDes;
          break;
        case r'collected_fees_token_1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.collectedFeesToken1 = valueDes;
          break;
        case r'collected_fees_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.collectedFeesUsd = valueDes;
          break;
        case r'total_value_locked_token_0':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.totalValueLockedToken0 = valueDes;
          break;
        case r'total_value_locked_token_1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.totalValueLockedToken1 = valueDes;
          break;
        case r'total_value_locked_eth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.totalValueLockedEth = valueDes;
          break;
        case r'total_value_locked_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.totalValueLockedUsd = valueDes;
          break;
        case r'total_value_locked_usd_untracked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.totalValueLockedUsdUntracked = valueDes;
          break;
        case r'liquidity_provider_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.liquidityProviderCount = valueDes;
          break;
        case r'evaluated_ask':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.evaluatedAsk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PoolV3DTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PoolV3DTOBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

