//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BundleV3DTO {
  /// Returns a new [BundleV3DTO] instance.
  BundleV3DTO({
    this.entryTime,
    this.recvTime,
    this.blockNumber,
    this.id,
    this.ethPriceUsd,
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

  /// Number of block in which entity was recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? blockNumber;

  /// 
  String? id;

  /// Price of ETH in usd.
  String? ethPriceUsd;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BundleV3DTO &&
     other.entryTime == entryTime &&
     other.recvTime == recvTime &&
     other.blockNumber == blockNumber &&
     other.id == id &&
     other.ethPriceUsd == ethPriceUsd &&
     other.vid == vid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (blockNumber == null ? 0 : blockNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (ethPriceUsd == null ? 0 : ethPriceUsd!.hashCode) +
    (vid == null ? 0 : vid!.hashCode);

  @override
  String toString() => 'BundleV3DTO[entryTime=$entryTime, recvTime=$recvTime, blockNumber=$blockNumber, id=$id, ethPriceUsd=$ethPriceUsd, vid=$vid]';

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
    if (this.ethPriceUsd != null) {
      json[r'eth_price_usd'] = this.ethPriceUsd;
    } else {
      json[r'eth_price_usd'] = null;
    }
    if (this.vid != null) {
      json[r'vid'] = this.vid;
    } else {
      json[r'vid'] = null;
    }
    return json;
  }

  /// Returns a new [BundleV3DTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BundleV3DTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BundleV3DTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BundleV3DTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BundleV3DTO(
        entryTime: mapDateTime(json, r'entry_time', ''),
        recvTime: mapDateTime(json, r'recv_time', ''),
        blockNumber: mapValueOfType<int>(json, r'block_number'),
        id: mapValueOfType<String>(json, r'id'),
        ethPriceUsd: mapValueOfType<String>(json, r'eth_price_usd'),
        vid: mapValueOfType<int>(json, r'vid'),
      );
    }
    return null;
  }

  static List<BundleV3DTO>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BundleV3DTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BundleV3DTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BundleV3DTO> mapFromJson(dynamic json) {
    final map = <String, BundleV3DTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BundleV3DTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BundleV3DTO-objects as value to a dart map
  static Map<String, List<BundleV3DTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BundleV3DTO>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BundleV3DTO.listFromJson(entry.value, growable: growable,);
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

