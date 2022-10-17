//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PoolDayDataV3DTO {
  /// Returns a new [PoolDayDataV3DTO] instance.
  PoolDayDataV3DTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.date,
    this.pool,
    this.liquidity,
    this.sqrtPrice,
    this.token0Price,
    this.token1Price,
    this.tick,
    this.feeGrowthGlobal0x128,
    this.feeGrowthGlobal1x128,
    this.tvlUsd,
    this.volumeToken0,
    this.volumeToken1,
    this.volumeUsd,
    this.feesUsd,
    this.txCount,
    this.open,
    this.high,
    this.low,
    this.close,
    this.vid,
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

  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? date;

  String? pool;

  String? liquidity;

  String? sqrtPrice;

  String? token0Price;

  String? token1Price;

  String? tick;

  String? feeGrowthGlobal0x128;

  String? feeGrowthGlobal1x128;

  String? tvlUsd;

  String? volumeToken0;

  String? volumeToken1;

  String? volumeUsd;

  String? feesUsd;

  String? txCount;

  String? open;

  String? high;

  String? low;

  String? close;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PoolDayDataV3DTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.date == date &&
     other.pool == pool &&
     other.liquidity == liquidity &&
     other.sqrtPrice == sqrtPrice &&
     other.token0Price == token0Price &&
     other.token1Price == token1Price &&
     other.tick == tick &&
     other.feeGrowthGlobal0x128 == feeGrowthGlobal0x128 &&
     other.feeGrowthGlobal1x128 == feeGrowthGlobal1x128 &&
     other.tvlUsd == tvlUsd &&
     other.volumeToken0 == volumeToken0 &&
     other.volumeToken1 == volumeToken1 &&
     other.volumeUsd == volumeUsd &&
     other.feesUsd == feesUsd &&
     other.txCount == txCount &&
     other.open == open &&
     other.high == high &&
     other.low == low &&
     other.close == close &&
     other.vid == vid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (pool == null ? 0 : pool!.hashCode) +
    (liquidity == null ? 0 : liquidity!.hashCode) +
    (sqrtPrice == null ? 0 : sqrtPrice!.hashCode) +
    (token0Price == null ? 0 : token0Price!.hashCode) +
    (token1Price == null ? 0 : token1Price!.hashCode) +
    (tick == null ? 0 : tick!.hashCode) +
    (feeGrowthGlobal0x128 == null ? 0 : feeGrowthGlobal0x128!.hashCode) +
    (feeGrowthGlobal1x128 == null ? 0 : feeGrowthGlobal1x128!.hashCode) +
    (tvlUsd == null ? 0 : tvlUsd!.hashCode) +
    (volumeToken0 == null ? 0 : volumeToken0!.hashCode) +
    (volumeToken1 == null ? 0 : volumeToken1!.hashCode) +
    (volumeUsd == null ? 0 : volumeUsd!.hashCode) +
    (feesUsd == null ? 0 : feesUsd!.hashCode) +
    (txCount == null ? 0 : txCount!.hashCode) +
    (open == null ? 0 : open!.hashCode) +
    (high == null ? 0 : high!.hashCode) +
    (low == null ? 0 : low!.hashCode) +
    (close == null ? 0 : close!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'PoolDayDataV3DTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, date=$date, pool=$pool, liquidity=$liquidity, sqrtPrice=$sqrtPrice, token0Price=$token0Price, token1Price=$token1Price, tick=$tick, feeGrowthGlobal0x128=$feeGrowthGlobal0x128, feeGrowthGlobal1x128=$feeGrowthGlobal1x128, tvlUsd=$tvlUsd, volumeToken0=$volumeToken0, volumeToken1=$volumeToken1, volumeUsd=$volumeUsd, feesUsd=$feesUsd, txCount=$txCount, open=$open, high=$high, low=$low, close=$close, vid=$vid]';

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
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.date != null) {
      json[r'date'] = this.date;
    } else {
      json[r'date'] = null;
    }
    if (this.pool != null) {
      json[r'pool'] = this.pool;
    } else {
      json[r'pool'] = null;
    }
    if (this.liquidity != null) {
      json[r'liquidity'] = this.liquidity;
    } else {
      json[r'liquidity'] = null;
    }
    if (this.sqrtPrice != null) {
      json[r'sqrt_price'] = this.sqrtPrice;
    } else {
      json[r'sqrt_price'] = null;
    }
    if (this.token0Price != null) {
      json[r'token_0_price'] = this.token0Price;
    } else {
      json[r'token_0_price'] = null;
    }
    if (this.token1Price != null) {
      json[r'token_1_price'] = this.token1Price;
    } else {
      json[r'token_1_price'] = null;
    }
    if (this.tick != null) {
      json[r'tick'] = this.tick;
    } else {
      json[r'tick'] = null;
    }
    if (this.feeGrowthGlobal0x128 != null) {
      json[r'fee_growth_global_0x128'] = this.feeGrowthGlobal0x128;
    } else {
      json[r'fee_growth_global_0x128'] = null;
    }
    if (this.feeGrowthGlobal1x128 != null) {
      json[r'fee_growth_global_1x128'] = this.feeGrowthGlobal1x128;
    } else {
      json[r'fee_growth_global_1x128'] = null;
    }
    if (this.tvlUsd != null) {
      json[r'tvl_usd'] = this.tvlUsd;
    } else {
      json[r'tvl_usd'] = null;
    }
    if (this.volumeToken0 != null) {
      json[r'volume_token_0'] = this.volumeToken0;
    } else {
      json[r'volume_token_0'] = null;
    }
    if (this.volumeToken1 != null) {
      json[r'volume_token_1'] = this.volumeToken1;
    } else {
      json[r'volume_token_1'] = null;
    }
    if (this.volumeUsd != null) {
      json[r'volume_usd'] = this.volumeUsd;
    } else {
      json[r'volume_usd'] = null;
    }
    if (this.feesUsd != null) {
      json[r'fees_usd'] = this.feesUsd;
    } else {
      json[r'fees_usd'] = null;
    }
    if (this.txCount != null) {
      json[r'tx_count'] = this.txCount;
    } else {
      json[r'tx_count'] = null;
    }
    if (this.open != null) {
      json[r'open'] = this.open;
    } else {
      json[r'open'] = null;
    }
    if (this.high != null) {
      json[r'high'] = this.high;
    } else {
      json[r'high'] = null;
    }
    if (this.low != null) {
      json[r'low'] = this.low;
    } else {
      json[r'low'] = null;
    }
    if (this.close != null) {
      json[r'close'] = this.close;
    } else {
      json[r'close'] = null;
    }
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    return json;
  }

  /// Returns a new [PoolDayDataV3DTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PoolDayDataV3DTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PoolDayDataV3DTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PoolDayDataV3DTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PoolDayDataV3DTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        date: mapValueOfType<int>(json, r'date'),
        pool: mapValueOfType<String>(json, r'pool'),
        liquidity: mapValueOfType<String>(json, r'liquidity'),
        sqrtPrice: mapValueOfType<String>(json, r'sqrt_price'),
        token0Price: mapValueOfType<String>(json, r'token_0_price'),
        token1Price: mapValueOfType<String>(json, r'token_1_price'),
        tick: mapValueOfType<String>(json, r'tick'),
        feeGrowthGlobal0x128: mapValueOfType<String>(json, r'fee_growth_global_0x128'),
        feeGrowthGlobal1x128: mapValueOfType<String>(json, r'fee_growth_global_1x128'),
        tvlUsd: mapValueOfType<String>(json, r'tvl_usd'),
        volumeToken0: mapValueOfType<String>(json, r'volume_token_0'),
        volumeToken1: mapValueOfType<String>(json, r'volume_token_1'),
        volumeUsd: mapValueOfType<String>(json, r'volume_usd'),
        feesUsd: mapValueOfType<String>(json, r'fees_usd'),
        txCount: mapValueOfType<String>(json, r'tx_count'),
        open: mapValueOfType<String>(json, r'open'),
        high: mapValueOfType<String>(json, r'high'),
        low: mapValueOfType<String>(json, r'low'),
        close: mapValueOfType<String>(json, r'close'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<PoolDayDataV3DTO>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PoolDayDataV3DTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PoolDayDataV3DTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PoolDayDataV3DTO> mapFromJson(dynamic json) {
    final map = <String, PoolDayDataV3DTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PoolDayDataV3DTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PoolDayDataV3DTO-objects as value to a dart map
  static Map<String, List<PoolDayDataV3DTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PoolDayDataV3DTO>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PoolDayDataV3DTO.listFromJson(entry.value, growable: growable,);
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

