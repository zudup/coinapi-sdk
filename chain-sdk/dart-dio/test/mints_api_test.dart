import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for MintsApi
void main() {
  final instance = Openapi().getMintsApi();

  group(MintsApi, () {
    //Future chainsChainIdDappsUniswapv3MintsHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test chainsChainIdDappsUniswapv3MintsHistoricalGet', () async {
      // TODO
    });

  });
}
