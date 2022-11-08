import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for UniswapV2Api
void main() {
  final instance = Openapi().getUniswapV2Api();

  group(UniswapV2Api, () {
    // GetBundles (historical)
    //
    // Gets bundles.
    //
    //Future<BuiltList<UniswapV2BundleV2DTO>> uniswapV2GetBundlesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test uniswapV2GetBundlesHistorical', () async {
      // TODO
    });

    // GetBurns (historical)
    //
    // Gets burns.
    //
    //Future<BuiltList<UniswapV2BurnV2DTO>> uniswapV2GetBurnsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV2GetBurnsHistorical', () async {
      // TODO
    });

    // GetDayData (historical)
    //
    // Gets uniswapv2 day data.
    //
    //Future<BuiltList<UniswapV2UniswapDayDataV2DTO>> uniswapV2GetDayDataHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test uniswapV2GetDayDataHistorical', () async {
      // TODO
    });

    // GetFactory (historical)
    //
    // Gets factory.
    //
    //Future<BuiltList<UniswapV2UniswapFactoryV2DTO>> uniswapV2GetFactoryHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test uniswapV2GetFactoryHistorical', () async {
      // TODO
    });

    // GetLiquidityPositions (historical)
    //
    // Gets liquidity positions.
    //
    //Future<BuiltList<UniswapV2LiquidityPositionV2DTO>> uniswapV2GetLiquidityPositionsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV2GetLiquidityPositionsHistorical', () async {
      // TODO
    });

    // GetLiquidityPositionsSnapshots (historical)
    //
    // Gets liquidity positions snapshots.
    //
    //Future<BuiltList<UniswapV2LiquidityPositionSnapshotV2DTO>> uniswapV2GetLiquidityPositionsSnapshotsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV2GetLiquidityPositionsSnapshotsHistorical', () async {
      // TODO
    });

    // GetMints (historical)
    //
    // Gets mints.
    //
    //Future<BuiltList<UniswapV2MintV2DTO>> uniswapV2GetMintsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV2GetMintsHistorical', () async {
      // TODO
    });

    // GetPools (current) 🔥
    //
    // Gets pools.
    //
    //Future<BuiltList<UniswapV2PairV2DTO>> uniswapV2GetPoolsCurrent({ String filterPoolId }) async
    test('test uniswapV2GetPoolsCurrent', () async {
      // TODO
    });

    // GetPoolsDayData (historical)
    //
    // Gets pools day data.
    //
    //Future<BuiltList<UniswapV2PairDayDataV2DTO>> uniswapV2GetPoolsDayDataHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV2GetPoolsDayDataHistorical', () async {
      // TODO
    });

    // GetPools (historical) 🔥
    //
    // Gets pools.
    //
    //Future<BuiltList<UniswapV2PairV2DTO>> uniswapV2GetPoolsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV2GetPoolsHistorical', () async {
      // TODO
    });

    // GetPoolsHourData (historical)
    //
    // Gets pools tracked each our.
    //
    //Future<BuiltList<UniswapV2PairHourDataV2DTO>> uniswapV2GetPoolsHourDataHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV2GetPoolsHourDataHistorical', () async {
      // TODO
    });

    // GetSwaps (current) 🔥
    //
    // Gets swaps.
    //
    //Future<BuiltList<UniswapV2SwapV2DTO>> uniswapV2GetSwapsCurrent() async
    test('test uniswapV2GetSwapsCurrent', () async {
      // TODO
    });

    // GetSwaps (historical) 🔥
    //
    // Gets swaps.
    //
    //Future<BuiltList<UniswapV2SwapV2DTO>> uniswapV2GetSwapsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV2GetSwapsHistorical', () async {
      // TODO
    });

    // GetTokens (current) 🔥
    //
    // Gets tokens.
    //
    //Future<BuiltList<UniswapV2TokenV2DTO>> uniswapV2GetTokensCurrent() async
    test('test uniswapV2GetTokensCurrent', () async {
      // TODO
    });

    // GetTokensDayData (historical)
    //
    // Gets tokens day data.
    //
    //Future<BuiltList<UniswapV2TokenDayDataV2DTO>> uniswapV2GetTokensDayDataHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test uniswapV2GetTokensDayDataHistorical', () async {
      // TODO
    });

    // GetTokens (historical) 🔥
    //
    // Gets tokens.
    //
    //Future<BuiltList<UniswapV2TokenV2DTO>> uniswapV2GetTokensHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test uniswapV2GetTokensHistorical', () async {
      // TODO
    });

    // GetTransactions (historical)
    //
    // Gets transactions.
    //
    //Future<BuiltList<UniswapV2TransactionV2DTO>> uniswapV2GetTransactionsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test uniswapV2GetTransactionsHistorical', () async {
      // TODO
    });

    // GetUsers (historical)
    //
    // Gets users.
    //
    //Future<BuiltList<UniswapV2UserV2DTO>> uniswapV2GetUsersHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test uniswapV2GetUsersHistorical', () async {
      // TODO
    });

  });
}
