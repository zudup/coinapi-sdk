import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for DailyVolumeApi
void main() {
  final instance = Openapi().getDailyVolumeApi();

  group(DailyVolumeApi, () {
    //Future chainsChainIdDappsCurveDailyVolumeHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test chainsChainIdDappsCurveDailyVolumeHistoricalGet', () async {
      // TODO
    });

  });
}
