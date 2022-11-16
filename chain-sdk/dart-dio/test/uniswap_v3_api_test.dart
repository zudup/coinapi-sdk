import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for UniswapV3Api
void main() {
  final instance = Openapi().getUniswapV3Api();

  group(UniswapV3Api, () {
    // BundleV3s (historical) 🔥
    //
    // Gets bundlev3s.
    //
    //Future<BuiltList<UniswapV3BundleV3DTO>> uniswapV3GetBundleV3sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test uniswapV3GetBundleV3sHistorical', () async {
      // TODO
    });

    // Bundles (current)
    //
    // Gets bundles.
    //
    //Future<BuiltList<UniswapV3BundleV3DTO>> uniswapV3GetBundlesCurrent() async
    test('test uniswapV3GetBundlesCurrent', () async {
      // TODO
    });

    // BurnV3s (historical) 🔥
    //
    // Gets burnv3s.
    //
    //Future<BuiltList<UniswapV3BurnV3DTO>> uniswapV3GetBurnV3sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool, String token0, String token1 }) async
    test('test uniswapV3GetBurnV3sHistorical', () async {
      // TODO
    });

    // Burns (current)
    //
    // Gets burns.
    //
    //Future<BuiltList<UniswapV3BurnV3DTO>> uniswapV3GetBurnsCurrent({ String filterPoolId }) async
    test('test uniswapV3GetBurnsCurrent', () async {
      // TODO
    });

    // DayData (current)
    //
    // Gets uniswapv3 day data.
    //
    //Future<BuiltList<UniswapV3UniswapDayDataV3DTO>> uniswapV3GetDayDataCurrent() async
    test('test uniswapV3GetDayDataCurrent', () async {
      // TODO
    });

    // Factory (current)
    //
    // Gets factory.
    //
    //Future<BuiltList<UniswapV3FactoryV3DTO>> uniswapV3GetFactoryCurrent() async
    test('test uniswapV3GetFactoryCurrent', () async {
      // TODO
    });

    // FactoryV3s (historical) 🔥
    //
    // Gets factoryv3s.
    //
    //Future<BuiltList<UniswapV3FactoryV3DTO>> uniswapV3GetFactoryV3sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test uniswapV3GetFactoryV3sHistorical', () async {
      // TODO
    });

    // MintV3s (historical) 🔥
    //
    // Gets mintv3s.
    //
    //Future<BuiltList<UniswapV3MintV3DTO>> uniswapV3GetMintV3sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool, String token0, String token1 }) async
    test('test uniswapV3GetMintV3sHistorical', () async {
      // TODO
    });

    // Mints (current)
    //
    // Gets mints.
    //
    //Future<BuiltList<UniswapV3MintV3DTO>> uniswapV3GetMintsCurrent({ String filterPoolId }) async
    test('test uniswapV3GetMintsCurrent', () async {
      // TODO
    });

    // PoolDayDataV3s (historical) 🔥
    //
    // Gets pooldaydatav3s.
    //
    //Future<BuiltList<UniswapV3PoolDayDataV3DTO>> uniswapV3GetPoolDayDataV3sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool }) async
    test('test uniswapV3GetPoolDayDataV3sHistorical', () async {
      // TODO
    });

    // PoolHourDataV3s (historical) 🔥
    //
    // Gets poolhourdatav3s.
    //
    //Future<BuiltList<UniswapV3PoolHourDataV3DTO>> uniswapV3GetPoolHourDataV3sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool }) async
    test('test uniswapV3GetPoolHourDataV3sHistorical', () async {
      // TODO
    });

    // PoolV3s (historical) 🔥
    //
    // Gets poolv3s.
    //
    //Future<BuiltList<UniswapV3PoolV3DTO>> uniswapV3GetPoolV3sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String token0, String token1 }) async
    test('test uniswapV3GetPoolV3sHistorical', () async {
      // TODO
    });

    // Pools (current) 🔥
    //
    // Gets pools.
    //
    //Future<BuiltList<UniswapV3PoolV3DTO>> uniswapV3GetPoolsCurrent({ String filterPoolId }) async
    test('test uniswapV3GetPoolsCurrent', () async {
      // TODO
    });

    // PoolsDayData (current)
    //
    // Gets pools day data.
    //
    //Future<BuiltList<UniswapV3PoolDayDataV3DTO>> uniswapV3GetPoolsDayDataCurrent({ String filterPoolId }) async
    test('test uniswapV3GetPoolsDayDataCurrent', () async {
      // TODO
    });

    // PoolsHourData (current)
    //
    // Gets pools hour data.
    //
    //Future<BuiltList<UniswapV3PoolHourDataV3DTO>> uniswapV3GetPoolsHourDataCurrent({ String filterPoolId }) async
    test('test uniswapV3GetPoolsHourDataCurrent', () async {
      // TODO
    });

    // PositionSnapshotV3s (historical) 🔥
    //
    // Gets positionsnapshotv3s.
    //
    //Future<BuiltList<UniswapV3PositionSnapshotV3DTO>> uniswapV3GetPositionSnapshotV3sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool }) async
    test('test uniswapV3GetPositionSnapshotV3sHistorical', () async {
      // TODO
    });

    // PositionV3s (historical) 🔥
    //
    // Gets positionv3s.
    //
    //Future<BuiltList<UniswapV3PositionV3DTO>> uniswapV3GetPositionV3sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool, String token0, String token1 }) async
    test('test uniswapV3GetPositionV3sHistorical', () async {
      // TODO
    });

    // Positions (current)
    //
    // Gets positions.
    //
    //Future<BuiltList<UniswapV3PositionV3DTO>> uniswapV3GetPositionsCurrent({ String filterPoolId }) async
    test('test uniswapV3GetPositionsCurrent', () async {
      // TODO
    });

    // PositionsSnapshots (current)
    //
    // Gets positions snapshots.
    //
    //Future<BuiltList<UniswapV3PositionSnapshotV3DTO>> uniswapV3GetPositionsSnapshotsCurrent({ String filterPoolId }) async
    test('test uniswapV3GetPositionsSnapshotsCurrent', () async {
      // TODO
    });

    // SwapV3s (historical) 🔥
    //
    // Gets swapv3s.
    //
    //Future<BuiltList<UniswapV3SwapV3DTO>> uniswapV3GetSwapV3sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool, String token0, String token1 }) async
    test('test uniswapV3GetSwapV3sHistorical', () async {
      // TODO
    });

    // Swaps (current) 🔥
    //
    // Gets swaps.
    //
    //Future<BuiltList<UniswapV3SwapV3DTO>> uniswapV3GetSwapsCurrent({ String filterPoolId }) async
    test('test uniswapV3GetSwapsCurrent', () async {
      // TODO
    });

    // TickDayDataV3s (historical) 🔥
    //
    // Gets tickdaydatav3s.
    //
    //Future<BuiltList<UniswapV3TickDayDataV3DTO>> uniswapV3GetTickDayDataV3sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool }) async
    test('test uniswapV3GetTickDayDataV3sHistorical', () async {
      // TODO
    });

    // TickV3s (historical) 🔥
    //
    // Gets tickv3s.
    //
    //Future<BuiltList<UniswapV3TickV3DTO>> uniswapV3GetTickV3sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool }) async
    test('test uniswapV3GetTickV3sHistorical', () async {
      // TODO
    });

    // Ticks (current)
    //
    // Gets ticks.
    //
    //Future<BuiltList<UniswapV3TickV3DTO>> uniswapV3GetTicksCurrent({ String filterPoolId }) async
    test('test uniswapV3GetTicksCurrent', () async {
      // TODO
    });

    // TicksDayData (current)
    //
    // Gets ticks day data.
    //
    //Future<BuiltList<UniswapV3TickDayDataV3DTO>> uniswapV3GetTicksDayDataCurrent({ String filterPoolId }) async
    test('test uniswapV3GetTicksDayDataCurrent', () async {
      // TODO
    });

    // TokenHourDataV3s (historical) 🔥
    //
    // Gets tokenhourdatav3s.
    //
    //Future<BuiltList<UniswapV3TokenHourDataV3DTO>> uniswapV3GetTokenHourDataV3sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test uniswapV3GetTokenHourDataV3sHistorical', () async {
      // TODO
    });

    // TokenV3DayDatas (historical) 🔥
    //
    // Gets tokenv3daydatas.
    //
    //Future<BuiltList<UniswapV3TokenV3DayDataDTO>> uniswapV3GetTokenV3DayDatasHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test uniswapV3GetTokenV3DayDatasHistorical', () async {
      // TODO
    });

    // TokenV3s (historical) 🔥
    //
    // Gets tokenv3s.
    //
    //Future<BuiltList<UniswapV3TokenV3DTO>> uniswapV3GetTokenV3sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String symbol, String name }) async
    test('test uniswapV3GetTokenV3sHistorical', () async {
      // TODO
    });

    // Tokens (current) 🔥
    //
    // Gets tokens.
    //
    //Future<BuiltList<UniswapV3TokenV3DTO>> uniswapV3GetTokensCurrent({ String filterTokenId }) async
    test('test uniswapV3GetTokensCurrent', () async {
      // TODO
    });

    // TokensDayData (current)
    //
    // Gets tokens day data.
    //
    //Future<BuiltList<UniswapV3TokenV3DayDataDTO>> uniswapV3GetTokensDayDataCurrent({ String filterTokenId }) async
    test('test uniswapV3GetTokensDayDataCurrent', () async {
      // TODO
    });

    // TokensHourData (current)
    //
    // Gets tokens hour data.
    //
    //Future<BuiltList<UniswapV3TokenHourDataV3DTO>> uniswapV3GetTokensHourDataCurrent({ String filterTokenId }) async
    test('test uniswapV3GetTokensHourDataCurrent', () async {
      // TODO
    });

    // TransactionV3s (historical) 🔥
    //
    // Gets transactionv3s.
    //
    //Future<BuiltList<UniswapV3TransactionV3DTO>> uniswapV3GetTransactionV3sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test uniswapV3GetTransactionV3sHistorical', () async {
      // TODO
    });

    // UniswapDayDataV3s (historical) 🔥
    //
    // Gets uniswapdaydatav3s.
    //
    //Future<BuiltList<UniswapV3UniswapDayDataV3DTO>> uniswapV3GetUniswapDayDataV3sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test uniswapV3GetUniswapDayDataV3sHistorical', () async {
      // TODO
    });

  });
}
