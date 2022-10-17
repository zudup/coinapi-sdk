import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for PoolsApi
void main() {
  final instance = Openapi().getPoolsApi();

  group(PoolsApi, () {
    //Future chainsChainIdDappsCurvePoolsHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test chainsChainIdDappsCurvePoolsHistoricalGet', () async {
      // TODO
    });

    //Future chainsChainIdDappsSushiswapPoolsHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test chainsChainIdDappsSushiswapPoolsHistoricalGet', () async {
      // TODO
    });

    //Future chainsChainIdDappsUniswapv2PoolsHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test chainsChainIdDappsUniswapv2PoolsHistoricalGet', () async {
      // TODO
    });

    //Future chainsChainIdDappsUniswapv3PoolsHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test chainsChainIdDappsUniswapv3PoolsHistoricalGet', () async {
      // TODO
    });

  });
}
