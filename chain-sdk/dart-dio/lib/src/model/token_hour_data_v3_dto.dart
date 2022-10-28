//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'token_hour_data_v3_dto.g.dart';

/// Token data aggregated across all pairs that include token.
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] - 
/// * [id] - token address concatendated with date
/// * [periodStartUnix] - unix timestamp for start of hour
/// * [token] - pointer to token
/// * [volume] - volume in token units
/// * [volumeUsd] - volume in derived USD
/// * [untrackedVolumeUsd] - volume in USD even on pools with less reliable USD values
/// * [totalValueLocked] - liquidity across all pools in token units
/// * [totalValueLockedUsd] - liquidity across all pools in derived USD
/// * [priceUsd] - price at end of period in USD
/// * [feesUsd] - fees in USD
/// * [open] - opening price USD
/// * [high] - high price USD
/// * [low] - low price USD
/// * [close] - close price USD
/// * [vid] - 
@BuiltValue()
abstract class TokenHourDataV3DTO implements Built<TokenHourDataV3DTO, TokenHourDataV3DTOBuilder> {
  @BuiltValueField(wireName: r'entry_time')
  DateTime? get entryTime;

  @BuiltValueField(wireName: r'recv_time')
  DateTime? get recvTime;

  /// 
  @BuiltValueField(wireName: r'block_number')
  int? get blockNumber;

  /// token address concatendated with date
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// unix timestamp for start of hour
  @BuiltValueField(wireName: r'period_start_unix')
  int? get periodStartUnix;

  /// pointer to token
  @BuiltValueField(wireName: r'token')
  String? get token;

  /// volume in token units
  @BuiltValueField(wireName: r'volume')
  String? get volume;

  /// volume in derived USD
  @BuiltValueField(wireName: r'volume_usd')
  String? get volumeUsd;

  /// volume in USD even on pools with less reliable USD values
  @BuiltValueField(wireName: r'untracked_volume_usd')
  String? get untrackedVolumeUsd;

  /// liquidity across all pools in token units
  @BuiltValueField(wireName: r'total_value_locked')
  String? get totalValueLocked;

  /// liquidity across all pools in derived USD
  @BuiltValueField(wireName: r'total_value_locked_usd')
  String? get totalValueLockedUsd;

  /// price at end of period in USD
  @BuiltValueField(wireName: r'price_usd')
  String? get priceUsd;

  /// fees in USD
  @BuiltValueField(wireName: r'fees_usd')
  String? get feesUsd;

  /// opening price USD
  @BuiltValueField(wireName: r'open')
  String? get open;

  /// high price USD
  @BuiltValueField(wireName: r'high')
  String? get high;

  /// low price USD
  @BuiltValueField(wireName: r'low')
  String? get low;

  /// close price USD
  @BuiltValueField(wireName: r'close')
  String? get close;

  /// 
  @BuiltValueField(wireName: r'vid')
  int? get vid;

  TokenHourDataV3DTO._();

  factory TokenHourDataV3DTO([void updates(TokenHourDataV3DTOBuilder b)]) = _$TokenHourDataV3DTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TokenHourDataV3DTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TokenHourDataV3DTO> get serializer => _$TokenHourDataV3DTOSerializer();
}

class _$TokenHourDataV3DTOSerializer implements PrimitiveSerializer<TokenHourDataV3DTO> {
  @override
  final Iterable<Type> types = const [TokenHourDataV3DTO, _$TokenHourDataV3DTO];

  @override
  final String wireName = r'TokenHourDataV3DTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TokenHourDataV3DTO object, {
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
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.volume != null) {
      yield r'volume';
      yield serializers.serialize(
        object.volume,
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
    if (object.totalValueLocked != null) {
      yield r'total_value_locked';
      yield serializers.serialize(
        object.totalValueLocked,
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
    if (object.priceUsd != null) {
      yield r'price_usd';
      yield serializers.serialize(
        object.priceUsd,
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
    TokenHourDataV3DTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TokenHourDataV3DTOBuilder result,
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
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.token = valueDes;
          break;
        case r'volume':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.volume = valueDes;
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
        case r'total_value_locked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.totalValueLocked = valueDes;
          break;
        case r'total_value_locked_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.totalValueLockedUsd = valueDes;
          break;
        case r'price_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.priceUsd = valueDes;
          break;
        case r'fees_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.feesUsd = valueDes;
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
  TokenHourDataV3DTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TokenHourDataV3DTOBuilder();
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

