import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for DexApi
void main() {
  final instance = Openapi().getDexApi();

  group(DexApi, () {
    // Batches (historical)
    //
    // Gets batches.
    //
    //Future<BuiltList<DexBatchDTO>> dexGetBatchesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dexGetBatchesHistorical', () async {
      // TODO
    });

    // Deposits (historical)
    //
    // Gets deposits.
    //
    //Future<BuiltList<DexDepositDTO>> dexGetDepositsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test dexGetDepositsHistorical', () async {
      // TODO
    });

    // Orders (historical)
    //
    // Gets orders.
    //
    //Future<BuiltList<DexOrderDTO>> dexGetOrdersHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test dexGetOrdersHistorical', () async {
      // TODO
    });

    // Prices (historical)
    //
    // Gets prices.
    //
    //Future<BuiltList<DexPriceDTO>> dexGetPricesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test dexGetPricesHistorical', () async {
      // TODO
    });

    // Solutions (historical)
    //
    // Gets solutions.
    //
    //Future<BuiltList<DexSolutionDTO>> dexGetSolutionsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test dexGetSolutionsHistorical', () async {
      // TODO
    });

    // Stats (historical)
    //
    // Gets stats.
    //
    //Future<BuiltList<DexStatsDTO>> dexGetStatsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dexGetStatsHistorical', () async {
      // TODO
    });

    // Tokens (historical) 🔥
    //
    // Gets tokens.
    //
    //Future<BuiltList<DexTokenDTO>> dexGetTokensHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test dexGetTokensHistorical', () async {
      // TODO
    });

    // Trades (historical) 🔥
    //
    // Gets trades.
    //
    //Future<BuiltList<DexTradeDTO>> dexGetTradesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dexGetTradesHistorical', () async {
      // TODO
    });

    // Users (historical)
    //
    // Gets users.
    //
    //Future<BuiltList<DexUserDTO>> dexGetUsersHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dexGetUsersHistorical', () async {
      // TODO
    });

    // Withdraws (historical)
    //
    // Gets withdraws.
    //
    //Future<BuiltList<DexWithdrawDTO>> dexGetWithdrawsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test dexGetWithdrawsHistorical', () async {
      // TODO
    });

    // WithdrawsRequests (historical)
    //
    // Gets withdraws requests.
    //
    //Future<BuiltList<DexWithdrawRequestDTO>> dexGetWithdrawsRequestsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test dexGetWithdrawsRequestsHistorical', () async {
      // TODO
    });

  });
}
