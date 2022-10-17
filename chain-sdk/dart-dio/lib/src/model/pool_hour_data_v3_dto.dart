//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pool_hour_data_v3_dto.g.dart';

/// PoolHourDataV3DTO
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] 
/// * [id] 
/// * [periodStartUnix] 
/// * [pool] 
/// * [liquidity] 
/// * [sqrtPrice] 
/// * [token0Price] 
/// * [token1Price] 
/// * [tick] 
/// * [feeGrowthGlobal0x128] 
/// * [feeGrowthGlobal1x128] 
/// * [tvlUsd] 
/// * [volumeToken0] 
/// * [volumeToken1] 
/// * [volumeUsd] 
/// * [feesUsd] 
/// * [txCount] 
/// * [open] 
/// * [high] 
/// * [low] 
/// * [close] 
/// * [vid] 
@BuiltValue()
abstract class PoolHourDataV3DTO implements Built<PoolHourDataV3DTO, PoolHourDataV3DTOBuilder> {
  @BuiltValueField(wireName: r'entry_time')
  DateTime? get entryTime;

  @BuiltValueField(wireName: r'recv_time')
  DateTime? get recvTime;

  @BuiltValueField(wireName: r'block_number')
  int? get blockNumber;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'period_start_unix')
  int? get periodStartUnix;

  @BuiltValueField(wireName: r'pool')
  String? get pool;

  @BuiltValueField(wireName: r'liquidity')
  String? get liquidity;

  @BuiltValueField(wireName: r'sqrt_price')
  String? get sqrtPrice;

  @BuiltValueField(wireName: r'token_0_price')
  String? get token0Price;

  @BuiltValueField(wireName: r'token_1_price')
  String? get token1Price;

  @BuiltValueField(wireName: r'tick')
  String? get tick;

  @BuiltValueField(wireName: r'fee_growth_global_0x128')
  String? get feeGrowthGlobal0x128;

  @BuiltValueField(wireName: r'fee_growth_global_1x128')
  String? get feeGrowthGlobal1x128;

  @BuiltValueField(wireName: r'tvl_usd')
  String? get tvlUsd;

  @BuiltValueField(wireName: r'volume_token_0')
  String? get volumeToken0;

  @BuiltValueField(wireName: r'volume_token_1')
  String? get volumeToken1;

  @BuiltValueField(wireName: r'volume_usd')
  String? get volumeUsd;

  @BuiltValueField(wireName: r'fees_usd')
  String? get feesUsd;

  @BuiltValueField(wireName: r'tx_count')
  String? get txCount;

  @BuiltValueField(wireName: r'open')
  String? get open;

  @BuiltValueField(wireName: r'high')
  String? get high;

  @BuiltValueField(wireName: r'low')
  String? get low;

  @BuiltValueField(wireName: r'close')
  String? get close;

  @BuiltValueField(wireName: r'vid')
  int? get vid;

  PoolHourDataV3DTO._();

  factory PoolHourDataV3DTO([void updates(PoolHourDataV3DTOBuilder b)]) = _$PoolHourDataV3DTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PoolHourDataV3DTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PoolHourDataV3DTO> get serializer => _$PoolHourDataV3DTOSerializer();
}

class _$PoolHourDataV3DTOSerializer implements PrimitiveSerializer<PoolHourDataV3DTO> {
  @override
  final Iterable<Type> types = const [PoolHourDataV3DTO, _$PoolHourDataV3DTO];

  @override
  final String wireName = r'PoolHourDataV3DTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PoolHourDataV3DTO object, {
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
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.periodStartUnix != null) {
      yield r'period_start_unix';
      yield serializers.serialize(
        object.periodStartUnix,
        specifiedType: const FullType(int),
      );
    }
    if (object.pool != null) {
      yield r'pool';
      yield serializers.serialize(
        object.pool,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.liquidity != null) {
      yield r'liquidity';
      yield serializers.serialize(
        object.liquidity,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sqrtPrice != null) {
      yield r'sqrt_price';
      yield serializers.serialize(
        object.sqrtPrice,
        specifiedType: const FullType.nullable(String),
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
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.feeGrowthGlobal0x128 != null) {
      yield r'fee_growth_global_0x128';
      yield serializers.serialize(
        object.feeGrowthGlobal0x128,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.feeGrowthGlobal1x128 != null) {
      yield r'fee_growth_global_1x128';
      yield serializers.serialize(
        object.feeGrowthGlobal1x128,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tvlUsd != null) {
      yield r'tvl_usd';
      yield serializers.serialize(
        object.tvlUsd,
        specifiedType: const FullType.nullable(String),
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
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.open != null) {
      yield r'open';
      yield serializers.serialize(
        object.open,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.high != null) {
      yield r'high';
      yield serializers.serialize(
        object.high,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.low != null) {
      yield r'low';
      yield serializers.serialize(
        object.low,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.close != null) {
      yield r'close';
      yield serializers.serialize(
        object.close,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.vid != null) {
      yield r'vid';
      yield serializers.serialize(
        object.vid,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PoolHourDataV3DTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PoolHourDataV3DTOBuilder result,
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
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'period_start_unix':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.periodStartUnix = valueDes;
          break;
        case r'pool':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pool = valueDes;
          break;
        case r'liquidity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.liquidity = valueDes;
          break;
        case r'sqrt_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sqrtPrice = valueDes;
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
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tick = valueDes;
          break;
        case r'fee_growth_global_0x128':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.feeGrowthGlobal0x128 = valueDes;
          break;
        case r'fee_growth_global_1x128':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.feeGrowthGlobal1x128 = valueDes;
          break;
        case r'tvl_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tvlUsd = valueDes;
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
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.txCount = valueDes;
          break;
        case r'open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.open = valueDes;
          break;
        case r'high':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.high = valueDes;
          break;
        case r'low':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.low = valueDes;
          break;
        case r'close':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.close = valueDes;
          break;
        case r'vid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.vid = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PoolHourDataV3DTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PoolHourDataV3DTOBuilder();
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

