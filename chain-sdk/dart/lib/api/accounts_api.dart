//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AccountsApi {
  AccountsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /chains/{chain_id}/dapps/curve/accounts/historical' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<Response> chainsChainIdDappsCurveAccountsHistoricalGetWithHttpInfo(String chainId, { int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/chains/{chain_id}/dapps/curve/accounts/historical'
      .replaceAll('{chain_id}', chainId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startBlock != null) {
      queryParams.addAll(_queryParams('', 'startBlock', startBlock));
    }
    if (endBlock != null) {
      queryParams.addAll(_queryParams('', 'endBlock', endBlock));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] chainId (required):
  ///
  /// * [int] startBlock:
  ///
  /// * [int] endBlock:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<void> chainsChainIdDappsCurveAccountsHistoricalGet(String chainId, { int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, }) async {
    final response = await chainsChainIdDappsCurveAccountsHistoricalGetWithHttpInfo(chainId,  startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
