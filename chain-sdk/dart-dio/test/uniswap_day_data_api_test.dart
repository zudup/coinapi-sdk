import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for UniswapDayDataApi
void main() {
  final instance = Openapi().getUniswapDayDataApi();

  group(UniswapDayDataApi, () {
    //Future chainsChainIdDappsUniswapv2DayDataHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test chainsChainIdDappsUniswapv2DayDataHistoricalGet', () async {
      // TODO
    });

    //Future chainsChainIdDappsUniswapv3DayDataHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test chainsChainIdDappsUniswapv3DayDataHistoricalGet', () async {
      // TODO
    });

  });
}
