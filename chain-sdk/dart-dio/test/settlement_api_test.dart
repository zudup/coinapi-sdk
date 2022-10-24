import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for SettlementApi
void main() {
  final instance = Openapi().getSettlementApi();

  group(SettlementApi, () {
    //Future chainsChainIdDappsCowSettlementHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test chainsChainIdDappsCowSettlementHistoricalGet', () async {
      // TODO
    });

  });
}
