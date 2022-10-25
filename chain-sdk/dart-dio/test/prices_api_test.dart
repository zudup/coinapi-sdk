import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for PricesApi
void main() {
  final instance = Openapi().getPricesApi();

  group(PricesApi, () {
    //Future chainsChainIdDappsDexPricesHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test chainsChainIdDappsDexPricesHistoricalGet', () async {
      // TODO
    });

  });
}
