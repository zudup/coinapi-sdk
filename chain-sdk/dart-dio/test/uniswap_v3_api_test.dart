import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for UniswapV3Api
void main() {
  final instance = Openapi().getUniswapV3Api();

  group(UniswapV3Api, () {
    // BundleV3DTOs (historical) 🔥
    //
    // Gets BundleV3DTOs.
    //
    //Future<BuiltList<UniswapV3BundleV3DTO>> uniswapV3GetBundleV3DTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV3GetBundleV3DTOsHistorical', () async {
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

    // Bundles (historical)
    //
    // Gets bundles.
    //
    //Future<BuiltList<UniswapV3BundleV3DTO>> uniswapV3GetBundlesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test uniswapV3GetBundlesHistorical', () async {
      // TODO
    });

    // BurnV3DTOs (historical) 🔥
    //
    // Gets BurnV3DTOs.
    //
    //Future<BuiltList<UniswapV3BurnV3DTO>> uniswapV3GetBurnV3DTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV3GetBurnV3DTOsHistorical', () async {
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

    // Burns (historical)
    //
    // Gets burns.
    //
    //Future<BuiltList<UniswapV3BurnV3DTO>> uniswapV3GetBurnsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV3GetBurnsHistorical', () async {
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

    // DayData (historical)
    //
    // Gets uniswapv3 day data.
    //
    //Future<BuiltList<UniswapV3UniswapDayDataV3DTO>> uniswapV3GetDayDataHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test uniswapV3GetDayDataHistorical', () async {
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

    // Factory (historical)
    //
    // Gets factory.
    //
    //Future<BuiltList<UniswapV3FactoryV3DTO>> uniswapV3GetFactoryHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test uniswapV3GetFactoryHistorical', () async {
      // TODO
    });

    // FactoryV3DTOs (historical) 🔥
    //
    // Gets FactoryV3DTOs.
    //
    //Future<BuiltList<UniswapV3FactoryV3DTO>> uniswapV3GetFactoryV3DTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV3GetFactoryV3DTOsHistorical', () async {
      // TODO
    });

    // MintV3DTOs (historical) 🔥
    //
    // Gets MintV3DTOs.
    //
    //Future<BuiltList<UniswapV3MintV3DTO>> uniswapV3GetMintV3DTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV3GetMintV3DTOsHistorical', () async {
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

    // Mints (historical)
    //
    // Gets mints.
    //
    //Future<BuiltList<UniswapV3MintV3DTO>> uniswapV3GetMintsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV3GetMintsHistorical', () async {
      // TODO
    });

    // PoolDayDataV3DTOs (historical) 🔥
    //
    // Gets PoolDayDataV3DTOs.
    //
    //Future<BuiltList<UniswapV3PoolDayDataV3DTO>> uniswapV3GetPoolDayDataV3DTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV3GetPoolDayDataV3DTOsHistorical', () async {
      // TODO
    });

    // PoolHourDataV3DTOs (historical) 🔥
    //
    // Gets PoolHourDataV3DTOs.
    //
    //Future<BuiltList<UniswapV3PoolHourDataV3DTO>> uniswapV3GetPoolHourDataV3DTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV3GetPoolHourDataV3DTOsHistorical', () async {
      // TODO
    });

    // PoolV3DTOs (historical) 🔥
    //
    // Gets PoolV3DTOs.
    //
    //Future<BuiltList<UniswapV3PoolV3DTO>> uniswapV3GetPoolV3DTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV3GetPoolV3DTOsHistorical', () async {
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

    // PoolsDayData (historical)
    //
    // Gets pools day data.
    //
    //Future<BuiltList<UniswapV3PoolDayDataV3DTO>> uniswapV3GetPoolsDayDataHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV3GetPoolsDayDataHistorical', () async {
      // TODO
    });

    // Pools (historical) 🔥
    //
    // Gets pools.
    //
    //Future<BuiltList<UniswapV3PoolV3DTO>> uniswapV3GetPoolsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV3GetPoolsHistorical', () async {
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

    // PoolsHourData (historical)
    //
    // Gets pools hour data.
    //
    //Future<BuiltList<UniswapV3PoolHourDataV3DTO>> uniswapV3GetPoolsHourDataHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV3GetPoolsHourDataHistorical', () async {
      // TODO
    });

    // PositionSnapshotV3DTOs (historical) 🔥
    //
    // Gets PositionSnapshotV3DTOs.
    //
    //Future<BuiltList<UniswapV3PositionSnapshotV3DTO>> uniswapV3GetPositionSnapshotV3DTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV3GetPositionSnapshotV3DTOsHistorical', () async {
      // TODO
    });

    // PositionV3DTOs (historical) 🔥
    //
    // Gets PositionV3DTOs.
    //
    //Future<BuiltList<UniswapV3PositionV3DTO>> uniswapV3GetPositionV3DTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV3GetPositionV3DTOsHistorical', () async {
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

    // Positions (historical)
    //
    // Gets positions.
    //
    //Future<BuiltList<UniswapV3PositionV3DTO>> uniswapV3GetPositionsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV3GetPositionsHistorical', () async {
      // TODO
    });

    // PositionsSnaphots (historical)
    //
    // Gets positions snapshots.
    //
    //Future<BuiltList<UniswapV3PositionSnapshotV3DTO>> uniswapV3GetPositionsSnaphotsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV3GetPositionsSnaphotsHistorical', () async {
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

    // SwapV3DTOs (historical) 🔥
    //
    // Gets SwapV3DTOs.
    //
    //Future<BuiltList<UniswapV3SwapV3DTO>> uniswapV3GetSwapV3DTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV3GetSwapV3DTOsHistorical', () async {
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

    // Swaps (historical) 🔥
    //
    // Gets swaps.
    //
    //Future<BuiltList<UniswapV3SwapV3DTO>> uniswapV3GetSwapsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV3GetSwapsHistorical', () async {
      // TODO
    });

    // TickDayDataV3DTOs (historical) 🔥
    //
    // Gets TickDayDataV3DTOs.
    //
    //Future<BuiltList<UniswapV3TickDayDataV3DTO>> uniswapV3GetTickDayDataV3DTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV3GetTickDayDataV3DTOsHistorical', () async {
      // TODO
    });

    // TickV3DTOs (historical) 🔥
    //
    // Gets TickV3DTOs.
    //
    //Future<BuiltList<UniswapV3TickV3DTO>> uniswapV3GetTickV3DTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV3GetTickV3DTOsHistorical', () async {
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

    // TicksDayData (historical)
    //
    // Gets ticks day data.
    //
    //Future<BuiltList<UniswapV3TickDayDataV3DTO>> uniswapV3GetTicksDayDataHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV3GetTicksDayDataHistorical', () async {
      // TODO
    });

    // Ticks (historical)
    //
    // Gets ticks.
    //
    //Future<BuiltList<UniswapV3TickV3DTO>> uniswapV3GetTicksHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV3GetTicksHistorical', () async {
      // TODO
    });

    // TokenHourDataV3DTOs (historical) 🔥
    //
    // Gets TokenHourDataV3DTOs.
    //
    //Future<BuiltList<UniswapV3TokenHourDataV3DTO>> uniswapV3GetTokenHourDataV3DTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV3GetTokenHourDataV3DTOsHistorical', () async {
      // TODO
    });

    // TokenV3DTOs (historical) 🔥
    //
    // Gets TokenV3DTOs.
    //
    //Future<BuiltList<UniswapV3TokenV3DTO>> uniswapV3GetTokenV3DTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV3GetTokenV3DTOsHistorical', () async {
      // TODO
    });

    // TokenV3DayDataDTOs (historical) 🔥
    //
    // Gets TokenV3DayDataDTOs.
    //
    //Future<BuiltList<UniswapV3TokenV3DayDataDTO>> uniswapV3GetTokenV3DayDataDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV3GetTokenV3DayDataDTOsHistorical', () async {
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

    // TokensDayData (historical)
    //
    // Gets tokens day data.
    //
    //Future<BuiltList<UniswapV3TokenV3DayDataDTO>> uniswapV3GetTokensDayDataHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test uniswapV3GetTokensDayDataHistorical', () async {
      // TODO
    });

    // Tokens (historical) 🔥
    //
    // Gets tokens.
    //
    //Future<BuiltList<UniswapV3TokenV3DTO>> uniswapV3GetTokensHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test uniswapV3GetTokensHistorical', () async {
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

    // TokensHourData (historical)
    //
    // Gets tokens hour data.
    //
    //Future<BuiltList<UniswapV3TokenHourDataV3DTO>> uniswapV3GetTokensHourDataHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test uniswapV3GetTokensHourDataHistorical', () async {
      // TODO
    });

    // TransactionV3DTOs (historical) 🔥
    //
    // Gets TransactionV3DTOs.
    //
    //Future<BuiltList<UniswapV3TransactionV3DTO>> uniswapV3GetTransactionV3DTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV3GetTransactionV3DTOsHistorical', () async {
      // TODO
    });

    // Transactions (historical)
    //
    // Gets transactions.
    //
    //Future<BuiltList<UniswapV3TransactionV3DTO>> uniswapV3GetTransactionsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test uniswapV3GetTransactionsHistorical', () async {
      // TODO
    });

    // UniswapDayDataV3DTOs (historical) 🔥
    //
    // Gets UniswapDayDataV3DTOs.
    //
    //Future<BuiltList<UniswapV3UniswapDayDataV3DTO>> uniswapV3GetUniswapDayDataV3DTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test uniswapV3GetUniswapDayDataV3DTOsHistorical', () async {
      // TODO
    });

  });
}
