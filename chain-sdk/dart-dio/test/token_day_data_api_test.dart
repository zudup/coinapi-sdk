import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for TokenDayDataApi
void main() {
  final instance = Openapi().getTokenDayDataApi();

  group(TokenDayDataApi, () {
    //Future chainsChainIdDappsSushiswapTokenDayDataHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test chainsChainIdDappsSushiswapTokenDayDataHistoricalGet', () async {
      // TODO
    });

    //Future chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet', () async {
      // TODO
    });

    //Future chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet', () async {
      // TODO
    });

  });
}
