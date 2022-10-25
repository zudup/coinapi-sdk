import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for LpTokenApi
void main() {
  final instance = Openapi().getLpTokenApi();

  group(LpTokenApi, () {
    //Future chainsChainIdDappsCurveLpTokenHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test chainsChainIdDappsCurveLpTokenHistoricalGet', () async {
      // TODO
    });

  });
}
