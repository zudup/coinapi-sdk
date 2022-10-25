import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for OrdersApi
void main() {
  final instance = Openapi().getOrdersApi();

  group(OrdersApi, () {
    //Future chainsChainIdDappsCowOrdersHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test chainsChainIdDappsCowOrdersHistoricalGet', () async {
      // TODO
    });

    //Future chainsChainIdDappsDexOrdersHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test chainsChainIdDappsDexOrdersHistoricalGet', () async {
      // TODO
    });

  });
}
