import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for SushiswapApi
void main() {
  final instance = Openapi().getSushiswapApi();

  group(SushiswapApi, () {
    // GetExchanges (current) 🔥
    //
    // Gets exchanges.
    //
    //Future<BuiltList<CurveExchangeDTO>> curveGetExchangesCurrent() async
    test('test curveGetExchangesCurrent', () async {
      // TODO
    });

    // GetTrades (current) 🔥
    //
    // Gets trades.
    //
    //Future<BuiltList<DexTradeDTO>> dexGetTradesCurrent() async
    test('test dexGetTradesCurrent', () async {
      // TODO
    });

    // GetBundles (historical)
    //
    // Gets bundles.
    //
    //Future<BuiltList<SushiswapBundleDTO>> sushiswapGetBundlesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test sushiswapGetBundlesHistorical', () async {
      // TODO
    });

    // GetBurns (historical)
    //
    // Gets burns.
    //
    //Future<BuiltList<SushiswapBurnDTO>> sushiswapGetBurnsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetBurnsHistorical', () async {
      // TODO
    });

    // GetDayData (historical)
    //
    // Gets day data.
    //
    //Future<BuiltList<SushiswapDayDataDTO>> sushiswapGetDayDataHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test sushiswapGetDayDataHistorical', () async {
      // TODO
    });

    // GetFactory (historical)
    //
    // Gets factory.
    //
    //Future<BuiltList<SushiswapFactoryDTO>> sushiswapGetFactoryHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test sushiswapGetFactoryHistorical', () async {
      // TODO
    });

    // GetHourData (historical)
    //
    // Gets hour data.
    //
    //Future<BuiltList<SushiswapHourDataDTO>> sushiswapGetHourDataHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test sushiswapGetHourDataHistorical', () async {
      // TODO
    });

    // GetLiquidityPosition (historical)
    //
    // Gets liquidity position.
    //
    //Future<BuiltList<SushiswapLiquidityPositionDTO>> sushiswapGetLiquidityPositionHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetLiquidityPositionHistorical', () async {
      // TODO
    });

    // GetLiquidityPositionSnapshot (historical)
    //
    // Gets liquidity position snapshot.
    //
    //Future<BuiltList<SushiswapLiquidityPositionSnapshotDTO>> sushiswapGetLiquidityPositionSnapshotHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetLiquidityPositionSnapshotHistorical', () async {
      // TODO
    });

    // GetMints (historical)
    //
    // Gets mints.
    //
    //Future<BuiltList<SushiswapMintDTO>> sushiswapGetMintsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetMintsHistorical', () async {
      // TODO
    });

    // GetPools (current) 🔥
    //
    // Gets pools.
    //
    //Future<BuiltList<SushiswapPairDTO>> sushiswapGetPoolsCurrent() async
    test('test sushiswapGetPoolsCurrent', () async {
      // TODO
    });

    // GetPoolsDayData (historical)
    //
    // Gets pools day data.
    //
    //Future<BuiltList<SushiswapPairDayDataDTO>> sushiswapGetPoolsDayDataHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetPoolsDayDataHistorical', () async {
      // TODO
    });

    // GetPools (historical) 🔥
    //
    // Gets list of pools for given filters.
    //
    //Future<BuiltList<SushiswapPairDTO>> sushiswapGetPoolsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetPoolsHistorical', () async {
      // TODO
    });

    // GetPoolsHourData (historical)
    //
    // Gets pools tracked each our.
    //
    //Future<BuiltList<SushiswapPairHourDataDTO>> sushiswapGetPoolsHourDataHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetPoolsHourDataHistorical', () async {
      // TODO
    });

    // GetSwaps (current) 🔥
    //
    // Gets swaps.
    //
    //Future<BuiltList<SushiswapSwapDTO>> sushiswapGetSwapsCurrent() async
    test('test sushiswapGetSwapsCurrent', () async {
      // TODO
    });

    // GetSwaps (historical) 🔥
    //
    // Gets list of swaps for given filters.
    //
    //Future<BuiltList<SushiswapSwapDTO>> sushiswapGetSwapsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetSwapsHistorical', () async {
      // TODO
    });

    // GetTokens (current) 🔥
    //
    // Gets tokens.
    //
    //Future<BuiltList<SushiswapTokenDTO>> sushiswapGetTokensCurrent() async
    test('test sushiswapGetTokensCurrent', () async {
      // TODO
    });

    // GetTokensDayData (historical)
    //
    // Gets tokens day data.
    //
    //Future<BuiltList<SushiswapTokenDayDataDTO>> sushiswapGetTokensDayDataHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test sushiswapGetTokensDayDataHistorical', () async {
      // TODO
    });

    // GetTokens (historical) 🔥
    //
    // Gets list of tokens for given filters.
    //
    //Future<BuiltList<SushiswapTokenDTO>> sushiswapGetTokensHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test sushiswapGetTokensHistorical', () async {
      // TODO
    });

    // GetTransactions (historical)
    //
    // Gets transactions.
    //
    //Future<BuiltList<SushiswapTransactionDTO>> sushiswapGetTransactionsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test sushiswapGetTransactionsHistorical', () async {
      // TODO
    });

    // GetUsers (historical)
    //
    // Gets users.
    //
    //Future<BuiltList<SushiswapUserDTO>> sushiswapGetUsersHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test sushiswapGetUsersHistorical', () async {
      // TODO
    });

  });
}
