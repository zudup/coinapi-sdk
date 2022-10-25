import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for UnderlyingCoinApi
void main() {
  final instance = Openapi().getUnderlyingCoinApi();

  group(UnderlyingCoinApi, () {
    //Future chainsChainIdDappsCurveUnderlyingCoinHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test chainsChainIdDappsCurveUnderlyingCoinHistoricalGet', () async {
      // TODO
    });

  });
}
