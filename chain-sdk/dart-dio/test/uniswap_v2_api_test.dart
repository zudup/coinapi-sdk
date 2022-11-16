import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for UniswapV2Api
void main() {
  final instance = Openapi().getUniswapV2Api();

  group(UniswapV2Api, () {
    // BundleV2s (historical) 🔥
    //
    // Gets bundlev2s.
    //
    //Future<BuiltList<UniswapV2BundleV2DTO>> uniswapV2GetBundleV2sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test uniswapV2GetBundleV2sHistorical', () async {
      // TODO
    });

    // BurnV2s (historical) 🔥
    //
    // Gets burnv2s.
    //
    //Future<BuiltList<UniswapV2BurnV2DTO>> uniswapV2GetBurnV2sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pair }) async
    test('test uniswapV2GetBurnV2sHistorical', () async {
      // TODO
    });

    // LiquidityPositionSnapshotV2s (historical) 🔥
    //
    // Gets liquiditypositionsnapshotv2s.
    //
    //Future<BuiltList<UniswapV2LiquidityPositionSnapshotV2DTO>> uniswapV2GetLiquidityPositionSnapshotV2sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String user, String pair }) async
    test('test uniswapV2GetLiquidityPositionSnapshotV2sHistorical', () async {
      // TODO
    });

    // LiquidityPositionV2s (historical) 🔥
    //
    // Gets liquiditypositionv2s.
    //
    //Future<BuiltList<UniswapV2LiquidityPositionV2DTO>> uniswapV2GetLiquidityPositionV2sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String user, String pair }) async
    test('test uniswapV2GetLiquidityPositionV2sHistorical', () async {
      // TODO
    });

    // MintV2s (historical) 🔥
    //
    // Gets mintv2s.
    //
    //Future<BuiltList<UniswapV2MintV2DTO>> uniswapV2GetMintV2sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pair }) async
    test('test uniswapV2GetMintV2sHistorical', () async {
      // TODO
    });

    // PairDayDataV2s (historical) 🔥
    //
    // Gets pairdaydatav2s.
    //
    //Future<BuiltList<UniswapV2PairDayDataV2DTO>> uniswapV2GetPairDayDataV2sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String token0, String token1 }) async
    test('test uniswapV2GetPairDayDataV2sHistorical', () async {
      // TODO
    });

    // PairHourDataV2s (historical) 🔥
    //
    // Gets pairhourdatav2s.
    //
    //Future<BuiltList<UniswapV2PairHourDataV2DTO>> uniswapV2GetPairHourDataV2sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pair }) async
    test('test uniswapV2GetPairHourDataV2sHistorical', () async {
      // TODO
    });

    // PairV2s (historical) 🔥
    //
    // Gets pairv2s.
    //
    //Future<BuiltList<UniswapV2PairV2DTO>> uniswapV2GetPairV2sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String token0, String token1 }) async
    test('test uniswapV2GetPairV2sHistorical', () async {
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

    // SwapV2s (historical) 🔥
    //
    // Gets swapv2s.
    //
    //Future<BuiltList<UniswapV2SwapV2DTO>> uniswapV2GetSwapV2sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pair }) async
    test('test uniswapV2GetSwapV2sHistorical', () async {
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

    // TokenDayDataV2s (historical) 🔥
    //
    // Gets tokendaydatav2s.
    //
    //Future<BuiltList<UniswapV2TokenDayDataV2DTO>> uniswapV2GetTokenDayDataV2sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test uniswapV2GetTokenDayDataV2sHistorical', () async {
      // TODO
    });

    // TokenV2s (historical) 🔥
    //
    // Gets tokenv2s.
    //
    //Future<BuiltList<UniswapV2TokenV2DTO>> uniswapV2GetTokenV2sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String symbol, String name }) async
    test('test uniswapV2GetTokenV2sHistorical', () async {
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

    // TransactionV2s (historical) 🔥
    //
    // Gets transactionv2s.
    //
    //Future<BuiltList<UniswapV2TransactionV2DTO>> uniswapV2GetTransactionV2sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test uniswapV2GetTransactionV2sHistorical', () async {
      // TODO
    });

    // UniswapDayDataV2s (historical) 🔥
    //
    // Gets uniswapdaydatav2s.
    //
    //Future<BuiltList<UniswapV2UniswapDayDataV2DTO>> uniswapV2GetUniswapDayDataV2sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test uniswapV2GetUniswapDayDataV2sHistorical', () async {
      // TODO
    });

    // UniswapFactoryV2s (historical) 🔥
    //
    // Gets uniswapfactoryv2s.
    //
    //Future<BuiltList<UniswapV2UniswapFactoryV2DTO>> uniswapV2GetUniswapFactoryV2sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test uniswapV2GetUniswapFactoryV2sHistorical', () async {
      // TODO
    });

    // UserV2s (historical) 🔥
    //
    // Gets userv2s.
    //
    //Future<BuiltList<UniswapV2UserV2DTO>> uniswapV2GetUserV2sHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test uniswapV2GetUserV2sHistorical', () async {
      // TODO
    });

  });
}
