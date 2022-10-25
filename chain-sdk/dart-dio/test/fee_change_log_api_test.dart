import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for FeeChangeLogApi
void main() {
  final instance = Openapi().getFeeChangeLogApi();

  group(FeeChangeLogApi, () {
    //Future chainsChainIdDappsCurveFeeChangeLogHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test chainsChainIdDappsCurveFeeChangeLogHistoricalGet', () async {
      // TODO
    });

  });
}
