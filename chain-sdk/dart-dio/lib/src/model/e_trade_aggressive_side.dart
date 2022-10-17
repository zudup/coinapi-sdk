//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'e_trade_aggressive_side.g.dart';

class ETradeAggressiveSide extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Buy')
  static const ETradeAggressiveSide buy = _$buy;
  @BuiltValueEnumConst(wireName: r'Sell')
  static const ETradeAggressiveSide sell = _$sell;
  @BuiltValueEnumConst(wireName: r'EstimatedBuy')
  static const ETradeAggressiveSide estimatedBuy = _$estimatedBuy;
  @BuiltValueEnumConst(wireName: r'EstimatedSell')
  static const ETradeAggressiveSide estimatedSell = _$estimatedSell;
  @BuiltValueEnumConst(wireName: r'Unknown')
  static const ETradeAggressiveSide unknown = _$unknown;

  static Serializer<ETradeAggressiveSide> get serializer => _$eTradeAggressiveSideSerializer;

  const ETradeAggressiveSide._(String name): super(name);

  static BuiltSet<ETradeAggressiveSide> get values => _$values;
  static ETradeAggressiveSide valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ETradeAggressiveSideMixin = Object with _$ETradeAggressiveSideMixin;

