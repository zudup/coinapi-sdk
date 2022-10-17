//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'factory_v3_dto.g.dart';

/// FactoryV3DTO
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] 
/// * [id] 
/// * [poolCount] 
/// * [txCount] 
/// * [totalVolumeUsd] 
/// * [totalVolumeEth] 
/// * [totalFeesUsd] 
/// * [totalFeesEth] 
/// * [untrackedVolumeUsd] 
/// * [totalValueLockedUsd] 
/// * [totalValueLockedEth] 
/// * [totalValueLockedUsdUntracked] 
/// * [totalValueLockedEthUntracked] 
/// * [owner] 
/// * [vid] 
@BuiltValue()
abstract class FactoryV3DTO implements Built<FactoryV3DTO, FactoryV3DTOBuilder> {
  @BuiltValueField(wireName: r'entry_time')
  DateTime? get entryTime;

  @BuiltValueField(wireName: r'recv_time')
  DateTime? get recvTime;

  @BuiltValueField(wireName: r'block_number')
  int? get blockNumber;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'pool_count')
  String? get poolCount;

  @BuiltValueField(wireName: r'tx_count')
  String? get txCount;

  @BuiltValueField(wireName: r'total_volume_usd')
  String? get totalVolumeUsd;

  @BuiltValueField(wireName: r'total_volume_eth')
  String? get totalVolumeEth;

  @BuiltValueField(wireName: r'total_fees_usd')
  String? get totalFeesUsd;

  @BuiltValueField(wireName: r'total_fees_eth')
  String? get totalFeesEth;

  @BuiltValueField(wireName: r'untracked_volume_usd')
  String? get untrackedVolumeUsd;

  @BuiltValueField(wireName: r'total_value_locked_usd')
  String? get totalValueLockedUsd;

  @BuiltValueField(wireName: r'total_value_locked_eth')
  String? get totalValueLockedEth;

  @BuiltValueField(wireName: r'total_value_locked_usd_untracked')
  String? get totalValueLockedUsdUntracked;

  @BuiltValueField(wireName: r'total_value_locked_eth_untracked')
  String? get totalValueLockedEthUntracked;

  @BuiltValueField(wireName: r'owner')
  String? get owner;

  @BuiltValueField(wireName: r'vid')
  int? get vid;

  FactoryV3DTO._();

  factory FactoryV3DTO([void updates(FactoryV3DTOBuilder b)]) = _$FactoryV3DTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FactoryV3DTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FactoryV3DTO> get serializer => _$FactoryV3DTOSerializer();
}

class _$FactoryV3DTOSerializer implements PrimitiveSerializer<FactoryV3DTO> {
  @override
  final Iterable<Type> types = const [FactoryV3DTO, _$FactoryV3DTO];

  @override
  final String wireName = r'FactoryV3DTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FactoryV3DTO object, {
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
    if (object.poolCount != null) {
      yield r'pool_count';
      yield serializers.serialize(
        object.poolCount,
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
    if (object.totalVolumeUsd != null) {
      yield r'total_volume_usd';
      yield serializers.serialize(
        object.totalVolumeUsd,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.totalVolumeEth != null) {
      yield r'total_volume_eth';
      yield serializers.serialize(
        object.totalVolumeEth,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.totalFeesUsd != null) {
      yield r'total_fees_usd';
      yield serializers.serialize(
        object.totalFeesUsd,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.totalFeesEth != null) {
      yield r'total_fees_eth';
      yield serializers.serialize(
        object.totalFeesEth,
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
    if (object.totalValueLockedUsd != null) {
      yield r'total_value_locked_usd';
      yield serializers.serialize(
        object.totalValueLockedUsd,
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
    if (object.totalValueLockedUsdUntracked != null) {
      yield r'total_value_locked_usd_untracked';
      yield serializers.serialize(
        object.totalValueLockedUsdUntracked,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.totalValueLockedEthUntracked != null) {
      yield r'total_value_locked_eth_untracked';
      yield serializers.serialize(
        object.totalValueLockedEthUntracked,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.owner != null) {
      yield r'owner';
      yield serializers.serialize(
        object.owner,
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
    FactoryV3DTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FactoryV3DTOBuilder result,
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
        case r'pool_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.poolCount = valueDes;
          break;
        case r'tx_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.txCount = valueDes;
          break;
        case r'total_volume_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.totalVolumeUsd = valueDes;
          break;
        case r'total_volume_eth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.totalVolumeEth = valueDes;
          break;
        case r'total_fees_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.totalFeesUsd = valueDes;
          break;
        case r'total_fees_eth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.totalFeesEth = valueDes;
          break;
        case r'untracked_volume_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.untrackedVolumeUsd = valueDes;
          break;
        case r'total_value_locked_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.totalValueLockedUsd = valueDes;
          break;
        case r'total_value_locked_eth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.totalValueLockedEth = valueDes;
          break;
        case r'total_value_locked_usd_untracked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.totalValueLockedUsdUntracked = valueDes;
          break;
        case r'total_value_locked_eth_untracked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.totalValueLockedEthUntracked = valueDes;
          break;
        case r'owner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.owner = valueDes;
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
  FactoryV3DTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FactoryV3DTOBuilder();
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

