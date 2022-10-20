import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for FactoryApi
void main() {
  final instance = Openapi().getFactoryApi();

  group(FactoryApi, () {
    //Future chainsChainIdDappsUniswapv3FactoryHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test chainsChainIdDappsUniswapv3FactoryHistoricalGet', () async {
      // TODO
    });

  });
}
