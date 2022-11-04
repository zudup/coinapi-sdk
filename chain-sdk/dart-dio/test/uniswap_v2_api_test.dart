import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for UniswapV2Api
void main() {
  final instance = Openapi().getUniswapV2Api();

  group(UniswapV2Api, () {
    //Future dappsUniswapv2BundlesHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dappsUniswapv2BundlesHistoricalGet', () async {
      // TODO
    });

    //Future dappsUniswapv2BurnsHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dappsUniswapv2BurnsHistoricalGet', () async {
      // TODO
    });

    //Future dappsUniswapv2DayDataHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dappsUniswapv2DayDataHistoricalGet', () async {
      // TODO
    });

    //Future dappsUniswapv2FactoryHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dappsUniswapv2FactoryHistoricalGet', () async {
      // TODO
    });

    //Future dappsUniswapv2LiquidityPositionHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dappsUniswapv2LiquidityPositionHistoricalGet', () async {
      // TODO
    });

    //Future dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet', () async {
      // TODO
    });

    //Future dappsUniswapv2MintsHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dappsUniswapv2MintsHistoricalGet', () async {
      // TODO
    });

    //Future dappsUniswapv2PoolDayDataHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dappsUniswapv2PoolDayDataHistoricalGet', () async {
      // TODO
    });

    //Future dappsUniswapv2PoolHourDataHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dappsUniswapv2PoolHourDataHistoricalGet', () async {
      // TODO
    });

    // GetPools
    //
    //Future<BuiltList<PairV2DTO>> dappsUniswapv2PoolsCurrentGet({ String filterPoolId }) async
    test('test dappsUniswapv2PoolsCurrentGet', () async {
      // TODO
    });

    //Future dappsUniswapv2PoolsHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dappsUniswapv2PoolsHistoricalGet', () async {
      // TODO
    });

    // GetSwaps
    //
    //Future<BuiltList<SwapV2DTO>> dappsUniswapv2SwapsCurrentGet() async
    test('test dappsUniswapv2SwapsCurrentGet', () async {
      // TODO
    });

    //Future dappsUniswapv2SwapsHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dappsUniswapv2SwapsHistoricalGet', () async {
      // TODO
    });

    //Future dappsUniswapv2TokenDayDataHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test dappsUniswapv2TokenDayDataHistoricalGet', () async {
      // TODO
    });

    // GetTokens
    //
    //Future<BuiltList<TokenV2DTO>> dappsUniswapv2TokensCurrentGet() async
    test('test dappsUniswapv2TokensCurrentGet', () async {
      // TODO
    });

    //Future dappsUniswapv2TokensHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test dappsUniswapv2TokensHistoricalGet', () async {
      // TODO
    });

    //Future dappsUniswapv2TransactionsHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dappsUniswapv2TransactionsHistoricalGet', () async {
      // TODO
    });

    //Future dappsUniswapv2UsersHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dappsUniswapv2UsersHistoricalGet', () async {
      // TODO
    });

  });
}
