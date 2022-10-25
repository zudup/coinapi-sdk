import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for SystemStateApi
void main() {
  final instance = Openapi().getSystemStateApi();

  group(SystemStateApi, () {
    //Future chainsChainIdDappsCurveSystemStateHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test chainsChainIdDappsCurveSystemStateHistoricalGet', () async {
      // TODO
    });

  });
}
