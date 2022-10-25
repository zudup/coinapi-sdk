import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for StatsApi
void main() {
  final instance = Openapi().getStatsApi();

  group(StatsApi, () {
    //Future chainsChainIdDappsDexStatsHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test chainsChainIdDappsDexStatsHistoricalGet', () async {
      // TODO
    });

  });
}
