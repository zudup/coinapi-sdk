import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for UniswapV2Api
void main() {
  final instance = Openapi().getUniswapV2Api();

  group(UniswapV2Api, () {
    // Pools (current) 🔥
    //
    // Gets pools.
    //
    //Future<BuiltList<UniswapV2PairV2DTO>> uniswapV2GetPoolsCurrent({ String filterPoolId }) async
    test('test uniswapV2GetPoolsCurrent', () async {
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

    // Tokens (current) 🔥
    //
    // Gets tokens.
    //
    //Future<BuiltList<UniswapV2TokenV2DTO>> uniswapV2GetTokensCurrent() async
    test('test uniswapV2GetTokensCurrent', () async {
      // TODO
    });

  });
}
