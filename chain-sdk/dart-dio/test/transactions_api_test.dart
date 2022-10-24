import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for TransactionsApi
void main() {
  final instance = Openapi().getTransactionsApi();

  group(TransactionsApi, () {
    //Future chainsChainIdDappsSushiswapTransactionsHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test chainsChainIdDappsSushiswapTransactionsHistoricalGet', () async {
      // TODO
    });

    //Future chainsChainIdDappsUniswapv2TransactionsHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test chainsChainIdDappsUniswapv2TransactionsHistoricalGet', () async {
      // TODO
    });

    //Future chainsChainIdDappsUniswapv3TransactionsHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test chainsChainIdDappsUniswapv3TransactionsHistoricalGet', () async {
      // TODO
    });

  });
}
