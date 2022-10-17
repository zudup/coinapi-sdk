import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for SwapsApi
void main() {
  final instance = Openapi().getSwapsApi();

  group(SwapsApi, () {
    //Future chainsChainIdDappsCurveSwapsHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test chainsChainIdDappsCurveSwapsHistoricalGet', () async {
      // TODO
    });

    //Future chainsChainIdDappsSushiswapSwapsHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test chainsChainIdDappsSushiswapSwapsHistoricalGet', () async {
      // TODO
    });

    //Future chainsChainIdDappsUniswapv2SwapsHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test chainsChainIdDappsUniswapv2SwapsHistoricalGet', () async {
      // TODO
    });

    //Future chainsChainIdDappsUniswapv3SwapsHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test chainsChainIdDappsUniswapv3SwapsHistoricalGet', () async {
      // TODO
    });

  });
}
