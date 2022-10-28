//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tick_day_data_v3_dto.g.dart';

/// TickDayDataV3DTO
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] - 
/// * [id] - 
/// * [date] - 
/// * [pool] - 
/// * [tick] - 
/// * [liquidityGross] - 
/// * [liquidityNet] - 
/// * [volumeToken0] - 
/// * [volumeToken1] - 
/// * [volumeUsd] - 
/// * [feesUsd] - 
/// * [feeGrowthOutside0x128] - 
/// * [feeGrowthOutside1x128] - 
/// * [vid] - 
@BuiltValue()
abstract class TickDayDataV3DTO implements Built<TickDayDataV3DTO, TickDayDataV3DTOBuilder> {
  @BuiltValueField(wireName: r'entry_time')
  DateTime? get entryTime;

  @BuiltValueField(wireName: r'recv_time')
  DateTime? get recvTime;

  /// 
  @BuiltValueField(wireName: r'block_number')
  int? get blockNumber;

  /// 
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// 
  @BuiltValueField(wireName: r'date')
  int? get date;

  /// 
  @BuiltValueField(wireName: r'pool')
  String? get pool;

  /// 
  @BuiltValueField(wireName: r'tick')
  String? get tick;

  /// 
  @BuiltValueField(wireName: r'liquidity_gross')
  String? get liquidityGross;

  /// 
  @BuiltValueField(wireName: r'liquidity_net')
  String? get liquidityNet;

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
  @BuiltValueField(wireName: r'fees_usd')
  String? get feesUsd;

  /// 
  @BuiltValueField(wireName: r'fee_growth_outside_0x128')
  String? get feeGrowthOutside0x128;

  /// 
  @BuiltValueField(wireName: r'fee_growth_outside_1x128')
  String? get feeGrowthOutside1x128;

  /// 
  @BuiltValueField(wireName: r'vid')
  int? get vid;

  TickDayDataV3DTO._();

  factory TickDayDataV3DTO([void updates(TickDayDataV3DTOBuilder b)]) = _$TickDayDataV3DTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TickDayDataV3DTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TickDayDataV3DTO> get serializer => _$TickDayDataV3DTOSerializer();
}

class _$TickDayDataV3DTOSerializer implements PrimitiveSerializer<TickDayDataV3DTO> {
  @override
  final Iterable<Type> types = const [TickDayDataV3DTO, _$TickDayDataV3DTO];

  @override
  final String wireName = r'TickDayDataV3DTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TickDayDataV3DTO object, {
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
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
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
    if (object.tick != null) {
      yield r'tick';
      yield serializers.serialize(
        object.tick,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.liquidityGross != null) {
      yield r'liquidity_gross';
      yield serializers.serialize(
        object.liquidityGross,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.liquidityNet != null) {
      yield r'liquidity_net';
      yield serializers.serialize(
        object.liquidityNet,
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
    if (object.feeGrowthOutside0x128 != null) {
      yield r'fee_growth_outside_0x128';
      yield serializers.serialize(
        object.feeGrowthOutside0x128,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.feeGrowthOutside1x128 != null) {
      yield r'fee_growth_outside_1x128';
      yield serializers.serialize(
        object.feeGrowthOutside1x128,
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
    TickDayDataV3DTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TickDayDataV3DTOBuilder result,
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
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.date = valueDes;
          break;
        case r'pool':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pool = valueDes;
          break;
        case r'tick':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tick = valueDes;
          break;
        case r'liquidity_gross':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.liquidityGross = valueDes;
          break;
        case r'liquidity_net':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.liquidityNet = valueDes;
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
        case r'fee_growth_outside_0x128':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.feeGrowthOutside0x128 = valueDes;
          break;
        case r'fee_growth_outside_1x128':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.feeGrowthOutside1x128 = valueDes;
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
  TickDayDataV3DTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TickDayDataV3DTOBuilder();
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

