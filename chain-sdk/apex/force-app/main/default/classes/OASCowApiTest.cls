@isTest
private class OASCowApiTest {
    /**
     * OrderDTOs (historical) 🔥
     *
     * Gets OrderDTOs.
     */
    @isTest
    private static void cowGetOrderDTOsHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'poolId' => 'null'
        };

        OASClient client;
        OASCowApi api;
        List<OASCowOrderDTO> response;
        List<OASCowOrderDTO> expectedResponse;
        String js = '';

        api = new OASCowApi(new OASClient());

        js = JSON.serialize(new List<OASCowOrderDTO>{OASCowOrderDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCowOrderDTO>{OASCowOrderDTO.getExample()};
        response = (List<OASCowOrderDTO>) api.cowGetOrderDTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCowOrderDTO>{OASCowOrderDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCowOrderDTO>{OASCowOrderDTO.getExample()};
        response = (List<OASCowOrderDTO>) api.cowGetOrderDTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCowOrderDTO>{OASCowOrderDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCowOrderDTO>{OASCowOrderDTO.getExample()};
        response = (List<OASCowOrderDTO>) api.cowGetOrderDTOsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Orders (historical)
     *
     * Gets orders.
     */
    @isTest
    private static void cowGetOrdersHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3)
        };

        OASClient client;
        OASCowApi api;
        List<OASCowOrderDTO> response;
        List<OASCowOrderDTO> expectedResponse;
        String js = '';

        api = new OASCowApi(new OASClient());

        js = JSON.serialize(new List<OASCowOrderDTO>{OASCowOrderDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCowOrderDTO>{OASCowOrderDTO.getExample()};
        response = (List<OASCowOrderDTO>) api.cowGetOrdersHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCowOrderDTO>{OASCowOrderDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCowOrderDTO>{OASCowOrderDTO.getExample()};
        response = (List<OASCowOrderDTO>) api.cowGetOrdersHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCowOrderDTO>{OASCowOrderDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCowOrderDTO>{OASCowOrderDTO.getExample()};
        response = (List<OASCowOrderDTO>) api.cowGetOrdersHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * SettlementDTOs (historical) 🔥
     *
     * Gets SettlementDTOs.
     */
    @isTest
    private static void cowGetSettlementDTOsHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'poolId' => 'null'
        };

        OASClient client;
        OASCowApi api;
        List<OASCowSettlementDTO> response;
        List<OASCowSettlementDTO> expectedResponse;
        String js = '';

        api = new OASCowApi(new OASClient());

        js = JSON.serialize(new List<OASCowSettlementDTO>{OASCowSettlementDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCowSettlementDTO>{OASCowSettlementDTO.getExample()};
        response = (List<OASCowSettlementDTO>) api.cowGetSettlementDTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCowSettlementDTO>{OASCowSettlementDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCowSettlementDTO>{OASCowSettlementDTO.getExample()};
        response = (List<OASCowSettlementDTO>) api.cowGetSettlementDTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCowSettlementDTO>{OASCowSettlementDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCowSettlementDTO>{OASCowSettlementDTO.getExample()};
        response = (List<OASCowSettlementDTO>) api.cowGetSettlementDTOsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Settlements (historical)
     *
     * Gets settlements.
     */
    @isTest
    private static void cowGetSettlementsHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3)
        };

        OASClient client;
        OASCowApi api;
        List<OASCowSettlementDTO> response;
        List<OASCowSettlementDTO> expectedResponse;
        String js = '';

        api = new OASCowApi(new OASClient());

        js = JSON.serialize(new List<OASCowSettlementDTO>{OASCowSettlementDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCowSettlementDTO>{OASCowSettlementDTO.getExample()};
        response = (List<OASCowSettlementDTO>) api.cowGetSettlementsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCowSettlementDTO>{OASCowSettlementDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCowSettlementDTO>{OASCowSettlementDTO.getExample()};
        response = (List<OASCowSettlementDTO>) api.cowGetSettlementsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCowSettlementDTO>{OASCowSettlementDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCowSettlementDTO>{OASCowSettlementDTO.getExample()};
        response = (List<OASCowSettlementDTO>) api.cowGetSettlementsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * TokenDTOs (historical) 🔥
     *
     * Gets TokenDTOs.
     */
    @isTest
    private static void cowGetTokenDTOsHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'poolId' => 'null'
        };

        OASClient client;
        OASCowApi api;
        List<OASCowTokenDTO> response;
        List<OASCowTokenDTO> expectedResponse;
        String js = '';

        api = new OASCowApi(new OASClient());

        js = JSON.serialize(new List<OASCowTokenDTO>{OASCowTokenDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCowTokenDTO>{OASCowTokenDTO.getExample()};
        response = (List<OASCowTokenDTO>) api.cowGetTokenDTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCowTokenDTO>{OASCowTokenDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCowTokenDTO>{OASCowTokenDTO.getExample()};
        response = (List<OASCowTokenDTO>) api.cowGetTokenDTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCowTokenDTO>{OASCowTokenDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCowTokenDTO>{OASCowTokenDTO.getExample()};
        response = (List<OASCowTokenDTO>) api.cowGetTokenDTOsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Tokens (historical) 🔥
     *
     * Gets tokens.
     */
    @isTest
    private static void cowGetTokensHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'tokenId' => 'null'
        };

        OASClient client;
        OASCowApi api;
        List<OASCowTokenDTO> response;
        List<OASCowTokenDTO> expectedResponse;
        String js = '';

        api = new OASCowApi(new OASClient());

        js = JSON.serialize(new List<OASCowTokenDTO>{OASCowTokenDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCowTokenDTO>{OASCowTokenDTO.getExample()};
        response = (List<OASCowTokenDTO>) api.cowGetTokensHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCowTokenDTO>{OASCowTokenDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCowTokenDTO>{OASCowTokenDTO.getExample()};
        response = (List<OASCowTokenDTO>) api.cowGetTokensHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCowTokenDTO>{OASCowTokenDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCowTokenDTO>{OASCowTokenDTO.getExample()};
        response = (List<OASCowTokenDTO>) api.cowGetTokensHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * TradeDTOs (historical) 🔥
     *
     * Gets TradeDTOs.
     */
    @isTest
    private static void cowGetTradeDTOsHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'poolId' => 'null'
        };

        OASClient client;
        OASCowApi api;
        List<OASCowTradeDTO> response;
        List<OASCowTradeDTO> expectedResponse;
        String js = '';

        api = new OASCowApi(new OASClient());

        js = JSON.serialize(new List<OASCowTradeDTO>{OASCowTradeDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCowTradeDTO>{OASCowTradeDTO.getExample()};
        response = (List<OASCowTradeDTO>) api.cowGetTradeDTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCowTradeDTO>{OASCowTradeDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCowTradeDTO>{OASCowTradeDTO.getExample()};
        response = (List<OASCowTradeDTO>) api.cowGetTradeDTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCowTradeDTO>{OASCowTradeDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCowTradeDTO>{OASCowTradeDTO.getExample()};
        response = (List<OASCowTradeDTO>) api.cowGetTradeDTOsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Trades (historical) 🔥
     *
     * Gets trades.
     */
    @isTest
    private static void cowGetTradesHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3)
        };

        OASClient client;
        OASCowApi api;
        List<OASCowTradeDTO> response;
        List<OASCowTradeDTO> expectedResponse;
        String js = '';

        api = new OASCowApi(new OASClient());

        js = JSON.serialize(new List<OASCowTradeDTO>{OASCowTradeDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCowTradeDTO>{OASCowTradeDTO.getExample()};
        response = (List<OASCowTradeDTO>) api.cowGetTradesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCowTradeDTO>{OASCowTradeDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCowTradeDTO>{OASCowTradeDTO.getExample()};
        response = (List<OASCowTradeDTO>) api.cowGetTradesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCowTradeDTO>{OASCowTradeDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCowTradeDTO>{OASCowTradeDTO.getExample()};
        response = (List<OASCowTradeDTO>) api.cowGetTradesHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * UserDTOs (historical) 🔥
     *
     * Gets UserDTOs.
     */
    @isTest
    private static void cowGetUserDTOsHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'poolId' => 'null'
        };

        OASClient client;
        OASCowApi api;
        List<OASCowUserDTO> response;
        List<OASCowUserDTO> expectedResponse;
        String js = '';

        api = new OASCowApi(new OASClient());

        js = JSON.serialize(new List<OASCowUserDTO>{OASCowUserDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCowUserDTO>{OASCowUserDTO.getExample()};
        response = (List<OASCowUserDTO>) api.cowGetUserDTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCowUserDTO>{OASCowUserDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCowUserDTO>{OASCowUserDTO.getExample()};
        response = (List<OASCowUserDTO>) api.cowGetUserDTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCowUserDTO>{OASCowUserDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCowUserDTO>{OASCowUserDTO.getExample()};
        response = (List<OASCowUserDTO>) api.cowGetUserDTOsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Users (historical)
     *
     * Gets users.
     */
    @isTest
    private static void cowGetUsersHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3)
        };

        OASClient client;
        OASCowApi api;
        List<OASCowUserDTO> response;
        List<OASCowUserDTO> expectedResponse;
        String js = '';

        api = new OASCowApi(new OASClient());

        js = JSON.serialize(new List<OASCowUserDTO>{OASCowUserDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCowUserDTO>{OASCowUserDTO.getExample()};
        response = (List<OASCowUserDTO>) api.cowGetUsersHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCowUserDTO>{OASCowUserDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCowUserDTO>{OASCowUserDTO.getExample()};
        response = (List<OASCowUserDTO>) api.cowGetUsersHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCowUserDTO>{OASCowUserDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCowUserDTO>{OASCowUserDTO.getExample()};
        response = (List<OASCowUserDTO>) api.cowGetUsersHistorical(params);
        System.assertEquals(expectedResponse, response);
    }
}