//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/pools_api.dart';
part 'api/sushiswap_api.dart';
part 'api/swaps_api.dart';
part 'api/tokens_api.dart';
part 'api/trades_api.dart';
part 'api/uniswap_v2_api.dart';
part 'api/uniswap_v3_api.dart';

part 'model/big_integer.dart';
part 'model/bundle_v3_dto.dart';
part 'model/burn_v3_dto.dart';
part 'model/e_trade_aggressive_side.dart';
part 'model/factory_v3_dto.dart';
part 'model/mint_v3_dto.dart';
part 'model/pair_dto.dart';
part 'model/pair_v2_dto.dart';
part 'model/pool_day_data_v3_dto.dart';
part 'model/pool_hour_data_v3_dto.dart';
part 'model/pool_v3_dto.dart';
part 'model/position_snapshot_v3_dto.dart';
part 'model/position_v3_dto.dart';
part 'model/swap_dto.dart';
part 'model/swap_v2_dto.dart';
part 'model/swap_v3_dto.dart';
part 'model/tick_day_data_v3_dto.dart';
part 'model/tick_v3_dto.dart';
part 'model/token_dto.dart';
part 'model/token_hour_data_v3_dto.dart';
part 'model/token_v2_dto.dart';
part 'model/token_v3_dto.dart';
part 'model/token_v3_day_data_dto.dart';
part 'model/uniswap_day_data_v3_dto.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
