import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for TickDayDataApi
void main() {
  final instance = Openapi().getTickDayDataApi();

  group(TickDayDataApi, () {
    //Future chainsChainIdDappsUniswapv3TickDayDataHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test chainsChainIdDappsUniswapv3TickDayDataHistoricalGet', () async {
      // TODO
    });

  });
}
