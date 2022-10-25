import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for AccountsApi
void main() {
  final instance = Openapi().getAccountsApi();

  group(AccountsApi, () {
    //Future chainsChainIdDappsCurveAccountsHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test chainsChainIdDappsCurveAccountsHistoricalGet', () async {
      // TODO
    });

  });
}
