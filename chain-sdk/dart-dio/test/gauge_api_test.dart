import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for GaugeApi
void main() {
  final instance = Openapi().getGaugeApi();

  group(GaugeApi, () {
    //Future chainsChainIdDappsCurveGaugeHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test chainsChainIdDappsCurveGaugeHistoricalGet', () async {
      // TODO
    });

  });
}
