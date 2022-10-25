import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for DepositApi
void main() {
  final instance = Openapi().getDepositApi();

  group(DepositApi, () {
    //Future chainsChainIdDappsDexTokensHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test chainsChainIdDappsDexTokensHistoricalGet', () async {
      // TODO
    });

  });
}
