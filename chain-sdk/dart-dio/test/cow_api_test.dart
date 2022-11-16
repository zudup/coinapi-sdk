import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for CowApi
void main() {
  final instance = Openapi().getCowApi();

  group(CowApi, () {
    // Orders (historical) 🔥
    //
    // Gets orders.
    //
    //Future<BuiltList<CowOrderDTO>> cowGetOrdersHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test cowGetOrdersHistorical', () async {
      // TODO
    });

    // Settlements (historical) 🔥
    //
    // Gets settlements.
    //
    //Future<BuiltList<CowSettlementDTO>> cowGetSettlementsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test cowGetSettlementsHistorical', () async {
      // TODO
    });

    // Tokens (historical) 🔥
    //
    // Gets tokens.
    //
    //Future<BuiltList<CowTokenDTO>> cowGetTokensHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String address, String name, String symbol }) async
    test('test cowGetTokensHistorical', () async {
      // TODO
    });

    // Trades (historical) 🔥
    //
    // Gets trades.
    //
    //Future<BuiltList<CowTradeDTO>> cowGetTradesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String sellToken, String buyToken }) async
    test('test cowGetTradesHistorical', () async {
      // TODO
    });

    // Users (historical) 🔥
    //
    // Gets users.
    //
    //Future<BuiltList<CowUserDTO>> cowGetUsersHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String address }) async
    test('test cowGetUsersHistorical', () async {
      // TODO
    });

  });
}
