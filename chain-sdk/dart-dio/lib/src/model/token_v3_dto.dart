//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/big_integer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'token_v3_dto.g.dart';

/// Stores aggregated information for a specific token across all pairs that token is included in.
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] - 
/// * [vid] - 
/// * [id] - token address
/// * [symbol] - token symbol
/// * [name] - token name
/// * [decimals] - token decimals
/// * [totalSupply] 
/// * [volume] - volume in token units
/// * [volumeUsd] - volume in derived USD
/// * [untrackedVolumeUsd] - volume in USD even on pools with less reliable USD values
/// * [feesUsd] - fees in USD
/// * [txCount] 
/// * [poolCount] 
/// * [totalValueLocked] - liquidity across all pools in token units
/// * [totalValueLockedUsd] - liquidity across all pools in derived USD
/// * [totalValueLockedUsdUntracked] - TVL derived in USD untracked
/// * [derivedEth] - derived price in ETH
/// * [whitelistPools] - pools token is in that are white listed for USD pricing
/// * [tokenSymbol] 
@BuiltValue()
abstract class TokenV3DTO implements Built<TokenV3DTO, TokenV3DTOBuilder> {
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

  /// token address
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// token symbol
  @BuiltValueField(wireName: r'symbol')
  String? get symbol;

  /// token name
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// token decimals
  @BuiltValueField(wireName: r'decimals')
  int? get decimals;

  @BuiltValueField(wireName: r'total_supply')
  BigInteger? get totalSupply;

  /// volume in token units
  @BuiltValueField(wireName: r'volume')
  String? get volume;

  /// volume in derived USD
  @BuiltValueField(wireName: r'volume_usd')
  String? get volumeUsd;

  /// volume in USD even on pools with less reliable USD values
  @BuiltValueField(wireName: r'untracked_volume_usd')
  String? get untrackedVolumeUsd;

  /// fees in USD
  @BuiltValueField(wireName: r'fees_usd')
  String? get feesUsd;

  @BuiltValueField(wireName: r'tx_count')
  BigInteger? get txCount;

  @BuiltValueField(wireName: r'pool_count')
  BigInteger? get poolCount;

  /// liquidity across all pools in token units
  @BuiltValueField(wireName: r'total_value_locked')
  String? get totalValueLocked;

  /// liquidity across all pools in derived USD
  @BuiltValueField(wireName: r'total_value_locked_usd')
  String? get totalValueLockedUsd;

  /// TVL derived in USD untracked
  @BuiltValueField(wireName: r'total_value_locked_usd_untracked')
  String? get totalValueLockedUsdUntracked;

  /// derived price in ETH
  @BuiltValueField(wireName: r'derived_eth')
  String? get derivedEth;

  /// pools token is in that are white listed for USD pricing
  @BuiltValueField(wireName: r'whitelist_pools')
  BuiltList<String>? get whitelistPools;

  @BuiltValueField(wireName: r'token_symbol')
  String? get tokenSymbol;

  TokenV3DTO._();

  factory TokenV3DTO([void updates(TokenV3DTOBuilder b)]) = _$TokenV3DTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TokenV3DTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TokenV3DTO> get serializer => _$TokenV3DTOSerializer();
}

class _$TokenV3DTOSerializer implements PrimitiveSerializer<TokenV3DTO> {
  @override
  final Iterable<Type> types = const [TokenV3DTO, _$TokenV3DTO];

  @override
  final String wireName = r'TokenV3DTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TokenV3DTO object, {
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
    if (object.poolCount != null) {
      yield r'pool_count';
      yield serializers.serialize(
        object.poolCount,
        specifiedType: const FullType(BigInteger),
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
    if (object.totalValueLockedUsdUntracked != null) {
      yield r'total_value_locked_usd_untracked';
      yield serializers.serialize(
        object.totalValueLockedUsdUntracked,
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
    if (object.whitelistPools != null) {
      yield r'whitelist_pools';
      yield serializers.serialize(
        object.whitelistPools,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
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
    TokenV3DTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TokenV3DTOBuilder result,
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
        case r'pool_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BigInteger),
          ) as BigInteger;
          result.poolCount.replace(valueDes);
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
        case r'total_value_locked_usd_untracked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.totalValueLockedUsdUntracked = valueDes;
          break;
        case r'derived_eth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.derivedEth = valueDes;
          break;
        case r'whitelist_pools':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.whitelistPools.replace(valueDes);
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
  TokenV3DTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TokenV3DTOBuilder();
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

