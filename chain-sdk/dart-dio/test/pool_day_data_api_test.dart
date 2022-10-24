import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for PoolDayDataApi
void main() {
  final instance = Openapi().getPoolDayDataApi();

  group(PoolDayDataApi, () {
    //Future chainsChainIdDappsSushiswapPoolDayDataHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test chainsChainIdDappsSushiswapPoolDayDataHistoricalGet', () async {
      // TODO
    });

    //Future chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet', () async {
      // TODO
    });

    //Future chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet', () async {
      // TODO
    });

  });
}
