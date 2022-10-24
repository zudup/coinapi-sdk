import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for MintsApi
void main() {
  final instance = Openapi().getMintsApi();

  group(MintsApi, () {
    //Future chainsChainIdDappsSushiswapMintsHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test chainsChainIdDappsSushiswapMintsHistoricalGet', () async {
      // TODO
    });

    //Future chainsChainIdDappsUniswapv2MintsHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test chainsChainIdDappsUniswapv2MintsHistoricalGet', () async {
      // TODO
    });

    //Future chainsChainIdDappsUniswapv3MintsHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test chainsChainIdDappsUniswapv3MintsHistoricalGet', () async {
      // TODO
    });

  });
}
