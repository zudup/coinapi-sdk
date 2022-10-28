//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/big_integer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'uniswap_day_data_v3_dto.g.dart';

/// UniswapDayDataV3DTO
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] - 
/// * [vid] - 
/// * [id] - 
/// * [date] - 
/// * [volumeEth] - 
/// * [volumeUsd] - 
/// * [volumeUsdUntracked] - 
/// * [feesUsd] - 
/// * [txCount] 
/// * [tvlUsd] - 
@BuiltValue()
abstract class UniswapDayDataV3DTO implements Built<UniswapDayDataV3DTO, UniswapDayDataV3DTOBuilder> {
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
  @BuiltValueField(wireName: r'date')
  int? get date;

  /// 
  @BuiltValueField(wireName: r'volume_eth')
  String? get volumeEth;

  /// 
  @BuiltValueField(wireName: r'volume_usd')
  String? get volumeUsd;

  /// 
  @BuiltValueField(wireName: r'volume_usd_untracked')
  String? get volumeUsdUntracked;

  /// 
  @BuiltValueField(wireName: r'fees_usd')
  String? get feesUsd;

  @BuiltValueField(wireName: r'tx_count')
  BigInteger? get txCount;

  /// 
  @BuiltValueField(wireName: r'tvl_usd')
  String? get tvlUsd;

  UniswapDayDataV3DTO._();

  factory UniswapDayDataV3DTO([void updates(UniswapDayDataV3DTOBuilder b)]) = _$UniswapDayDataV3DTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UniswapDayDataV3DTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UniswapDayDataV3DTO> get serializer => _$UniswapDayDataV3DTOSerializer();
}

class _$UniswapDayDataV3DTOSerializer implements PrimitiveSerializer<UniswapDayDataV3DTO> {
  @override
  final Iterable<Type> types = const [UniswapDayDataV3DTO, _$UniswapDayDataV3DTO];

  @override
  final String wireName = r'UniswapDayDataV3DTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UniswapDayDataV3DTO object, {
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
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(int),
      );
    }
    if (object.volumeEth != null) {
      yield r'volume_eth';
      yield serializers.serialize(
        object.volumeEth,
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
    if (object.volumeUsdUntracked != null) {
      yield r'volume_usd_untracked';
      yield serializers.serialize(
        object.volumeUsdUntracked,
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
    if (object.tvlUsd != null) {
      yield r'tvl_usd';
      yield serializers.serialize(
        object.tvlUsd,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UniswapDayDataV3DTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UniswapDayDataV3DTOBuilder result,
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
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.date = valueDes;
          break;
        case r'volume_eth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.volumeEth = valueDes;
          break;
        case r'volume_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.volumeUsd = valueDes;
          break;
        case r'volume_usd_untracked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.volumeUsdUntracked = valueDes;
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
        case r'tvl_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tvlUsd = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UniswapDayDataV3DTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UniswapDayDataV3DTOBuilder();
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

