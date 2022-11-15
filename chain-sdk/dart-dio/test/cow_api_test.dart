import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for CowApi
void main() {
  final instance = Openapi().getCowApi();

  group(CowApi, () {
    // OrderDTOs (historical) 🔥
    //
    // Gets OrderDTOs.
    //
    //Future<BuiltList<CowOrderDTO>> cowGetOrderDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test cowGetOrderDTOsHistorical', () async {
      // TODO
    });

    // Orders (historical)
    //
    // Gets orders.
    //
    //Future<BuiltList<CowOrderDTO>> cowGetOrdersHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test cowGetOrdersHistorical', () async {
      // TODO
    });

    // SettlementDTOs (historical) 🔥
    //
    // Gets SettlementDTOs.
    //
    //Future<BuiltList<CowSettlementDTO>> cowGetSettlementDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test cowGetSettlementDTOsHistorical', () async {
      // TODO
    });

    // Settlements (historical)
    //
    // Gets settlements.
    //
    //Future<BuiltList<CowSettlementDTO>> cowGetSettlementsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test cowGetSettlementsHistorical', () async {
      // TODO
    });

    // TokenDTOs (historical) 🔥
    //
    // Gets TokenDTOs.
    //
    //Future<BuiltList<CowTokenDTO>> cowGetTokenDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test cowGetTokenDTOsHistorical', () async {
      // TODO
    });

    // Tokens (historical) 🔥
    //
    // Gets tokens.
    //
    //Future<BuiltList<CowTokenDTO>> cowGetTokensHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test cowGetTokensHistorical', () async {
      // TODO
    });

    // TradeDTOs (historical) 🔥
    //
    // Gets TradeDTOs.
    //
    //Future<BuiltList<CowTradeDTO>> cowGetTradeDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test cowGetTradeDTOsHistorical', () async {
      // TODO
    });

    // Trades (historical) 🔥
    //
    // Gets trades.
    //
    //Future<BuiltList<CowTradeDTO>> cowGetTradesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test cowGetTradesHistorical', () async {
      // TODO
    });

    // UserDTOs (historical) 🔥
    //
    // Gets UserDTOs.
    //
    //Future<BuiltList<CowUserDTO>> cowGetUserDTOsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test cowGetUserDTOsHistorical', () async {
      // TODO
    });

    // Users (historical)
    //
    // Gets users.
    //
    //Future<BuiltList<CowUserDTO>> cowGetUsersHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test cowGetUsersHistorical', () async {
      // TODO
    });

  });
}
