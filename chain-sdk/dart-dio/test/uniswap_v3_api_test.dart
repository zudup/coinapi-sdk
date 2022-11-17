import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for UniswapV3Api
void main() {
  final instance = Openapi().getUniswapV3Api();

  group(UniswapV3Api, () {
    // Bundles (current)
    //
    // Gets bundles.
    //
    //Future<BuiltList<UniswapV3BundleDTO>> uniswapV3BundlesCurrent() async
    test('test uniswapV3BundlesCurrent', () async {
      // TODO
    });

    // Burns (current)
    //
    // Gets burns.
    //
    //Future<BuiltList<UniswapV3BurnDTO>> uniswapV3BurnsCurrent() async
    test('test uniswapV3BurnsCurrent', () async {
      // TODO
    });

    // Factorys (current)
    //
    // Gets factorys.
    //
    //Future<BuiltList<UniswapV3FactoryDTO>> uniswapV3FactorysCurrent() async
    test('test uniswapV3FactorysCurrent', () async {
      // TODO
    });

    // Bundles (historical) 🔥
    //
    // Gets bundles.
    //
    //Future<BuiltList<UniswapV3BundleDTO>> uniswapV3GetBundlesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test uniswapV3GetBundlesHistorical', () async {
      // TODO
    });

    // Burns (historical) 🔥
    //
    // Gets burns.
    //
    //Future<BuiltList<UniswapV3BurnDTO>> uniswapV3GetBurnsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool, String token0, String token1 }) async
    test('test uniswapV3GetBurnsHistorical', () async {
      // TODO
    });

    // Factorys (historical) 🔥
    //
    // Gets factorys.
    //
    //Future<BuiltList<UniswapV3FactoryDTO>> uniswapV3GetFactorysHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test uniswapV3GetFactorysHistorical', () async {
      // TODO
    });

    // Mints (historical) 🔥
    //
    // Gets mints.
    //
    //Future<BuiltList<UniswapV3MintDTO>> uniswapV3GetMintsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool, String token0, String token1 }) async
    test('test uniswapV3GetMintsHistorical', () async {
      // TODO
    });

    // PoolDayDatas (historical) 🔥
    //
    // Gets poolDayDatas.
    //
    //Future<BuiltList<UniswapV3PoolDayDataDTO>> uniswapV3GetPoolDayDatasHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool }) async
    test('test uniswapV3GetPoolDayDatasHistorical', () async {
      // TODO
    });

    // PoolHourDatas (historical) 🔥
    //
    // Gets poolHourDatas.
    //
    //Future<BuiltList<UniswapV3PoolHourDataDTO>> uniswapV3GetPoolHourDatasHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool }) async
    test('test uniswapV3GetPoolHourDatasHistorical', () async {
      // TODO
    });

    // Pools (historical) 🔥
    //
    // Gets pools.
    //
    //Future<BuiltList<UniswapV3PoolDTO>> uniswapV3GetPoolsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String token0, String token1 }) async
    test('test uniswapV3GetPoolsHistorical', () async {
      // TODO
    });

    // PositionSnapshots (historical) 🔥
    //
    // Gets positionSnapshots.
    //
    //Future<BuiltList<UniswapV3PositionSnapshotDTO>> uniswapV3GetPositionSnapshotsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool }) async
    test('test uniswapV3GetPositionSnapshotsHistorical', () async {
      // TODO
    });

    // Positions (historical) 🔥
    //
    // Gets positions.
    //
    //Future<BuiltList<UniswapV3PositionDTO>> uniswapV3GetPositionsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool, String token0, String token1 }) async
    test('test uniswapV3GetPositionsHistorical', () async {
      // TODO
    });

    // Swaps (historical) 🔥
    //
    // Gets swaps.
    //
    //Future<BuiltList<UniswapV3SwapDTO>> uniswapV3GetSwapsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool, String token0, String token1 }) async
    test('test uniswapV3GetSwapsHistorical', () async {
      // TODO
    });

    // TickDayDatas (historical) 🔥
    //
    // Gets tickDayDatas.
    //
    //Future<BuiltList<UniswapV3TickDayDataDTO>> uniswapV3GetTickDayDatasHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool }) async
    test('test uniswapV3GetTickDayDatasHistorical', () async {
      // TODO
    });

    // Ticks (historical) 🔥
    //
    // Gets ticks.
    //
    //Future<BuiltList<UniswapV3TickDTO>> uniswapV3GetTicksHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool }) async
    test('test uniswapV3GetTicksHistorical', () async {
      // TODO
    });

    // TokenHourDatas (historical) 🔥
    //
    // Gets tokenHourDatas.
    //
    //Future<BuiltList<UniswapV3TokenHourDataDTO>> uniswapV3GetTokenHourDatasHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test uniswapV3GetTokenHourDatasHistorical', () async {
      // TODO
    });

    // TokenV3DayDatas (historical) 🔥
    //
    // Gets tokenV3DayDatas.
    //
    //Future<BuiltList<UniswapV3TokenV3DayDataDTO>> uniswapV3GetTokenV3DayDatasHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test uniswapV3GetTokenV3DayDatasHistorical', () async {
      // TODO
    });

    // Tokens (historical) 🔥
    //
    // Gets tokens.
    //
    //Future<BuiltList<UniswapV3TokenDTO>> uniswapV3GetTokensHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String symbol, String name }) async
    test('test uniswapV3GetTokensHistorical', () async {
      // TODO
    });

    // Transactions (historical) 🔥
    //
    // Gets transactions.
    //
    //Future<BuiltList<UniswapV3TransactionDTO>> uniswapV3GetTransactionsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test uniswapV3GetTransactionsHistorical', () async {
      // TODO
    });

    // UniswapDayDatas (historical) 🔥
    //
    // Gets uniswapDayDatas.
    //
    //Future<BuiltList<UniswapV3UniswapDayDataDTO>> uniswapV3GetUniswapDayDatasHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test uniswapV3GetUniswapDayDatasHistorical', () async {
      // TODO
    });

    // Mints (current)
    //
    // Gets mints.
    //
    //Future<BuiltList<UniswapV3MintDTO>> uniswapV3MintsCurrent() async
    test('test uniswapV3MintsCurrent', () async {
      // TODO
    });

    // PoolDayDatas (current)
    //
    // Gets poolDayDatas.
    //
    //Future<BuiltList<UniswapV3PoolDayDataDTO>> uniswapV3PoolDayDatasCurrent() async
    test('test uniswapV3PoolDayDatasCurrent', () async {
      // TODO
    });

    // PoolHourDatas (current)
    //
    // Gets poolHourDatas.
    //
    //Future<BuiltList<UniswapV3PoolHourDataDTO>> uniswapV3PoolHourDatasCurrent() async
    test('test uniswapV3PoolHourDatasCurrent', () async {
      // TODO
    });

    // Pools (current)
    //
    // Gets pools.
    //
    //Future<BuiltList<UniswapV3PoolDTO>> uniswapV3PoolsCurrent({ String id }) async
    test('test uniswapV3PoolsCurrent', () async {
      // TODO
    });

    // PositionSnapshots (current)
    //
    // Gets positionSnapshots.
    //
    //Future<BuiltList<UniswapV3PositionSnapshotDTO>> uniswapV3PositionSnapshotsCurrent() async
    test('test uniswapV3PositionSnapshotsCurrent', () async {
      // TODO
    });

    // Positions (current)
    //
    // Gets positions.
    //
    //Future<BuiltList<UniswapV3PositionDTO>> uniswapV3PositionsCurrent() async
    test('test uniswapV3PositionsCurrent', () async {
      // TODO
    });

    // Swaps (current)
    //
    // Gets swaps.
    //
    //Future<BuiltList<UniswapV3SwapDTO>> uniswapV3SwapsCurrent({ String pool }) async
    test('test uniswapV3SwapsCurrent', () async {
      // TODO
    });

    // TickDayDatas (current)
    //
    // Gets tickDayDatas.
    //
    //Future<BuiltList<UniswapV3TickDayDataDTO>> uniswapV3TickDayDatasCurrent() async
    test('test uniswapV3TickDayDatasCurrent', () async {
      // TODO
    });

    // Ticks (current)
    //
    // Gets ticks.
    //
    //Future<BuiltList<UniswapV3TickDTO>> uniswapV3TicksCurrent() async
    test('test uniswapV3TicksCurrent', () async {
      // TODO
    });

    // TokenHourDatas (current)
    //
    // Gets tokenHourDatas.
    //
    //Future<BuiltList<UniswapV3TokenHourDataDTO>> uniswapV3TokenHourDatasCurrent() async
    test('test uniswapV3TokenHourDatasCurrent', () async {
      // TODO
    });

    // TokenV3DayDatas (current)
    //
    // Gets tokenV3DayDatas.
    //
    //Future<BuiltList<UniswapV3TokenV3DayDataDTO>> uniswapV3TokenV3DayDatasCurrent() async
    test('test uniswapV3TokenV3DayDatasCurrent', () async {
      // TODO
    });

    // Tokens (current)
    //
    // Gets tokens.
    //
    //Future<BuiltList<UniswapV3TokenDTO>> uniswapV3TokensCurrent() async
    test('test uniswapV3TokensCurrent', () async {
      // TODO
    });

    // Transactions (current)
    //
    // Gets transactions.
    //
    //Future<BuiltList<UniswapV3TransactionDTO>> uniswapV3TransactionsCurrent() async
    test('test uniswapV3TransactionsCurrent', () async {
      // TODO
    });

    // UniswapDayDatas (current)
    //
    // Gets uniswapDayDatas.
    //
    //Future<BuiltList<UniswapV3UniswapDayDataDTO>> uniswapV3UniswapDayDatasCurrent() async
    test('test uniswapV3UniswapDayDatasCurrent', () async {
      // TODO
    });

  });
}
