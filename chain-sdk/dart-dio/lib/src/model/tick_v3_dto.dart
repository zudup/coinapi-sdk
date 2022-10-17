//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/big_integer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tick_v3_dto.g.dart';

/// TickV3DTO
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] 
/// * [vid] 
/// * [id] 
/// * [poolAddress] 
/// * [tickIdx] 
/// * [pool] 
/// * [liquidityGross] 
/// * [liquidityNet] 
/// * [price0] 
/// * [price1] 
/// * [volumeToken0] 
/// * [volumeToken1] 
/// * [volumeUsd] 
/// * [untrackedVolumeUsd] 
/// * [feesUsd] 
/// * [collectedFeesToken0] 
/// * [collectedFeesToken1] 
/// * [collectedFeesUsd] 
/// * [createdAtTimestamp] 
/// * [liquidityProviderCount] 
/// * [feeGrowthOutside0x128] 
/// * [feeGrowthOutside1x128] 
@BuiltValue()
abstract class TickV3DTO implements Built<TickV3DTO, TickV3DTOBuilder> {
  @BuiltValueField(wireName: r'entry_time')
  DateTime? get entryTime;

  @BuiltValueField(wireName: r'recv_time')
  DateTime? get recvTime;

  @BuiltValueField(wireName: r'block_number')
  int? get blockNumber;

  @BuiltValueField(wireName: r'vid')
  int? get vid;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'pool_address')
  String? get poolAddress;

  @BuiltValueField(wireName: r'tick_idx')
  BigInteger? get tickIdx;

  @BuiltValueField(wireName: r'pool')
  String? get pool;

  @BuiltValueField(wireName: r'liquidity_gross')
  BigInteger? get liquidityGross;

  @BuiltValueField(wireName: r'liquidity_net')
  BigInteger? get liquidityNet;

  @BuiltValueField(wireName: r'price_0')
  String? get price0;

  @BuiltValueField(wireName: r'price_1')
  String? get price1;

  @BuiltValueField(wireName: r'volume_token_0')
  String? get volumeToken0;

  @BuiltValueField(wireName: r'volume_token_1')
  String? get volumeToken1;

  @BuiltValueField(wireName: r'volume_usd')
  String? get volumeUsd;

  @BuiltValueField(wireName: r'untracked_volume_usd')
  String? get untrackedVolumeUsd;

  @BuiltValueField(wireName: r'fees_usd')
  String? get feesUsd;

  @BuiltValueField(wireName: r'collected_fees_token_0')
  String? get collectedFeesToken0;

  @BuiltValueField(wireName: r'collected_fees_token_1')
  String? get collectedFeesToken1;

  @BuiltValueField(wireName: r'collected_fees_usd')
  String? get collectedFeesUsd;

  @BuiltValueField(wireName: r'created_at_timestamp')
  DateTime? get createdAtTimestamp;

  @BuiltValueField(wireName: r'liquidity_provider_count')
  BigInteger? get liquidityProviderCount;

  @BuiltValueField(wireName: r'fee_growth_outside_0x128')
  BigInteger? get feeGrowthOutside0x128;

  @BuiltValueField(wireName: r'fee_growth_outside_1x128')
  BigInteger? get feeGrowthOutside1x128;

  TickV3DTO._();

  factory TickV3DTO([void updates(TickV3DTOBuilder b)]) = _$TickV3DTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TickV3DTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TickV3DTO> get serializer => _$TickV3DTOSerializer();
}

class _$TickV3DTOSerializer implements PrimitiveSerializer<TickV3DTO> {
  @override
  final Iterable<Type> types = const [TickV3DTO, _$TickV3DTO];

  @override
  final String wireName = r'TickV3DTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TickV3DTO object, {
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
    if (object.poolAddress != null) {
      yield r'pool_address';
      yield serializers.serialize(
        object.poolAddress,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tickIdx != null) {
      yield r'tick_idx';
      yield serializers.serialize(
        object.tickIdx,
        specifiedType: const FullType(BigInteger),
      );
    }
    if (object.pool != null) {
      yield r'pool';
      yield serializers.serialize(
        object.pool,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.liquidityGross != null) {
      yield r'liquidity_gross';
      yield serializers.serialize(
        object.liquidityGross,
        specifiedType: const FullType(BigInteger),
      );
    }
    if (object.liquidityNet != null) {
      yield r'liquidity_net';
      yield serializers.serialize(
        object.liquidityNet,
        specifiedType: const FullType(BigInteger),
      );
    }
    if (object.price0 != null) {
      yield r'price_0';
      yield serializers.serialize(
        object.price0,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.price1 != null) {
      yield r'price_1';
      yield serializers.serialize(
        object.price1,
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
    if (object.createdAtTimestamp != null) {
      yield r'created_at_timestamp';
      yield serializers.serialize(
        object.createdAtTimestamp,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.liquidityProviderCount != null) {
      yield r'liquidity_provider_count';
      yield serializers.serialize(
        object.liquidityProviderCount,
        specifiedType: const FullType(BigInteger),
      );
    }
    if (object.feeGrowthOutside0x128 != null) {
      yield r'fee_growth_outside_0x128';
      yield serializers.serialize(
        object.feeGrowthOutside0x128,
        specifiedType: const FullType(BigInteger),
      );
    }
    if (object.feeGrowthOutside1x128 != null) {
      yield r'fee_growth_outside_1x128';
      yield serializers.serialize(
        object.feeGrowthOutside1x128,
        specifiedType: const FullType(BigInteger),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TickV3DTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TickV3DTOBuilder result,
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
        case r'pool_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.poolAddress = valueDes;
          break;
        case r'tick_idx':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BigInteger),
          ) as BigInteger;
          result.tickIdx.replace(valueDes);
          break;
        case r'pool':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pool = valueDes;
          break;
        case r'liquidity_gross':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BigInteger),
          ) as BigInteger;
          result.liquidityGross.replace(valueDes);
          break;
        case r'liquidity_net':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BigInteger),
          ) as BigInteger;
          result.liquidityNet.replace(valueDes);
          break;
        case r'price_0':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.price0 = valueDes;
          break;
        case r'price_1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.price1 = valueDes;
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
        case r'created_at_timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAtTimestamp = valueDes;
          break;
        case r'liquidity_provider_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BigInteger),
          ) as BigInteger;
          result.liquidityProviderCount.replace(valueDes);
          break;
        case r'fee_growth_outside_0x128':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BigInteger),
          ) as BigInteger;
          result.feeGrowthOutside0x128.replace(valueDes);
          break;
        case r'fee_growth_outside_1x128':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BigInteger),
          ) as BigInteger;
          result.feeGrowthOutside1x128.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TickV3DTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TickV3DTOBuilder();
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

