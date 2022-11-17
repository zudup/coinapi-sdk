import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for UniswapV2Api
void main() {
  final instance = Openapi().getUniswapV2Api();

  group(UniswapV2Api, () {
    // Bundles (current)
    //
    // Gets bundles.
    //
    //Future<BuiltList<UniswapV2BundleDTO>> uniswapV2BundlesCurrent() async
    test('test uniswapV2BundlesCurrent', () async {
      // TODO
    });

    // Burns (current)
    //
    // Gets burns.
    //
    //Future<BuiltList<UniswapV2BurnDTO>> uniswapV2BurnsCurrent() async
    test('test uniswapV2BurnsCurrent', () async {
      // TODO
    });

    // Bundles (historical) 🔥
    //
    // Gets bundles.
    //
    //Future<BuiltList<UniswapV2BundleDTO>> uniswapV2GetBundlesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test uniswapV2GetBundlesHistorical', () async {
      // TODO
    });

    // Burns (historical) 🔥
    //
    // Gets burns.
    //
    //Future<BuiltList<UniswapV2BurnDTO>> uniswapV2GetBurnsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pair }) async
    test('test uniswapV2GetBurnsHistorical', () async {
      // TODO
    });

    // LiquidityPositionSnapshots (historical) 🔥
    //
    // Gets liquidityPositionSnapshots.
    //
    //Future<BuiltList<UniswapV2LiquidityPositionSnapshotDTO>> uniswapV2GetLiquidityPositionSnapshotsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String user, String pair }) async
    test('test uniswapV2GetLiquidityPositionSnapshotsHistorical', () async {
      // TODO
    });

    // LiquidityPositions (historical) 🔥
    //
    // Gets liquidityPositions.
    //
    //Future<BuiltList<UniswapV2LiquidityPositionDTO>> uniswapV2GetLiquidityPositionsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String user, String pair }) async
    test('test uniswapV2GetLiquidityPositionsHistorical', () async {
      // TODO
    });

    // Mints (historical) 🔥
    //
    // Gets mints.
    //
    //Future<BuiltList<UniswapV2MintDTO>> uniswapV2GetMintsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pair }) async
    test('test uniswapV2GetMintsHistorical', () async {
      // TODO
    });

    // PairDayDatas (historical) 🔥
    //
    // Gets pairDayDatas.
    //
    //Future<BuiltList<UniswapV2PairDayDataDTO>> uniswapV2GetPairDayDatasHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String token0, String token1 }) async
    test('test uniswapV2GetPairDayDatasHistorical', () async {
      // TODO
    });

    // PairHourDatas (historical) 🔥
    //
    // Gets pairHourDatas.
    //
    //Future<BuiltList<UniswapV2PairHourDataDTO>> uniswapV2GetPairHourDatasHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pair }) async
    test('test uniswapV2GetPairHourDatasHistorical', () async {
      // TODO
    });

    // Pairs (historical) 🔥
    //
    // Gets pairs.
    //
    //Future<BuiltList<UniswapV2PairDTO>> uniswapV2GetPairsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String token0, String token1 }) async
    test('test uniswapV2GetPairsHistorical', () async {
      // TODO
    });

    // Pools (current) 🔥
    //
    // Gets pools.
    //
    //Future<BuiltList<UniswapV2PairDTO>> uniswapV2GetPoolsCurrent({ String filterPoolId }) async
    test('test uniswapV2GetPoolsCurrent', () async {
      // TODO
    });

    // Swaps (current) 🔥
    //
    // Gets swaps.
    //
    //Future<BuiltList<UniswapV2SwapDTO>> uniswapV2GetSwapsCurrent() async
    test('test uniswapV2GetSwapsCurrent', () async {
      // TODO
    });

    // Swaps (historical) 🔥
    //
    // Gets swaps.
    //
    //Future<BuiltList<UniswapV2SwapDTO>> uniswapV2GetSwapsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pair }) async
    test('test uniswapV2GetSwapsHistorical', () async {
      // TODO
    });

    // TokenDayDatas (historical) 🔥
    //
    // Gets tokenDayDatas.
    //
    //Future<BuiltList<UniswapV2TokenDayDataDTO>> uniswapV2GetTokenDayDatasHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test uniswapV2GetTokenDayDatasHistorical', () async {
      // TODO
    });

    // Tokens (current) 🔥
    //
    // Gets tokens.
    //
    //Future<BuiltList<UniswapV2TokenDTO>> uniswapV2GetTokensCurrent() async
    test('test uniswapV2GetTokensCurrent', () async {
      // TODO
    });

    // Tokens (historical) 🔥
    //
    // Gets tokens.
    //
    //Future<BuiltList<UniswapV2TokenDTO>> uniswapV2GetTokensHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String symbol, String name }) async
    test('test uniswapV2GetTokensHistorical', () async {
      // TODO
    });

    // Transactions (historical) 🔥
    //
    // Gets transactions.
    //
    //Future<BuiltList<UniswapV2TransactionDTO>> uniswapV2GetTransactionsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test uniswapV2GetTransactionsHistorical', () async {
      // TODO
    });

    // UniswapDayDatas (historical) 🔥
    //
    // Gets uniswapDayDatas.
    //
    //Future<BuiltList<UniswapV2UniswapDayDataDTO>> uniswapV2GetUniswapDayDatasHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test uniswapV2GetUniswapDayDatasHistorical', () async {
      // TODO
    });

    // UniswapFactorys (historical) 🔥
    //
    // Gets uniswapFactorys.
    //
    //Future<BuiltList<UniswapV2UniswapFactoryDTO>> uniswapV2GetUniswapFactorysHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test uniswapV2GetUniswapFactorysHistorical', () async {
      // TODO
    });

    // Users (historical) 🔥
    //
    // Gets users.
    //
    //Future<BuiltList<UniswapV2UserDTO>> uniswapV2GetUsersHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test uniswapV2GetUsersHistorical', () async {
      // TODO
    });

    // LiquidityPositionSnapshots (current)
    //
    // Gets liquidityPositionSnapshots.
    //
    //Future<BuiltList<UniswapV2LiquidityPositionSnapshotDTO>> uniswapV2LiquidityPositionSnapshotsCurrent() async
    test('test uniswapV2LiquidityPositionSnapshotsCurrent', () async {
      // TODO
    });

    // LiquidityPositions (current)
    //
    // Gets liquidityPositions.
    //
    //Future<BuiltList<UniswapV2LiquidityPositionDTO>> uniswapV2LiquidityPositionsCurrent() async
    test('test uniswapV2LiquidityPositionsCurrent', () async {
      // TODO
    });

    // Mints (current)
    //
    // Gets mints.
    //
    //Future<BuiltList<UniswapV2MintDTO>> uniswapV2MintsCurrent() async
    test('test uniswapV2MintsCurrent', () async {
      // TODO
    });

    // PairDayDatas (current)
    //
    // Gets pairDayDatas.
    //
    //Future<BuiltList<UniswapV2PairDayDataDTO>> uniswapV2PairDayDatasCurrent() async
    test('test uniswapV2PairDayDatasCurrent', () async {
      // TODO
    });

    // PairHourDatas (current)
    //
    // Gets pairHourDatas.
    //
    //Future<BuiltList<UniswapV2PairHourDataDTO>> uniswapV2PairHourDatasCurrent() async
    test('test uniswapV2PairHourDatasCurrent', () async {
      // TODO
    });

    // Pairs (current)
    //
    // Gets pairs.
    //
    //Future<BuiltList<UniswapV2PairDTO>> uniswapV2PairsCurrent({ String id }) async
    test('test uniswapV2PairsCurrent', () async {
      // TODO
    });

    // TokenDayDatas (current)
    //
    // Gets tokenDayDatas.
    //
    //Future<BuiltList<UniswapV2TokenDayDataDTO>> uniswapV2TokenDayDatasCurrent() async
    test('test uniswapV2TokenDayDatasCurrent', () async {
      // TODO
    });

    // Transactions (current)
    //
    // Gets transactions.
    //
    //Future<BuiltList<UniswapV2TransactionDTO>> uniswapV2TransactionsCurrent() async
    test('test uniswapV2TransactionsCurrent', () async {
      // TODO
    });

    // UniswapDayDatas (current)
    //
    // Gets uniswapDayDatas.
    //
    //Future<BuiltList<UniswapV2UniswapDayDataDTO>> uniswapV2UniswapDayDatasCurrent() async
    test('test uniswapV2UniswapDayDatasCurrent', () async {
      // TODO
    });

    // UniswapFactorys (current)
    //
    // Gets uniswapFactorys.
    //
    //Future<BuiltList<UniswapV2UniswapFactoryDTO>> uniswapV2UniswapFactorysCurrent() async
    test('test uniswapV2UniswapFactorysCurrent', () async {
      // TODO
    });

    // Users (current)
    //
    // Gets users.
    //
    //Future<BuiltList<UniswapV2UserDTO>> uniswapV2UsersCurrent() async
    test('test uniswapV2UsersCurrent', () async {
      // TODO
    });

  });
}
