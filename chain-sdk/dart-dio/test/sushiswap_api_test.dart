import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for SushiswapApi
void main() {
  final instance = Openapi().getSushiswapApi();

  group(SushiswapApi, () {
    //Future dappsSushiswapBundlesHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dappsSushiswapBundlesHistoricalGet', () async {
      // TODO
    });

    //Future dappsSushiswapBurnsHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dappsSushiswapBurnsHistoricalGet', () async {
      // TODO
    });

    //Future dappsSushiswapDayDataHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dappsSushiswapDayDataHistoricalGet', () async {
      // TODO
    });

    //Future dappsSushiswapFactoryHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dappsSushiswapFactoryHistoricalGet', () async {
      // TODO
    });

    //Future dappsSushiswapHourDataHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dappsSushiswapHourDataHistoricalGet', () async {
      // TODO
    });

    //Future dappsSushiswapLiquidityPositionHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dappsSushiswapLiquidityPositionHistoricalGet', () async {
      // TODO
    });

    //Future dappsSushiswapLiquidityPositionSnapshotsHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dappsSushiswapLiquidityPositionSnapshotsHistoricalGet', () async {
      // TODO
    });

    //Future dappsSushiswapMintsHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dappsSushiswapMintsHistoricalGet', () async {
      // TODO
    });

    //Future dappsSushiswapPoolDayDataHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dappsSushiswapPoolDayDataHistoricalGet', () async {
      // TODO
    });

    //Future dappsSushiswapPoolHourDataHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dappsSushiswapPoolHourDataHistoricalGet', () async {
      // TODO
    });

    //Future dappsSushiswapTokenDayDataHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test dappsSushiswapTokenDayDataHistoricalGet', () async {
      // TODO
    });

    //Future dappsSushiswapTransactionsHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dappsSushiswapTransactionsHistoricalGet', () async {
      // TODO
    });

    //Future dappsSushiswapUsersHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dappsSushiswapUsersHistoricalGet', () async {
      // TODO
    });

    // GetPools (current)
    //
    // Gets pools.
    //
    //Future<BuiltList<SushiswapPairDTO>> sushiswapGetPoolsCurrent() async
    test('test sushiswapGetPoolsCurrent', () async {
      // TODO
    });

    // GetPools (historical)
    //
    // Gets list of pools for given filters.
    //
    //Future<BuiltList<SushiswapPairDTO>> sushiswapGetPoolsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetPoolsHistorical', () async {
      // TODO
    });

    // GetSwaps (current)
    //
    // Gets swaps.
    //
    //Future<SushiswapSwapDTO> sushiswapGetSwapsCurrent() async
    test('test sushiswapGetSwapsCurrent', () async {
      // TODO
    });

    // GetSwaps (historical)
    //
    // Gets list of swaps for given filters.
    //
    //Future<BuiltList<SushiswapSwapDTO>> sushiswapGetSwapsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test sushiswapGetSwapsHistorical', () async {
      // TODO
    });

    // GetTokens (current)
    //
    // Gets tokens.
    //
    //Future<SushiswapTokenDTO> sushiswapGetTokensCurrent() async
    test('test sushiswapGetTokensCurrent', () async {
      // TODO
    });

    // GetTokens (historical)
    //
    // Gets list of tokens for given filters.
    //
    //Future<BuiltList<SushiswapTokenDTO>> sushiswapGetTokensHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test sushiswapGetTokensHistorical', () async {
      // TODO
    });

  });
}
