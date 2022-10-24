import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for UsersApi
void main() {
  final instance = Openapi().getUsersApi();

  group(UsersApi, () {
    //Future chainsChainIdDappsCowUsersHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test chainsChainIdDappsCowUsersHistoricalGet', () async {
      // TODO
    });

    //Future chainsChainIdDappsSushiswapUsersHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test chainsChainIdDappsSushiswapUsersHistoricalGet', () async {
      // TODO
    });

    //Future chainsChainIdDappsUniswapv2UsersHistoricalGet(String chainId, { int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test chainsChainIdDappsUniswapv2UsersHistoricalGet', () async {
      // TODO
    });

  });
}
