import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for MintApi
void main() {
  final instance = Openapi().getMintApi();

  group(MintApi, () {
    //Future chainsChainIdDappsUniswapv2MintHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test chainsChainIdDappsUniswapv2MintHistoricalGet', () async {
      // TODO
    });

  });
}
