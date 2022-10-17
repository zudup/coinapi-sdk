//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/big_integer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'token_v2_dto.g.dart';

/// TokenV2DTO
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] 
/// * [vid] 
/// * [id] 
/// * [symbol] 
/// * [name] 
/// * [decimals] 
/// * [totalSupply] 
/// * [tradeVolume] 
/// * [tradeVolumeUsd] 
/// * [untrackedVolumeUsd] 
/// * [txCount] 
/// * [totalLiquidity] 
/// * [derivedEth] 
/// * [tokenSymbol] 
@BuiltValue()
abstract class TokenV2DTO implements Built<TokenV2DTO, TokenV2DTOBuilder> {
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

  @BuiltValueField(wireName: r'symbol')
  String? get symbol;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'decimals')
  int? get decimals;

  @BuiltValueField(wireName: r'total_supply')
  BigInteger? get totalSupply;

  @BuiltValueField(wireName: r'trade_volume')
  String? get tradeVolume;

  @BuiltValueField(wireName: r'trade_volume_usd')
  String? get tradeVolumeUsd;

  @BuiltValueField(wireName: r'untracked_volume_usd')
  String? get untrackedVolumeUsd;

  @BuiltValueField(wireName: r'tx_count')
  BigInteger? get txCount;

  @BuiltValueField(wireName: r'total_liquidity')
  String? get totalLiquidity;

  @BuiltValueField(wireName: r'derived_eth')
  String? get derivedEth;

  @BuiltValueField(wireName: r'token_symbol')
  String? get tokenSymbol;

  TokenV2DTO._();

  factory TokenV2DTO([void updates(TokenV2DTOBuilder b)]) = _$TokenV2DTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TokenV2DTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TokenV2DTO> get serializer => _$TokenV2DTOSerializer();
}

class _$TokenV2DTOSerializer implements PrimitiveSerializer<TokenV2DTO> {
  @override
  final Iterable<Type> types = const [TokenV2DTO, _$TokenV2DTO];

  @override
  final String wireName = r'TokenV2DTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TokenV2DTO object, {
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
    if (object.symbol != null) {
      yield r'symbol';
      yield serializers.serialize(
        object.symbol,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.decimals != null) {
      yield r'decimals';
      yield serializers.serialize(
        object.decimals,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalSupply != null) {
      yield r'total_supply';
      yield serializers.serialize(
        object.totalSupply,
        specifiedType: const FullType(BigInteger),
      );
    }
    if (object.tradeVolume != null) {
      yield r'trade_volume';
      yield serializers.serialize(
        object.tradeVolume,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tradeVolumeUsd != null) {
      yield r'trade_volume_usd';
      yield serializers.serialize(
        object.tradeVolumeUsd,
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
    if (object.txCount != null) {
      yield r'tx_count';
      yield serializers.serialize(
        object.txCount,
        specifiedType: const FullType(BigInteger),
      );
    }
    if (object.totalLiquidity != null) {
      yield r'total_liquidity';
      yield serializers.serialize(
        object.totalLiquidity,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.derivedEth != null) {
      yield r'derived_eth';
      yield serializers.serialize(
        object.derivedEth,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tokenSymbol != null) {
      yield r'token_symbol';
      yield serializers.serialize(
        object.tokenSymbol,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TokenV2DTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TokenV2DTOBuilder result,
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
        case r'symbol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.symbol = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'decimals':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.decimals = valueDes;
          break;
        case r'total_supply':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BigInteger),
          ) as BigInteger;
          result.totalSupply.replace(valueDes);
          break;
        case r'trade_volume':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tradeVolume = valueDes;
          break;
        case r'trade_volume_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tradeVolumeUsd = valueDes;
          break;
        case r'untracked_volume_usd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.untrackedVolumeUsd = valueDes;
          break;
        case r'tx_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BigInteger),
          ) as BigInteger;
          result.txCount.replace(valueDes);
          break;
        case r'total_liquidity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.totalLiquidity = valueDes;
          break;
        case r'derived_eth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.derivedEth = valueDes;
          break;
        case r'token_symbol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tokenSymbol = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TokenV2DTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TokenV2DTOBuilder();
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

