import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for PoiApi
void main() {
  final instance = Openapi().getPoiApi();

  group(PoiApi, () {
    //Future chainsChainIdDappsSushiswapPoiHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test chainsChainIdDappsSushiswapPoiHistoricalGet', () async {
      // TODO
    });

    //Future chainsChainIdDappsUniswapv2PoiHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test chainsChainIdDappsUniswapv2PoiHistoricalGet', () async {
      // TODO
    });

    //Future chainsChainIdDappsUniswapv3PoiHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test chainsChainIdDappsUniswapv3PoiHistoricalGet', () async {
      // TODO
    });

  });
}
