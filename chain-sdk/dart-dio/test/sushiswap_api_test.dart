import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for SushiswapApi
void main() {
  final instance = Openapi().getSushiswapApi();

  group(SushiswapApi, () {
    // Exchanges (current) 🔥
    //
    // Gets exchanges.
    //
    //Future<BuiltList<CurveExchangeDTO>> curveGetExchangesCurrent() async
    test('test curveGetExchangesCurrent', () async {
      // TODO
    });

    // Trades (current) 🔥
    //
    // Gets trades.
    //
    //Future<BuiltList<DexTradeDTO>> dexGetTradesCurrent() async
    test('test dexGetTradesCurrent', () async {
      // TODO
    });

    // Bundles (historical) 🔥
    //
    // Gets bundles.
    //
    //Future<BuiltList<SushiswapBundleDTO>> sushiswapGetBundlesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test sushiswapGetBundlesHistorical', () async {
      // TODO
    });

    // Burns (historical) 🔥
    //
    // Gets burns.
    //
    //Future<BuiltList<SushiswapBurnDTO>> sushiswapGetBurnsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pair }) async
    test('test sushiswapGetBurnsHistorical', () async {
      // TODO
    });

    // DayDatas (historical) 🔥
    //
    // Gets daydatas.
    //
    //Future<BuiltList<SushiswapDayDataDTO>> sushiswapGetDayDatasHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test sushiswapGetDayDatasHistorical', () async {
      // TODO
    });

    // Factorys (historical) 🔥
    //
    // Gets factorys.
    //
    //Future<BuiltList<SushiswapFactoryDTO>> sushiswapGetFactorysHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test sushiswapGetFactorysHistorical', () async {
      // TODO
    });

    // HourDatas (historical) 🔥
    //
    // Gets hourdatas.
    //
    //Future<BuiltList<SushiswapHourDataDTO>> sushiswapGetHourDatasHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test sushiswapGetHourDatasHistorical', () async {
      // TODO
    });

    // LiquidityPositionSnapshots (historical) 🔥
    //
    // Gets liquiditypositionsnapshots.
    //
    //Future<BuiltList<SushiswapLiquidityPositionSnapshotDTO>> sushiswapGetLiquidityPositionSnapshotsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String user, String pair }) async
    test('test sushiswapGetLiquidityPositionSnapshotsHistorical', () async {
      // TODO
    });

    // LiquidityPositions (historical) 🔥
    //
    // Gets liquiditypositions.
    //
    //Future<BuiltList<SushiswapLiquidityPositionDTO>> sushiswapGetLiquidityPositionsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String user, String pair }) async
    test('test sushiswapGetLiquidityPositionsHistorical', () async {
      // TODO
    });

    // Mints (historical) 🔥
    //
    // Gets mints.
    //
    //Future<BuiltList<SushiswapMintDTO>> sushiswapGetMintsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pair }) async
    test('test sushiswapGetMintsHistorical', () async {
      // TODO
    });

    // PairDayDatas (historical) 🔥
    //
    // Gets pairdaydatas.
    //
    //Future<BuiltList<SushiswapPairDayDataDTO>> sushiswapGetPairDayDatasHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pair, String token0, String token1 }) async
    test('test sushiswapGetPairDayDatasHistorical', () async {
      // TODO
    });

    // PairHourDatas (historical) 🔥
    //
    // Gets pairhourdatas.
    //
    //Future<BuiltList<SushiswapPairHourDataDTO>> sushiswapGetPairHourDatasHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pair }) async
    test('test sushiswapGetPairHourDatasHistorical', () async {
      // TODO
    });

    // Pairs (historical) 🔥
    //
    // Gets pairs.
    //
    //Future<BuiltList<SushiswapPairDTO>> sushiswapGetPairsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String name, String token0, String token1 }) async
    test('test sushiswapGetPairsHistorical', () async {
      // TODO
    });

    // Pools (current) 🔥
    //
    // Gets pools.
    //
    //Future<BuiltList<SushiswapPairDTO>> sushiswapGetPoolsCurrent() async
    test('test sushiswapGetPoolsCurrent', () async {
      // TODO
    });

    // Swaps (current) 🔥
    //
    // Gets swaps.
    //
    //Future<BuiltList<SushiswapSwapDTO>> sushiswapGetSwapsCurrent() async
    test('test sushiswapGetSwapsCurrent', () async {
      // TODO
    });

    // Swaps (historical) 🔥
    //
    // Gets swaps.
    //
    //Future<BuiltList<SushiswapSwapDTO>> sushiswapGetSwapsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pair }) async
    test('test sushiswapGetSwapsHistorical', () async {
      // TODO
    });

    // TokenDayDatas (historical) 🔥
    //
    // Gets tokendaydatas.
    //
    //Future<BuiltList<SushiswapTokenDayDataDTO>> sushiswapGetTokenDayDatasHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test sushiswapGetTokenDayDatasHistorical', () async {
      // TODO
    });

    // Tokens (current) 🔥
    //
    // Gets tokens.
    //
    //Future<BuiltList<SushiswapTokenDTO>> sushiswapGetTokensCurrent() async
    test('test sushiswapGetTokensCurrent', () async {
      // TODO
    });

    // Tokens (historical) 🔥
    //
    // Gets tokens.
    //
    //Future<BuiltList<SushiswapTokenDTO>> sushiswapGetTokensHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String symbol, String name }) async
    test('test sushiswapGetTokensHistorical', () async {
      // TODO
    });

    // Transactions (historical) 🔥
    //
    // Gets transactions.
    //
    //Future<BuiltList<SushiswapTransactionDTO>> sushiswapGetTransactionsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test sushiswapGetTransactionsHistorical', () async {
      // TODO
    });

    // Users (historical) 🔥
    //
    // Gets users.
    //
    //Future<BuiltList<SushiswapUserDTO>> sushiswapGetUsersHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test sushiswapGetUsersHistorical', () async {
      // TODO
    });

  });
}
