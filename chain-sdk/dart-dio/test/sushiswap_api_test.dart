import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for SushiswapApi
void main() {
  final instance = Openapi().getSushiswapApi();

  group(SushiswapApi, () {
    // GetPools
    //
    // Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
    //
    //Future<BuiltList<PairDTO>> chainsChainIdDappsSushiswapPoolsCurrentGet(String chainId) async
    test('test chainsChainIdDappsSushiswapPoolsCurrentGet', () async {
      // TODO
    });

    // GetSwaps
    //
    //Future<BuiltList<SwapDTO>> chainsChainIdDappsSushiswapSwapsCurrentGet(String chainId) async
    test('test chainsChainIdDappsSushiswapSwapsCurrentGet', () async {
      // TODO
    });

    // GetTokens
    //
    //Future<BuiltList<TokenDTO>> chainsChainIdDappsSushiswapTokensCurrentGet(String chainId) async
    test('test chainsChainIdDappsSushiswapTokensCurrentGet', () async {
      // TODO
    });

  });
}
