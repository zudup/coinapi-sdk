import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for SushiswapApi
void main() {
  final instance = Openapi().getSushiswapApi();

  group(SushiswapApi, () {
    // Exchanges (current) 🔥
    //
    // Gets exchanges.
    //
    //Future<BuiltList<CurveExchangeDTO>> curveGetExchangesCurrent() async
    test('test curveGetExchangesCurrent', () async {
      // TODO
    });

    // Trades (current) 🔥
    //
    // Gets trades.
    //
    //Future<BuiltList<DexTradeDTO>> dexGetTradesCurrent() async
    test('test dexGetTradesCurrent', () async {
      // TODO
    });

    // Bundles (historical)
    //
    // Gets bundles.
    //
    //Future<BuiltList<SushiswapBundleDTO>> sushiswapGetBundlesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test sushiswapGetBundlesHistorical', () async {
      // TODO
    });

    // Burns (historical)
    //
    // Gets burns.
    //
    //Future<BuiltList<SushiswapBurnDTO>> sushiswapGetBurnsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetBurnsHistorical', () async {
      // TODO
    });

    // DayData (historical)
    //
    // Gets day data.
    //
    //Future<BuiltList<SushiswapDayDataDTO>> sushiswapGetDayDataHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test sushiswapGetDayDataHistorical', () async {
      // TODO
    });

    // Factory (historical)
    //
    // Gets factory.
    //
    //Future<BuiltList<SushiswapFactoryDTO>> sushiswapGetFactoryHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test sushiswapGetFactoryHistorical', () async {
      // TODO
    });

    // HourData (historical)
    //
    // Gets hour data.
    //
    //Future<BuiltList<SushiswapHourDataDTO>> sushiswapGetHourDataHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test sushiswapGetHourDataHistorical', () async {
      // TODO
    });

    // LiquidityPosition (historical)
    //
    // Gets liquidity position.
    //
    //Future<BuiltList<SushiswapLiquidityPositionDTO>> sushiswapGetLiquidityPositionHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetLiquidityPositionHistorical', () async {
      // TODO
    });

    // LiquidityPositionSnapshot (historical)
    //
    // Gets liquidity position snapshot.
    //
    //Future<BuiltList<SushiswapLiquidityPositionSnapshotDTO>> sushiswapGetLiquidityPositionSnapshotHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetLiquidityPositionSnapshotHistorical', () async {
      // TODO
    });

    // Mints (historical)
    //
    // Gets mints.
    //
    //Future<BuiltList<SushiswapMintDTO>> sushiswapGetMintsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetMintsHistorical', () async {
      // TODO
    });

    // Pools (current) 🔥
    //
    // Gets pools.
    //
    //Future<BuiltList<SushiswapPairDTO>> sushiswapGetPoolsCurrent() async
    test('test sushiswapGetPoolsCurrent', () async {
      // TODO
    });

    // PoolsDayData (historical)
    //
    // Gets pools day data.
    //
    //Future<BuiltList<SushiswapPairDayDataDTO>> sushiswapGetPoolsDayDataHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetPoolsDayDataHistorical', () async {
      // TODO
    });

    // Pools (historical) 🔥
    //
    // Gets list of pools for given filters.
    //
    //Future<BuiltList<SushiswapPairDTO>> sushiswapGetPoolsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetPoolsHistorical', () async {
      // TODO
    });

    // PoolsHourData (historical)
    //
    // Gets pools tracked each our.
    //
    //Future<BuiltList<SushiswapPairHourDataDTO>> sushiswapGetPoolsHourDataHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetPoolsHourDataHistorical', () async {
      // TODO
    });

    // Swaps (current) 🔥
    //
    // Gets swaps.
    //
    //Future<BuiltList<SushiswapSwapDTO>> sushiswapGetSwapsCurrent() async
    test('test sushiswapGetSwapsCurrent', () async {
      // TODO
    });

    // Swaps (historical) 🔥
    //
    // Gets list of swaps for given filters.
    //
    //Future<BuiltList<SushiswapSwapDTO>> sushiswapGetSwapsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetSwapsHistorical', () async {
      // TODO
    });

    // Tokens (current) 🔥
    //
    // Gets tokens.
    //
    //Future<BuiltList<SushiswapTokenDTO>> sushiswapGetTokensCurrent() async
    test('test sushiswapGetTokensCurrent', () async {
      // TODO
    });

    // TokensDayData (historical)
    //
    // Gets tokens day data.
    //
    //Future<BuiltList<SushiswapTokenDayDataDTO>> sushiswapGetTokensDayDataHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test sushiswapGetTokensDayDataHistorical', () async {
      // TODO
    });

    // Tokens (historical) 🔥
    //
    // Gets list of tokens for given filters.
    //
    //Future<BuiltList<SushiswapTokenDTO>> sushiswapGetTokensHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test sushiswapGetTokensHistorical', () async {
      // TODO
    });

    // Transactions (historical)
    //
    // Gets transactions.
    //
    //Future<BuiltList<SushiswapTransactionDTO>> sushiswapGetTransactionsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test sushiswapGetTransactionsHistorical', () async {
      // TODO
    });

    // Users (historical)
    //
    // Gets users.
    //
    //Future<BuiltList<SushiswapUserDTO>> sushiswapGetUsersHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test sushiswapGetUsersHistorical', () async {
      // TODO
    });

  });
}
