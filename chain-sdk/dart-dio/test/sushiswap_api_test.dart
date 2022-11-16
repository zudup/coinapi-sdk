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

    // Tokens (current) 🔥
    //
    // Gets tokens.
    //
    //Future<BuiltList<SushiswapTokenDTO>> sushiswapGetTokensCurrent() async
    test('test sushiswapGetTokensCurrent', () async {
      // TODO
    });

  });
}
