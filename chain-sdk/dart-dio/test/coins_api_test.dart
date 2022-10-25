import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for CoinsApi
void main() {
  final instance = Openapi().getCoinsApi();

  group(CoinsApi, () {
    //Future chainsChainIdDappsCurveCoinsHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test chainsChainIdDappsCurveCoinsHistoricalGet', () async {
      // TODO
    });

  });
}
