import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for UniswapV2Api
void main() {
  final instance = Openapi().getUniswapV2Api();

  group(UniswapV2Api, () {
    // Bundles (historical)
    //
    // Gets bundles.
    //
    //Future<BuiltList<UniswapV2BundleV2DTO>> uniswapV2GetBundlesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test uniswapV2GetBundlesHistorical', () async {
      // TODO
    });

    // Burns (historical)
    //
    // Gets burns.
    //
    //Future<BuiltList<UniswapV2BurnV2DTO>> uniswapV2GetBurnsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV2GetBurnsHistorical', () async {
      // TODO
    });

    // DayData (historical)
    //
    // Gets uniswapv2 day data.
    //
    //Future<BuiltList<UniswapV2UniswapDayDataV2DTO>> uniswapV2GetDayDataHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test uniswapV2GetDayDataHistorical', () async {
      // TODO
    });

    // Factory (historical)
    //
    // Gets factory.
    //
    //Future<BuiltList<UniswapV2UniswapFactoryV2DTO>> uniswapV2GetFactoryHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test uniswapV2GetFactoryHistorical', () async {
      // TODO
    });

    // LiquidityPositions (historical)
    //
    // Gets liquidity positions.
    //
    //Future<BuiltList<UniswapV2LiquidityPositionV2DTO>> uniswapV2GetLiquidityPositionsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV2GetLiquidityPositionsHistorical', () async {
      // TODO
    });

    // LiquidityPositionsSnapshots (historical)
    //
    // Gets liquidity positions snapshots.
    //
    //Future<BuiltList<UniswapV2LiquidityPositionSnapshotV2DTO>> uniswapV2GetLiquidityPositionsSnapshotsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV2GetLiquidityPositionsSnapshotsHistorical', () async {
      // TODO
    });

    // Mints (historical)
    //
    // Gets mints.
    //
    //Future<BuiltList<UniswapV2MintV2DTO>> uniswapV2GetMintsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV2GetMintsHistorical', () async {
      // TODO
    });

    // Pools (current) 🔥
    //
    // Gets pools.
    //
    //Future<BuiltList<UniswapV2PairV2DTO>> uniswapV2GetPoolsCurrent({ String filterPoolId }) async
    test('test uniswapV2GetPoolsCurrent', () async {
      // TODO
    });

    // PoolsDayData (historical)
    //
    // Gets pools day data.
    //
    //Future<BuiltList<UniswapV2PairDayDataV2DTO>> uniswapV2GetPoolsDayDataHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV2GetPoolsDayDataHistorical', () async {
      // TODO
    });

    // Pools (historical) 🔥
    //
    // Gets pools.
    //
    //Future<BuiltList<UniswapV2PairV2DTO>> uniswapV2GetPoolsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV2GetPoolsHistorical', () async {
      // TODO
    });

    // PoolsHourData (historical)
    //
    // Gets pools tracked each our.
    //
    //Future<BuiltList<UniswapV2PairHourDataV2DTO>> uniswapV2GetPoolsHourDataHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV2GetPoolsHourDataHistorical', () async {
      // TODO
    });

    // Swaps (current) 🔥
    //
    // Gets swaps.
    //
    //Future<BuiltList<UniswapV2SwapV2DTO>> uniswapV2GetSwapsCurrent() async
    test('test uniswapV2GetSwapsCurrent', () async {
      // TODO
    });

    // Swaps (historical) 🔥
    //
    // Gets swaps.
    //
    //Future<BuiltList<UniswapV2SwapV2DTO>> uniswapV2GetSwapsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV2GetSwapsHistorical', () async {
      // TODO
    });

    // Tokens (current) 🔥
    //
    // Gets tokens.
    //
    //Future<BuiltList<UniswapV2TokenV2DTO>> uniswapV2GetTokensCurrent() async
    test('test uniswapV2GetTokensCurrent', () async {
      // TODO
    });

    // TokensDayData (historical)
    //
    // Gets tokens day data.
    //
    //Future<BuiltList<UniswapV2TokenDayDataV2DTO>> uniswapV2GetTokensDayDataHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test uniswapV2GetTokensDayDataHistorical', () async {
      // TODO
    });

    // Tokens (historical) 🔥
    //
    // Gets tokens.
    //
    //Future<BuiltList<UniswapV2TokenV2DTO>> uniswapV2GetTokensHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test uniswapV2GetTokensHistorical', () async {
      // TODO
    });

    // Transactions (historical)
    //
    // Gets transactions.
    //
    //Future<BuiltList<UniswapV2TransactionV2DTO>> uniswapV2GetTransactionsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test uniswapV2GetTransactionsHistorical', () async {
      // TODO
    });

    // Users (historical)
    //
    // Gets users.
    //
    //Future<BuiltList<UniswapV2UserV2DTO>> uniswapV2GetUsersHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test uniswapV2GetUsersHistorical', () async {
      // TODO
    });

  });
}
