import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for VotingAppApi
void main() {
  final instance = Openapi().getVotingAppApi();

  group(VotingAppApi, () {
    //Future chainsChainIdDappsCurveVotingAppHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test chainsChainIdDappsCurveVotingAppHistoricalGet', () async {
      // TODO
    });

  });
}
