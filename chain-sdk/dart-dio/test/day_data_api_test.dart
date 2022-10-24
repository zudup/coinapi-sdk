import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for DayDataApi
void main() {
  final instance = Openapi().getDayDataApi();

  group(DayDataApi, () {
    //Future chainsChainIdDappsSushiswapDayDataHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test chainsChainIdDappsSushiswapDayDataHistoricalGet', () async {
      // TODO
    });

  });
}
