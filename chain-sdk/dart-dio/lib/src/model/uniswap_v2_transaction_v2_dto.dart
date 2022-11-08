//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'uniswap_v2_transaction_v2_dto.g.dart';

/// Transaction entities are created for each Ethereum transaction that contains an interaction within Uniswap contracts. Each transaction contains 3 arrays, and at least one of these arrays has a length of 1.
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] - Number of block in which entity was recorded.
/// * [id] - Ethereum transaction hash.
/// * [timestamp] - Timestamp.
/// * [mints] - Array of Mint events within the transaction, 0 or greater.
/// * [burns] - Array of Burn events within transaction, 0 or greater.
/// * [swaps] - Array of Swap events within transaction, 0 or greater.
/// * [vid] - 
@BuiltValue()
abstract class UniswapV2TransactionV2DTO implements Built<UniswapV2TransactionV2DTO, UniswapV2TransactionV2DTOBuilder> {
  @BuiltValueField(wireName: r'entry_time')
  DateTime? get entryTime;

  @BuiltValueField(wireName: r'recv_time')
  DateTime? get recvTime;

  /// Number of block in which entity was recorded.
  @BuiltValueField(wireName: r'block_number')
  int? get blockNumber;

  /// Ethereum transaction hash.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Timestamp.
  @BuiltValueField(wireName: r'timestamp')
  String? get timestamp;

  /// Array of Mint events within the transaction, 0 or greater.
  @BuiltValueField(wireName: r'mints')
  BuiltList<String>? get mints;

  /// Array of Burn events within transaction, 0 or greater.
  @BuiltValueField(wireName: r'burns')
  BuiltList<String>? get burns;

  /// Array of Swap events within transaction, 0 or greater.
  @BuiltValueField(wireName: r'swaps')
  BuiltList<String>? get swaps;

  /// 
  @BuiltValueField(wireName: r'vid')
  int? get vid;

  UniswapV2TransactionV2DTO._();

  factory UniswapV2TransactionV2DTO([void updates(UniswapV2TransactionV2DTOBuilder b)]) = _$UniswapV2TransactionV2DTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UniswapV2TransactionV2DTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UniswapV2TransactionV2DTO> get serializer => _$UniswapV2TransactionV2DTOSerializer();
}

class _$UniswapV2TransactionV2DTOSerializer implements PrimitiveSerializer<UniswapV2TransactionV2DTO> {
  @override
  final Iterable<Type> types = const [UniswapV2TransactionV2DTO, _$UniswapV2TransactionV2DTO];

  @override
  final String wireName = r'UniswapV2TransactionV2DTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UniswapV2TransactionV2DTO object, {
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
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.mints != null) {
      yield r'mints';
      yield serializers.serialize(
        object.mints,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.burns != null) {
      yield r'burns';
      yield serializers.serialize(
        object.burns,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.swaps != null) {
      yield r'swaps';
      yield serializers.serialize(
        object.swaps,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
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
    UniswapV2TransactionV2DTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UniswapV2TransactionV2DTOBuilder result,
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
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.timestamp = valueDes;
          break;
        case r'mints':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.mints.replace(valueDes);
          break;
        case r'burns':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.burns.replace(valueDes);
          break;
        case r'swaps':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.swaps.replace(valueDes);
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
  UniswapV2TransactionV2DTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UniswapV2TransactionV2DTOBuilder();
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

