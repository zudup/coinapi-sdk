import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for BurnsApi
void main() {
  final instance = Openapi().getBurnsApi();

  group(BurnsApi, () {
    //Future chainsChainIdDappsSushiswapBurnsHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test chainsChainIdDappsSushiswapBurnsHistoricalGet', () async {
      // TODO
    });

    //Future chainsChainIdDappsUniswapv2BurnsHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test chainsChainIdDappsUniswapv2BurnsHistoricalGet', () async {
      // TODO
    });

    //Future chainsChainIdDappsUniswapv3BurnsHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test chainsChainIdDappsUniswapv3BurnsHistoricalGet', () async {
      // TODO
    });

  });
}
