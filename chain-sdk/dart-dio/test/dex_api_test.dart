import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for DexApi
void main() {
  final instance = Openapi().getDexApi();

  group(DexApi, () {
    // BatchDTOs (historical) 🔥
    //
    // Gets BatchDTOs.
    //
    //Future<BuiltList<DexBatchDTO>> dexGetBatchDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dexGetBatchDTOsHistorical', () async {
      // TODO
    });

    // Batches (historical)
    //
    // Gets batches.
    //
    //Future<BuiltList<DexBatchDTO>> dexGetBatchesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dexGetBatchesHistorical', () async {
      // TODO
    });

    // DepositDTOs (historical) 🔥
    //
    // Gets DepositDTOs.
    //
    //Future<BuiltList<DexDepositDTO>> dexGetDepositDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dexGetDepositDTOsHistorical', () async {
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

    // OrderDTOs (historical) 🔥
    //
    // Gets OrderDTOs.
    //
    //Future<BuiltList<DexOrderDTO>> dexGetOrderDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dexGetOrderDTOsHistorical', () async {
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

    // PriceDTOs (historical) 🔥
    //
    // Gets PriceDTOs.
    //
    //Future<BuiltList<DexPriceDTO>> dexGetPriceDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dexGetPriceDTOsHistorical', () async {
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

    // SolutionDTOs (historical) 🔥
    //
    // Gets SolutionDTOs.
    //
    //Future<BuiltList<DexSolutionDTO>> dexGetSolutionDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dexGetSolutionDTOsHistorical', () async {
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

    // StatsDTOs (historical) 🔥
    //
    // Gets StatsDTOs.
    //
    //Future<BuiltList<DexStatsDTO>> dexGetStatsDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dexGetStatsDTOsHistorical', () async {
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

    // TokenDTOs (historical) 🔥
    //
    // Gets TokenDTOs.
    //
    //Future<BuiltList<DexTokenDTO>> dexGetTokenDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dexGetTokenDTOsHistorical', () async {
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

    // TradeDTOs (historical) 🔥
    //
    // Gets TradeDTOs.
    //
    //Future<BuiltList<DexTradeDTO>> dexGetTradeDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dexGetTradeDTOsHistorical', () async {
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

    // UserDTOs (historical) 🔥
    //
    // Gets UserDTOs.
    //
    //Future<BuiltList<DexUserDTO>> dexGetUserDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dexGetUserDTOsHistorical', () async {
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

    // WithdrawDTOs (historical) 🔥
    //
    // Gets WithdrawDTOs.
    //
    //Future<BuiltList<DexWithdrawDTO>> dexGetWithdrawDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dexGetWithdrawDTOsHistorical', () async {
      // TODO
    });

    // WithdrawRequestDTOs (historical) 🔥
    //
    // Gets WithdrawRequestDTOs.
    //
    //Future<BuiltList<DexWithdrawRequestDTO>> dexGetWithdrawRequestDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dexGetWithdrawRequestDTOsHistorical', () async {
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
