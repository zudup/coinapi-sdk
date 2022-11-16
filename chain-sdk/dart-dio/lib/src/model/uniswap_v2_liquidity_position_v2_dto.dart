//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'uniswap_v2_liquidity_position_v2_dto.g.dart';

/// This entity is used to store data about a user's liquidity position. This information, along with information from the pair itself can be used to provide position sizes, token deposits, and more.
///
/// Properties:
/// * [entryTime] 
/// * [recvTime] 
/// * [blockNumber] - Number of block in which entity was recorded.
/// * [id] - User address and pair address concatenated with a dash.
/// * [user] - Reference to user.
/// * [pair] - Reference to the pair liquidity is being provided on.
/// * [liquidityTokenBalance] - Amount of LP tokens minted for this position.
/// * [vid] - 
@BuiltValue()
abstract class UniswapV2LiquidityPositionV2DTO implements Built<UniswapV2LiquidityPositionV2DTO, UniswapV2LiquidityPositionV2DTOBuilder> {
  @BuiltValueField(wireName: r'entry_time')
  DateTime? get entryTime;

  @BuiltValueField(wireName: r'recv_time')
  DateTime? get recvTime;

  /// Number of block in which entity was recorded.
  @BuiltValueField(wireName: r'block_number')
  int? get blockNumber;

  /// User address and pair address concatenated with a dash.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Reference to user.
  @BuiltValueField(wireName: r'user')
  String? get user;

  /// Reference to the pair liquidity is being provided on.
  @BuiltValueField(wireName: r'pair')
  String? get pair;

  /// Amount of LP tokens minted for this position.
  @BuiltValueField(wireName: r'liquidity_token_balance')
  String? get liquidityTokenBalance;

  /// 
  @BuiltValueField(wireName: r'vid')
  int? get vid;

  UniswapV2LiquidityPositionV2DTO._();

  factory UniswapV2LiquidityPositionV2DTO([void updates(UniswapV2LiquidityPositionV2DTOBuilder b)]) = _$UniswapV2LiquidityPositionV2DTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UniswapV2LiquidityPositionV2DTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UniswapV2LiquidityPositionV2DTO> get serializer => _$UniswapV2LiquidityPositionV2DTOSerializer();
}

class _$UniswapV2LiquidityPositionV2DTOSerializer implements PrimitiveSerializer<UniswapV2LiquidityPositionV2DTO> {
  @override
  final Iterable<Type> types = const [UniswapV2LiquidityPositionV2DTO, _$UniswapV2LiquidityPositionV2DTO];

  @override
  final String wireName = r'UniswapV2LiquidityPositionV2DTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UniswapV2LiquidityPositionV2DTO object, {
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
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.pair != null) {
      yield r'pair';
      yield serializers.serialize(
        object.pair,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.liquidityTokenBalance != null) {
      yield r'liquidity_token_balance';
      yield serializers.serialize(
        object.liquidityTokenBalance,
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
    UniswapV2LiquidityPositionV2DTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UniswapV2LiquidityPositionV2DTOBuilder result,
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
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.user = valueDes;
          break;
        case r'pair':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pair = valueDes;
          break;
        case r'liquidity_token_balance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.liquidityTokenBalance = valueDes;
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
  UniswapV2LiquidityPositionV2DTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UniswapV2LiquidityPositionV2DTOBuilder();
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

