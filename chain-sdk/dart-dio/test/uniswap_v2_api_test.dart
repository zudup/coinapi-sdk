import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for UniswapV2Api
void main() {
  final instance = Openapi().getUniswapV2Api();

  group(UniswapV2Api, () {
    // GetPools
    //
    //Future<BuiltList<PairV2DTO>> chainsChainIdDappsUniswapv2PoolsCurrentGet(String chainId) async
    test('test chainsChainIdDappsUniswapv2PoolsCurrentGet', () async {
      // TODO
    });

    // GetSwaps
    //
    //Future<BuiltList<SwapV2DTO>> chainsChainIdDappsUniswapv2SwapsCurrentGet(String chainId) async
    test('test chainsChainIdDappsUniswapv2SwapsCurrentGet', () async {
      // TODO
    });

    // GetTokens
    //
    //Future<BuiltList<TokenV2DTO>> chainsChainIdDappsUniswapv2TokensCurrentGet(String chainId) async
    test('test chainsChainIdDappsUniswapv2TokensCurrentGet', () async {
      // TODO
    });

  });
}
