import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for TradesApi
void main() {
  final instance = Openapi().getTradesApi();

  group(TradesApi, () {
    //Future chainsChainIdDappsCowTradesHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test chainsChainIdDappsCowTradesHistoricalGet', () async {
      // TODO
    });

    //Future chainsChainIdDappsDexTradesHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test chainsChainIdDappsDexTradesHistoricalGet', () async {
      // TODO
    });

  });
}
