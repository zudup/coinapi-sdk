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

    // BundleDTOs (historical) 🔥
    //
    // Gets BundleDTOs.
    //
    //Future<BuiltList<SushiswapBundleDTO>> sushiswapGetBundleDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetBundleDTOsHistorical', () async {
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

    // BurnDTOs (historical) 🔥
    //
    // Gets BurnDTOs.
    //
    //Future<BuiltList<SushiswapBurnDTO>> sushiswapGetBurnDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetBurnDTOsHistorical', () async {
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

    // DayDataDTOs (historical) 🔥
    //
    // Gets DayDataDTOs.
    //
    //Future<BuiltList<SushiswapDayDataDTO>> sushiswapGetDayDataDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetDayDataDTOsHistorical', () async {
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

    // FactoryDTOs (historical) 🔥
    //
    // Gets FactoryDTOs.
    //
    //Future<BuiltList<SushiswapFactoryDTO>> sushiswapGetFactoryDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetFactoryDTOsHistorical', () async {
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

    // HourDataDTOs (historical) 🔥
    //
    // Gets HourDataDTOs.
    //
    //Future<BuiltList<SushiswapHourDataDTO>> sushiswapGetHourDataDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetHourDataDTOsHistorical', () async {
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

    // LiquidityPositionDTOs (historical) 🔥
    //
    // Gets LiquidityPositionDTOs.
    //
    //Future<BuiltList<SushiswapLiquidityPositionDTO>> sushiswapGetLiquidityPositionDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetLiquidityPositionDTOsHistorical', () async {
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

    // LiquidityPositionSnapshotDTOs (historical) 🔥
    //
    // Gets LiquidityPositionSnapshotDTOs.
    //
    //Future<BuiltList<SushiswapLiquidityPositionSnapshotDTO>> sushiswapGetLiquidityPositionSnapshotDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetLiquidityPositionSnapshotDTOsHistorical', () async {
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

    // MintDTOs (historical) 🔥
    //
    // Gets MintDTOs.
    //
    //Future<BuiltList<SushiswapMintDTO>> sushiswapGetMintDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetMintDTOsHistorical', () async {
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

    // PairDTOs (historical) 🔥
    //
    // Gets PairDTOs.
    //
    //Future<BuiltList<SushiswapPairDTO>> sushiswapGetPairDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetPairDTOsHistorical', () async {
      // TODO
    });

    // PairDayDataDTOs (historical) 🔥
    //
    // Gets PairDayDataDTOs.
    //
    //Future<BuiltList<SushiswapPairDayDataDTO>> sushiswapGetPairDayDataDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetPairDayDataDTOsHistorical', () async {
      // TODO
    });

    // PairHourDataDTOs (historical) 🔥
    //
    // Gets PairHourDataDTOs.
    //
    //Future<BuiltList<SushiswapPairHourDataDTO>> sushiswapGetPairHourDataDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetPairHourDataDTOsHistorical', () async {
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

    // SwapDTOs (historical) 🔥
    //
    // Gets SwapDTOs.
    //
    //Future<BuiltList<SushiswapSwapDTO>> sushiswapGetSwapDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetSwapDTOsHistorical', () async {
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

    // TokenDTOs (historical) 🔥
    //
    // Gets TokenDTOs.
    //
    //Future<BuiltList<SushiswapTokenDTO>> sushiswapGetTokenDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetTokenDTOsHistorical', () async {
      // TODO
    });

    // TokenDayDataDTOs (historical) 🔥
    //
    // Gets TokenDayDataDTOs.
    //
    //Future<BuiltList<SushiswapTokenDayDataDTO>> sushiswapGetTokenDayDataDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetTokenDayDataDTOsHistorical', () async {
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

    // TransactionDTOs (historical) 🔥
    //
    // Gets TransactionDTOs.
    //
    //Future<BuiltList<SushiswapTransactionDTO>> sushiswapGetTransactionDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetTransactionDTOsHistorical', () async {
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

    // UserDTOs (historical) 🔥
    //
    // Gets UserDTOs.
    //
    //Future<BuiltList<SushiswapUserDTO>> sushiswapGetUserDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetUserDTOsHistorical', () async {
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
