import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for ContractsApi
void main() {
  final instance = Openapi().getContractsApi();

  group(ContractsApi, () {
    //Future chainsChainIdDappsCurveContractsHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test chainsChainIdDappsCurveContractsHistoricalGet', () async {
      // TODO
    });

  });
}
