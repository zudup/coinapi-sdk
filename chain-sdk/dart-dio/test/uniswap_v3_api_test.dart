import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for UniswapV3Api
void main() {
  final instance = Openapi().getUniswapV3Api();

  group(UniswapV3Api, () {
    // GetBundles
    //
    //Future<BuiltList<UniswapV3BundleV3DTO>> dappsUniswapv3BundleCurrentGet() async
    test('test dappsUniswapv3BundleCurrentGet', () async {
      // TODO
    });

    //Future dappsUniswapv3BundlesHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dappsUniswapv3BundlesHistoricalGet', () async {
      // TODO
    });

    // GetBurns
    //
    //Future<BuiltList<UniswapV3BurnV3DTO>> dappsUniswapv3BurnsCurrentGet({ String filterPoolId }) async
    test('test dappsUniswapv3BurnsCurrentGet', () async {
      // TODO
    });

    //Future dappsUniswapv3BurnsHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dappsUniswapv3BurnsHistoricalGet', () async {
      // TODO
    });

    //Future dappsUniswapv3DayDataHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dappsUniswapv3DayDataHistoricalGet', () async {
      // TODO
    });

    // GetFactory
    //
    //Future<BuiltList<UniswapV3FactoryV3DTO>> dappsUniswapv3FactoryCurrentGet(String chainId) async
    test('test dappsUniswapv3FactoryCurrentGet', () async {
      // TODO
    });

    //Future dappsUniswapv3FactoryHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dappsUniswapv3FactoryHistoricalGet', () async {
      // TODO
    });

    // GetMints
    //
    //Future<BuiltList<UniswapV3MintV3DTO>> dappsUniswapv3MintsCurrentGet({ String filterPoolId }) async
    test('test dappsUniswapv3MintsCurrentGet', () async {
      // TODO
    });

    //Future dappsUniswapv3MintsHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dappsUniswapv3MintsHistoricalGet', () async {
      // TODO
    });

    //Future dappsUniswapv3PoolDayDataHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dappsUniswapv3PoolDayDataHistoricalGet', () async {
      // TODO
    });

    //Future dappsUniswapv3PoolHourDataHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dappsUniswapv3PoolHourDataHistoricalGet', () async {
      // TODO
    });

    // GetPools
    //
    //Future<BuiltList<UniswapV3PoolV3DTO>> dappsUniswapv3PoolsCurrentGet({ String filterPoolId }) async
    test('test dappsUniswapv3PoolsCurrentGet', () async {
      // TODO
    });

    // GetPoolsDayData
    //
    //Future<BuiltList<UniswapV3PoolDayDataV3DTO>> dappsUniswapv3PoolsDayDataCurrentGet({ String filterPoolId }) async
    test('test dappsUniswapv3PoolsDayDataCurrentGet', () async {
      // TODO
    });

    //Future dappsUniswapv3PoolsHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dappsUniswapv3PoolsHistoricalGet', () async {
      // TODO
    });

    // GetPoolsHourData
    //
    //Future<BuiltList<UniswapV3PoolHourDataV3DTO>> dappsUniswapv3PoolsHourDataCurrentGet({ String filterPoolId }) async
    test('test dappsUniswapv3PoolsHourDataCurrentGet', () async {
      // TODO
    });

    //Future dappsUniswapv3PositionSnapshotHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dappsUniswapv3PositionSnapshotHistoricalGet', () async {
      // TODO
    });

    // GetPositionSnapshot
    //
    //Future<BuiltList<UniswapV3PositionSnapshotV3DTO>> dappsUniswapv3PositionSnapshotsCurrentGet({ String filterPoolId }) async
    test('test dappsUniswapv3PositionSnapshotsCurrentGet', () async {
      // TODO
    });

    // GetPositions
    //
    //Future<BuiltList<UniswapV3PositionV3DTO>> dappsUniswapv3PositionsCurrentGet({ String filterPoolId }) async
    test('test dappsUniswapv3PositionsCurrentGet', () async {
      // TODO
    });

    //Future dappsUniswapv3PositionsHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dappsUniswapv3PositionsHistoricalGet', () async {
      // TODO
    });

    // GetSwaps
    //
    //Future<BuiltList<UniswapV3SwapV3DTO>> dappsUniswapv3SwapsCurrentGet({ String filterPoolId }) async
    test('test dappsUniswapv3SwapsCurrentGet', () async {
      // TODO
    });

    //Future dappsUniswapv3SwapsHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dappsUniswapv3SwapsHistoricalGet', () async {
      // TODO
    });

    //Future dappsUniswapv3TickDayDataHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dappsUniswapv3TickDayDataHistoricalGet', () async {
      // TODO
    });

    // GetTicks
    //
    //Future<BuiltList<UniswapV3TickV3DTO>> dappsUniswapv3TicksCurrentGet({ String filterPoolId }) async
    test('test dappsUniswapv3TicksCurrentGet', () async {
      // TODO
    });

    // GetTicksDayData
    //
    //Future<BuiltList<UniswapV3TickDayDataV3DTO>> dappsUniswapv3TicksDayDataCurrentGet({ String filterPoolId }) async
    test('test dappsUniswapv3TicksDayDataCurrentGet', () async {
      // TODO
    });

    //Future dappsUniswapv3TicksHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test dappsUniswapv3TicksHistoricalGet', () async {
      // TODO
    });

    //Future dappsUniswapv3TokenDayDataHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test dappsUniswapv3TokenDayDataHistoricalGet', () async {
      // TODO
    });

    //Future dappsUniswapv3TokenHourDataHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test dappsUniswapv3TokenHourDataHistoricalGet', () async {
      // TODO
    });

    // GetTokens
    //
    //Future<BuiltList<UniswapV3TokenV3DTO>> dappsUniswapv3TokensCurrentGet({ String filterTokenId }) async
    test('test dappsUniswapv3TokensCurrentGet', () async {
      // TODO
    });

    // GetTokensDayData
    //
    //Future<BuiltList<UniswapV3TokenV3DayDataDTO>> dappsUniswapv3TokensDayDataCurrentGet({ String filterTokenId }) async
    test('test dappsUniswapv3TokensDayDataCurrentGet', () async {
      // TODO
    });

    //Future dappsUniswapv3TokensHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test dappsUniswapv3TokensHistoricalGet', () async {
      // TODO
    });

    // GetTokensHourData
    //
    //Future<BuiltList<UniswapV3TokenHourDataV3DTO>> dappsUniswapv3TokensHourDataCurrentGet({ String filterTokenId }) async
    test('test dappsUniswapv3TokensHourDataCurrentGet', () async {
      // TODO
    });

    //Future dappsUniswapv3TransactionsHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dappsUniswapv3TransactionsHistoricalGet', () async {
      // TODO
    });

    // GetUniswapDayData
    //
    //Future<BuiltList<UniswapV3UniswapDayDataV3DTO>> dappsUniswapv3UniswapDayDataCurrentGet() async
    test('test dappsUniswapv3UniswapDayDataCurrentGet', () async {
      // TODO
    });

  });
}
