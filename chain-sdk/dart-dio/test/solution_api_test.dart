import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for SolutionApi
void main() {
  final instance = Openapi().getSolutionApi();

  group(SolutionApi, () {
    //Future chainsChainIdDappsDexSolutionHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test chainsChainIdDappsDexSolutionHistoricalGet', () async {
      // TODO
    });

  });
}
