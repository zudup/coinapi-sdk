import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for DexApi
void main() {
  final instance = Openapi().getDexApi();

  group(DexApi, () {
    // Batchs (current)
    //
    // Gets batchs.
    //
    //Future<BuiltList<DexBatchDTO>> dexBatchsCurrent() async
    test('test dexBatchsCurrent', () async {
      // TODO
    });

    // Deposits (current)
    //
    // Gets deposits.
    //
    //Future<BuiltList<DexDepositDTO>> dexDepositsCurrent() async
    test('test dexDepositsCurrent', () async {
      // TODO
    });

    // Batchs (historical) 🔥
    //
    // Gets batchs.
    //
    //Future<BuiltList<DexBatchDTO>> dexGetBatchsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test dexGetBatchsHistorical', () async {
      // TODO
    });

    // Deposits (historical) 🔥
    //
    // Gets deposits.
    //
    //Future<BuiltList<DexDepositDTO>> dexGetDepositsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String user }) async
    test('test dexGetDepositsHistorical', () async {
      // TODO
    });

    // Orders (historical) 🔥
    //
    // Gets orders.
    //
    //Future<BuiltList<DexOrderDTO>> dexGetOrdersHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String buyToken, String sellToken }) async
    test('test dexGetOrdersHistorical', () async {
      // TODO
    });

    // Prices (historical) 🔥
    //
    // Gets prices.
    //
    //Future<BuiltList<DexPriceDTO>> dexGetPricesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test dexGetPricesHistorical', () async {
      // TODO
    });

    // Solutions (historical) 🔥
    //
    // Gets solutions.
    //
    //Future<BuiltList<DexSolutionDTO>> dexGetSolutionsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test dexGetSolutionsHistorical', () async {
      // TODO
    });

    // Statss (historical) 🔥
    //
    // Gets statss.
    //
    //Future<BuiltList<DexStatsDTO>> dexGetStatssHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test dexGetStatssHistorical', () async {
      // TODO
    });

    // Tokens (historical) 🔥
    //
    // Gets tokens.
    //
    //Future<BuiltList<DexTokenDTO>> dexGetTokensHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String address, String symbol, String name }) async
    test('test dexGetTokensHistorical', () async {
      // TODO
    });

    // Trades (historical) 🔥
    //
    // Gets trades.
    //
    //Future<BuiltList<DexTradeDTO>> dexGetTradesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String buyToken, String sellToken }) async
    test('test dexGetTradesHistorical', () async {
      // TODO
    });

    // Users (historical) 🔥
    //
    // Gets users.
    //
    //Future<BuiltList<DexUserDTO>> dexGetUsersHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test dexGetUsersHistorical', () async {
      // TODO
    });

    // WithdrawRequests (historical) 🔥
    //
    // Gets withdrawRequests.
    //
    //Future<BuiltList<DexWithdrawRequestDTO>> dexGetWithdrawRequestsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String user }) async
    test('test dexGetWithdrawRequestsHistorical', () async {
      // TODO
    });

    // Withdraws (historical) 🔥
    //
    // Gets withdraws.
    //
    //Future<BuiltList<DexWithdrawDTO>> dexGetWithdrawsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String user }) async
    test('test dexGetWithdrawsHistorical', () async {
      // TODO
    });

    // Orders (current)
    //
    // Gets orders.
    //
    //Future<BuiltList<DexOrderDTO>> dexOrdersCurrent() async
    test('test dexOrdersCurrent', () async {
      // TODO
    });

    // Prices (current)
    //
    // Gets prices.
    //
    //Future<BuiltList<DexPriceDTO>> dexPricesCurrent() async
    test('test dexPricesCurrent', () async {
      // TODO
    });

    // Solutions (current)
    //
    // Gets solutions.
    //
    //Future<BuiltList<DexSolutionDTO>> dexSolutionsCurrent() async
    test('test dexSolutionsCurrent', () async {
      // TODO
    });

    // Statss (current)
    //
    // Gets statss.
    //
    //Future<BuiltList<DexStatsDTO>> dexStatssCurrent() async
    test('test dexStatssCurrent', () async {
      // TODO
    });

    // Tokens (current)
    //
    // Gets tokens.
    //
    //Future<BuiltList<DexTokenDTO>> dexTokensCurrent() async
    test('test dexTokensCurrent', () async {
      // TODO
    });

    // Trades (current)
    //
    // Gets trades.
    //
    //Future<BuiltList<DexTradeDTO>> dexTradesCurrent() async
    test('test dexTradesCurrent', () async {
      // TODO
    });

    // Users (current)
    //
    // Gets users.
    //
    //Future<BuiltList<DexUserDTO>> dexUsersCurrent() async
    test('test dexUsersCurrent', () async {
      // TODO
    });

    // WithdrawRequests (current)
    //
    // Gets withdrawRequests.
    //
    //Future<BuiltList<DexWithdrawRequestDTO>> dexWithdrawRequestsCurrent() async
    test('test dexWithdrawRequestsCurrent', () async {
      // TODO
    });

    // Withdraws (current)
    //
    // Gets withdraws.
    //
    //Future<BuiltList<DexWithdrawDTO>> dexWithdrawsCurrent() async
    test('test dexWithdrawsCurrent', () async {
      // TODO
    });

  });
}
