//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ETradeAggressiveSide {
  /// Instantiate a new enum with the provided [value].
  const ETradeAggressiveSide._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const buy = ETradeAggressiveSide._(r'Buy');
  static const sell = ETradeAggressiveSide._(r'Sell');
  static const estimatedBuy = ETradeAggressiveSide._(r'EstimatedBuy');
  static const estimatedSell = ETradeAggressiveSide._(r'EstimatedSell');
  static const unknown = ETradeAggressiveSide._(r'Unknown');

  /// List of all possible values in this [enum][ETradeAggressiveSide].
  static const values = <ETradeAggressiveSide>[
    buy,
    sell,
    estimatedBuy,
    estimatedSell,
    unknown,
  ];

  static ETradeAggressiveSide? fromJson(dynamic value) => ETradeAggressiveSideTypeTransformer().decode(value);

  static List<ETradeAggressiveSide>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ETradeAggressiveSide>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ETradeAggressiveSide.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ETradeAggressiveSide] to String,
/// and [decode] dynamic data back to [ETradeAggressiveSide].
class ETradeAggressiveSideTypeTransformer {
  factory ETradeAggressiveSideTypeTransformer() => _instance ??= const ETradeAggressiveSideTypeTransformer._();

  const ETradeAggressiveSideTypeTransformer._();

  String encode(ETradeAggressiveSide data) => data.value;

  /// Decodes a [dynamic value][data] to a ETradeAggressiveSide.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ETradeAggressiveSide? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Buy': return ETradeAggressiveSide.buy;
        case r'Sell': return ETradeAggressiveSide.sell;
        case r'EstimatedBuy': return ETradeAggressiveSide.estimatedBuy;
        case r'EstimatedSell': return ETradeAggressiveSide.estimatedSell;
        case r'Unknown': return ETradeAggressiveSide.unknown;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ETradeAggressiveSideTypeTransformer] instance.
  static ETradeAggressiveSideTypeTransformer? _instance;
}

