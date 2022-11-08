import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for CowApi
void main() {
  final instance = Openapi().getCowApi();

  group(CowApi, () {
    // GetOrders (historical)
    //
    // Gets orders.
    //
    //Future<BuiltList<CowOrderDTO>> cowGetOrdersHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test cowGetOrdersHistorical', () async {
      // TODO
    });

    // GetSettlements (historical)
    //
    // Gets settlements.
    //
    //Future<BuiltList<CowSettlementDTO>> cowGetSettlementsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test cowGetSettlementsHistorical', () async {
      // TODO
    });

    // GetTokens (historical) 🔥
    //
    // Gets tokens.
    //
    //Future<BuiltList<CowTokenDTO>> cowGetTokensHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test cowGetTokensHistorical', () async {
      // TODO
    });

    // GetTrades (historical) 🔥
    //
    // Gets trades.
    //
    //Future<BuiltList<CowTradeDTO>> cowGetTradesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test cowGetTradesHistorical', () async {
      // TODO
    });

    // GetUsers (historical)
    //
    // Gets users.
    //
    //Future<BuiltList<CowUserDTO>> cowGetUsersHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test cowGetUsersHistorical', () async {
      // TODO
    });

  });
}
