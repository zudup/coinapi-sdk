import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for DexApi
void main() {
  final instance = Openapi().getDexApi();

  group(DexApi, () {
    //Future dappsDexBatchHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dappsDexBatchHistoricalGet', () async {
      // TODO
    });

    //Future dappsDexOrdersHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test dappsDexOrdersHistoricalGet', () async {
      // TODO
    });

    //Future dappsDexPricesHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test dappsDexPricesHistoricalGet', () async {
      // TODO
    });

    //Future dappsDexSolutionHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test dappsDexSolutionHistoricalGet', () async {
      // TODO
    });

    //Future dappsDexStatsHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dappsDexStatsHistoricalGet', () async {
      // TODO
    });

    //Future dappsDexTokensHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test dappsDexTokensHistoricalGet', () async {
      // TODO
    });

    //Future dappsDexTradesHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dappsDexTradesHistoricalGet', () async {
      // TODO
    });

    //Future dappsDexUsersHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dappsDexUsersHistoricalGet', () async {
      // TODO
    });

    //Future dappsDexWithdrawHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test dappsDexWithdrawHistoricalGet', () async {
      // TODO
    });

    //Future dappsDexWithdrawRequestHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test dappsDexWithdrawRequestHistoricalGet', () async {
      // TODO
    });

  });
}
