import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for TicksApi
void main() {
  final instance = Openapi().getTicksApi();

  group(TicksApi, () {
    //Future chainsChainIdDappsUniswapv3TicksHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test chainsChainIdDappsUniswapv3TicksHistoricalGet', () async {
      // TODO
    });

  });
}
