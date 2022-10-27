import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for CowApi
void main() {
  final instance = Openapi().getCowApi();

  group(CowApi, () {
    //Future dappsCowOrdersHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dappsCowOrdersHistoricalGet', () async {
      // TODO
    });

    //Future dappsCowPoiHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dappsCowPoiHistoricalGet', () async {
      // TODO
    });

    //Future dappsCowSettlementHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dappsCowSettlementHistoricalGet', () async {
      // TODO
    });

    //Future dappsCowTokensHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test dappsCowTokensHistoricalGet', () async {
      // TODO
    });

    //Future dappsCowTradesHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dappsCowTradesHistoricalGet', () async {
      // TODO
    });

    //Future dappsCowUsersHistoricalGet({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test dappsCowUsersHistoricalGet', () async {
      // TODO
    });

  });
}
