//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TokenV2DTO {
  /// Returns a new [TokenV2DTO] instance.
  TokenV2DTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.vid,
    this.id,
    this.symbol,
    this.name,
    this.decimals,
    this.totalSupply,
    this.tradeVolume,
    this.tradeVolumeUsd,
    this.untrackedVolumeUsd,
    this.txCount,
    this.totalLiquidity,
    this.derivedEth,
    this.tokenSymbol,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? entryTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? recvTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? blockNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  String? id;

  String? symbol;

  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? decimals;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BigInteger? totalSupply;

  String? tradeVolume;

  String? tradeVolumeUsd;

  String? untrackedVolumeUsd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BigInteger? txCount;

  String? totalLiquidity;

  String? derivedEth;

  String? tokenSymbol;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenV2DTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.vid == vid &&
     other.id == id &&
     other.symbol == symbol &&
     other.name == name &&
     other.decimals == decimals &&
     other.totalSupply == totalSupply &&
     other.tradeVolume == tradeVolume &&
     other.tradeVolumeUsd == tradeVolumeUsd &&
     other.untrackedVolumeUsd == untrackedVolumeUsd &&
     other.txCount == txCount &&
     other.totalLiquidity == totalLiquidity &&
     other.derivedEth == derivedEth &&
     other.tokenSymbol == tokenSymbol;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (vid == null ? 0 : vid!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (symbol == null ? 0 : symbol!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (decimals == null ? 0 : decimals!.hashCode) +
    (totalSupply == null ? 0 : totalSupply!.hashCode) +
    (tradeVolume == null ? 0 : tradeVolume!.hashCode) +
    (tradeVolumeUsd == null ? 0 : tradeVolumeUsd!.hashCode) +
    (untrackedVolumeUsd == null ? 0 : untrackedVolumeUsd!.hashCode) +
    (txCount == null ? 0 : txCount!.hashCode) +
    (totalLiquidity == null ? 0 : totalLiquidity!.hashCode) +
    (derivedEth == null ? 0 : derivedEth!.hashCode) +
    (tokenSymbol == null ? 0 : tokenSymbol!.hashCode);

  @override
  String toString() => 'TokenV2DTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, vid=$vid, id=$id, symbol=$symbol, name=$name, decimals=$decimals, totalSupply=$totalSupply, tradeVolume=$tradeVolume, tradeVolumeUsd=$tradeVolumeUsd, untrackedVolumeUsd=$untrackedVolumeUsd, txCount=$txCount, totalLiquidity=$totalLiquidity, derivedEth=$derivedEth, tokenSymbol=$tokenSymbol]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.entryTime != null) {
      json[r'entry_time'] = this.entryTime!.toUtc().toIso8601String();
    } else {
      json[r'entry_time'] = null;
    }
    if (this.recvTime != null) {
      json[r'recv_time'] = this.recvTime!.toUtc().toIso8601String();
    } else {
      json[r'recv_time'] = null;
    }
    if (this.blockNumber != null) {
      json[r'block_number'] = this.blockNumber;
    } else {
      json[r'block_number'] = null;
    }
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.symbol != null) {
      json[r'symbol'] = this.symbol;
    } else {
      json[r'symbol'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.decimals != null) {
      json[r'decimals'] = this.decimals;
    } else {
      json[r'decimals'] = null;
    }
    if (this.totalSupply != null) {
      json[r'total_supply'] = this.totalSupply;
    } else {
      json[r'total_supply'] = null;
    }
    if (this.tradeVolume != null) {
      json[r'trade_volume'] = this.tradeVolume;
    } else {
      json[r'trade_volume'] = null;
    }
    if (this.tradeVolumeUsd != null) {
      json[r'trade_volume_usd'] = this.tradeVolumeUsd;
    } else {
      json[r'trade_volume_usd'] = null;
    }
    if (this.untrackedVolumeUsd != null) {
      json[r'untracked_volume_usd'] = this.untrackedVolumeUsd;
    } else {
      json[r'untracked_volume_usd'] = null;
    }
    if (this.txCount != null) {
      json[r'tx_count'] = this.txCount;
    } else {
      json[r'tx_count'] = null;
    }
    if (this.totalLiquidity != null) {
      json[r'total_liquidity'] = this.totalLiquidity;
    } else {
      json[r'total_liquidity'] = null;
    }
    if (this.derivedEth != null) {
      json[r'derived_eth'] = this.derivedEth;
    } else {
      json[r'derived_eth'] = null;
    }
    if (this.tokenSymbol != null) {
      json[r'token_symbol'] = this.tokenSymbol;
    } else {
      json[r'token_symbol'] = null;
    }
    return json;
  }

  /// Returns a new [TokenV2DTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TokenV2DTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TokenV2DTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TokenV2DTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TokenV2DTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        vid: mapValueOfType<int>(json, r'vid'),
        id: mapValueOfType<String>(json, r'id'),
        symbol: mapValueOfType<String>(json, r'symbol'),
        name: mapValueOfType<String>(json, r'name'),
        decimals: mapValueOfType<int>(json, r'decimals'),
        totalSupply: BigInteger.fromJson(json[r'total_supply']),
        tradeVolume: mapValueOfType<String>(json, r'trade_volume'),
        tradeVolumeUsd: mapValueOfType<String>(json, r'trade_volume_usd'),
        untrackedVolumeUsd: mapValueOfType<String>(json, r'untracked_volume_usd'),
        txCount: BigInteger.fromJson(json[r'tx_count']),
        totalLiquidity: mapValueOfType<String>(json, r'total_liquidity'),
        derivedEth: mapValueOfType<String>(json, r'derived_eth'),
        tokenSymbol: mapValueOfType<String>(json, r'token_symbol'),
      );
    }
    return null;
  }

  static List<TokenV2DTO>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TokenV2DTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TokenV2DTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TokenV2DTO> mapFromJson(dynamic json) {
    final map = <String, TokenV2DTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TokenV2DTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TokenV2DTO-objects as value to a dart map
  static Map<String, List<TokenV2DTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TokenV2DTO>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TokenV2DTO.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

