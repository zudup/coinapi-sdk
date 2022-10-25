import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for TokensApi
void main() {
  final instance = Openapi().getTokensApi();

  group(TokensApi, () {
    //Future chainsChainIdDappsCowTokensHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test chainsChainIdDappsCowTokensHistoricalGet', () async {
      // TODO
    });

    //Future chainsChainIdDappsCurveTokensHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test chainsChainIdDappsCurveTokensHistoricalGet', () async {
      // TODO
    });

    //Future chainsChainIdDappsSushiswapTokensHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test chainsChainIdDappsSushiswapTokensHistoricalGet', () async {
      // TODO
    });

    //Future chainsChainIdDappsUniswapv2TokensHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test chainsChainIdDappsUniswapv2TokensHistoricalGet', () async {
      // TODO
    });

    //Future chainsChainIdDappsUniswapv3TokensHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test chainsChainIdDappsUniswapv3TokensHistoricalGet', () async {
      // TODO
    });

  });
}
