import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for BatchApi
void main() {
  final instance = Openapi().getBatchApi();

  group(BatchApi, () {
    //Future chainsChainIdDappsDexBatchHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test chainsChainIdDappsDexBatchHistoricalGet', () async {
      // TODO
    });

  });
}
