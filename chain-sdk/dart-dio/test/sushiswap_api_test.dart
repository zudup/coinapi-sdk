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

    // GetPools
    //
    // Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
    //
    //Future<BuiltList<PairDTO>> dappsSushiswapPoolsCurrentGet() async
    test('test dappsSushiswapPoolsCurrentGet', () async {
      // TODO
    });

    // GetPools (historical)
    //
    //Future<BuiltList<PairDTO>> dappsSushiswapPoolsHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dappsSushiswapPoolsHistoricalGet', () async {
      // TODO
    });

    // GetSwaps
    //
    //Future<BuiltList<SwapDTO>> dappsSushiswapSwapsCurrentGet() async
    test('test dappsSushiswapSwapsCurrentGet', () async {
      // TODO
    });

    // GetSwaps (historical)
    //
    //Future<BuiltList<SwapDTO>> dappsSushiswapSwapsHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dappsSushiswapSwapsHistoricalGet', () async {
      // TODO
    });

    //Future dappsSushiswapTokenDayDataHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test dappsSushiswapTokenDayDataHistoricalGet', () async {
      // TODO
    });

    // GetTokens
    //
    //Future<BuiltList<TokenDTO>> dappsSushiswapTokensCurrentGet() async
    test('test dappsSushiswapTokensCurrentGet', () async {
      // TODO
    });

    // GetTokens (historical)
    //
    //Future<BuiltList<TokenDTO>> dappsSushiswapTokensHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test dappsSushiswapTokensHistoricalGet', () async {
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

  });
}
