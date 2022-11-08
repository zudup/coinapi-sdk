@isTest
private class OASDexApiTest {
    /**
     * GetBatches (historical)
     *
     * Gets batches.
     */
    @isTest
    private static void dexGetBatchesHistoricalTest() {
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
        OASDexApi api;
        List<OASDexBatchDTO> response;
        List<OASDexBatchDTO> expectedResponse;
        String js = '';

        api = new OASDexApi(new OASClient());

        js = JSON.serialize(new List<OASDexBatchDTO>{OASDexBatchDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDexBatchDTO>{OASDexBatchDTO.getExample()};
        response = (List<OASDexBatchDTO>) api.dexGetBatchesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASDexBatchDTO>{OASDexBatchDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASDexBatchDTO>{OASDexBatchDTO.getExample()};
        response = (List<OASDexBatchDTO>) api.dexGetBatchesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASDexBatchDTO>{OASDexBatchDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASDexBatchDTO>{OASDexBatchDTO.getExample()};
        response = (List<OASDexBatchDTO>) api.dexGetBatchesHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetDeposits (historical)
     *
     * Gets deposits.
     */
    @isTest
    private static void dexGetDepositsHistoricalTest() {
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
        OASDexApi api;
        List<OASDexDepositDTO> response;
        List<OASDexDepositDTO> expectedResponse;
        String js = '';

        api = new OASDexApi(new OASClient());

        js = JSON.serialize(new List<OASDexDepositDTO>{OASDexDepositDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDexDepositDTO>{OASDexDepositDTO.getExample()};
        response = (List<OASDexDepositDTO>) api.dexGetDepositsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASDexDepositDTO>{OASDexDepositDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASDexDepositDTO>{OASDexDepositDTO.getExample()};
        response = (List<OASDexDepositDTO>) api.dexGetDepositsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASDexDepositDTO>{OASDexDepositDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASDexDepositDTO>{OASDexDepositDTO.getExample()};
        response = (List<OASDexDepositDTO>) api.dexGetDepositsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetOrders (historical)
     *
     * Gets orders.
     */
    @isTest
    private static void dexGetOrdersHistoricalTest() {
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
        OASDexApi api;
        List<OASDexOrderDTO> response;
        List<OASDexOrderDTO> expectedResponse;
        String js = '';

        api = new OASDexApi(new OASClient());

        js = JSON.serialize(new List<OASDexOrderDTO>{OASDexOrderDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDexOrderDTO>{OASDexOrderDTO.getExample()};
        response = (List<OASDexOrderDTO>) api.dexGetOrdersHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASDexOrderDTO>{OASDexOrderDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASDexOrderDTO>{OASDexOrderDTO.getExample()};
        response = (List<OASDexOrderDTO>) api.dexGetOrdersHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASDexOrderDTO>{OASDexOrderDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASDexOrderDTO>{OASDexOrderDTO.getExample()};
        response = (List<OASDexOrderDTO>) api.dexGetOrdersHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetPrices (historical)
     *
     * Gets prices.
     */
    @isTest
    private static void dexGetPricesHistoricalTest() {
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
        OASDexApi api;
        List<OASDexPriceDTO> response;
        List<OASDexPriceDTO> expectedResponse;
        String js = '';

        api = new OASDexApi(new OASClient());

        js = JSON.serialize(new List<OASDexPriceDTO>{OASDexPriceDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDexPriceDTO>{OASDexPriceDTO.getExample()};
        response = (List<OASDexPriceDTO>) api.dexGetPricesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASDexPriceDTO>{OASDexPriceDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASDexPriceDTO>{OASDexPriceDTO.getExample()};
        response = (List<OASDexPriceDTO>) api.dexGetPricesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASDexPriceDTO>{OASDexPriceDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASDexPriceDTO>{OASDexPriceDTO.getExample()};
        response = (List<OASDexPriceDTO>) api.dexGetPricesHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetSolutions (historical)
     *
     * Gets solutions.
     */
    @isTest
    private static void dexGetSolutionsHistoricalTest() {
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
        OASDexApi api;
        List<OASDexSolutionDTO> response;
        List<OASDexSolutionDTO> expectedResponse;
        String js = '';

        api = new OASDexApi(new OASClient());

        js = JSON.serialize(new List<OASDexSolutionDTO>{OASDexSolutionDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDexSolutionDTO>{OASDexSolutionDTO.getExample()};
        response = (List<OASDexSolutionDTO>) api.dexGetSolutionsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASDexSolutionDTO>{OASDexSolutionDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASDexSolutionDTO>{OASDexSolutionDTO.getExample()};
        response = (List<OASDexSolutionDTO>) api.dexGetSolutionsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASDexSolutionDTO>{OASDexSolutionDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASDexSolutionDTO>{OASDexSolutionDTO.getExample()};
        response = (List<OASDexSolutionDTO>) api.dexGetSolutionsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetStats (historical)
     *
     * Gets stats.
     */
    @isTest
    private static void dexGetStatsHistoricalTest() {
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
        OASDexApi api;
        List<OASDexStatsDTO> response;
        List<OASDexStatsDTO> expectedResponse;
        String js = '';

        api = new OASDexApi(new OASClient());

        js = JSON.serialize(new List<OASDexStatsDTO>{OASDexStatsDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDexStatsDTO>{OASDexStatsDTO.getExample()};
        response = (List<OASDexStatsDTO>) api.dexGetStatsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASDexStatsDTO>{OASDexStatsDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASDexStatsDTO>{OASDexStatsDTO.getExample()};
        response = (List<OASDexStatsDTO>) api.dexGetStatsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASDexStatsDTO>{OASDexStatsDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASDexStatsDTO>{OASDexStatsDTO.getExample()};
        response = (List<OASDexStatsDTO>) api.dexGetStatsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetTokens (historical) 🔥
     *
     * Gets tokens.
     */
    @isTest
    private static void dexGetTokensHistoricalTest() {
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
        OASDexApi api;
        List<OASDexTokenDTO> response;
        List<OASDexTokenDTO> expectedResponse;
        String js = '';

        api = new OASDexApi(new OASClient());

        js = JSON.serialize(new List<OASDexTokenDTO>{OASDexTokenDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDexTokenDTO>{OASDexTokenDTO.getExample()};
        response = (List<OASDexTokenDTO>) api.dexGetTokensHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASDexTokenDTO>{OASDexTokenDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASDexTokenDTO>{OASDexTokenDTO.getExample()};
        response = (List<OASDexTokenDTO>) api.dexGetTokensHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASDexTokenDTO>{OASDexTokenDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASDexTokenDTO>{OASDexTokenDTO.getExample()};
        response = (List<OASDexTokenDTO>) api.dexGetTokensHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetTrades (historical) 🔥
     *
     * Gets trades.
     */
    @isTest
    private static void dexGetTradesHistoricalTest() {
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
        OASDexApi api;
        List<OASDexTradeDTO> response;
        List<OASDexTradeDTO> expectedResponse;
        String js = '';

        api = new OASDexApi(new OASClient());

        js = JSON.serialize(new List<OASDexTradeDTO>{OASDexTradeDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDexTradeDTO>{OASDexTradeDTO.getExample()};
        response = (List<OASDexTradeDTO>) api.dexGetTradesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASDexTradeDTO>{OASDexTradeDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASDexTradeDTO>{OASDexTradeDTO.getExample()};
        response = (List<OASDexTradeDTO>) api.dexGetTradesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASDexTradeDTO>{OASDexTradeDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASDexTradeDTO>{OASDexTradeDTO.getExample()};
        response = (List<OASDexTradeDTO>) api.dexGetTradesHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetUsers (historical)
     *
     * Gets users.
     */
    @isTest
    private static void dexGetUsersHistoricalTest() {
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
        OASDexApi api;
        List<OASDexUserDTO> response;
        List<OASDexUserDTO> expectedResponse;
        String js = '';

        api = new OASDexApi(new OASClient());

        js = JSON.serialize(new List<OASDexUserDTO>{OASDexUserDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDexUserDTO>{OASDexUserDTO.getExample()};
        response = (List<OASDexUserDTO>) api.dexGetUsersHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASDexUserDTO>{OASDexUserDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASDexUserDTO>{OASDexUserDTO.getExample()};
        response = (List<OASDexUserDTO>) api.dexGetUsersHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASDexUserDTO>{OASDexUserDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASDexUserDTO>{OASDexUserDTO.getExample()};
        response = (List<OASDexUserDTO>) api.dexGetUsersHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetWithdraws (historical)
     *
     * Gets withdraws.
     */
    @isTest
    private static void dexGetWithdrawsHistoricalTest() {
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
        OASDexApi api;
        List<OASDexWithdrawDTO> response;
        List<OASDexWithdrawDTO> expectedResponse;
        String js = '';

        api = new OASDexApi(new OASClient());

        js = JSON.serialize(new List<OASDexWithdrawDTO>{OASDexWithdrawDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDexWithdrawDTO>{OASDexWithdrawDTO.getExample()};
        response = (List<OASDexWithdrawDTO>) api.dexGetWithdrawsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASDexWithdrawDTO>{OASDexWithdrawDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASDexWithdrawDTO>{OASDexWithdrawDTO.getExample()};
        response = (List<OASDexWithdrawDTO>) api.dexGetWithdrawsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASDexWithdrawDTO>{OASDexWithdrawDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASDexWithdrawDTO>{OASDexWithdrawDTO.getExample()};
        response = (List<OASDexWithdrawDTO>) api.dexGetWithdrawsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetWithdrawsRequests (historical)
     *
     * Gets withdraws requests.
     */
    @isTest
    private static void dexGetWithdrawsRequestsHistoricalTest() {
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
        OASDexApi api;
        List<OASDexWithdrawRequestDTO> response;
        List<OASDexWithdrawRequestDTO> expectedResponse;
        String js = '';

        api = new OASDexApi(new OASClient());

        js = JSON.serialize(new List<OASDexWithdrawRequestDTO>{OASDexWithdrawRequestDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDexWithdrawRequestDTO>{OASDexWithdrawRequestDTO.getExample()};
        response = (List<OASDexWithdrawRequestDTO>) api.dexGetWithdrawsRequestsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASDexWithdrawRequestDTO>{OASDexWithdrawRequestDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASDexWithdrawRequestDTO>{OASDexWithdrawRequestDTO.getExample()};
        response = (List<OASDexWithdrawRequestDTO>) api.dexGetWithdrawsRequestsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASDexWithdrawRequestDTO>{OASDexWithdrawRequestDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASDexWithdrawRequestDTO>{OASDexWithdrawRequestDTO.getExample()};
        response = (List<OASDexWithdrawRequestDTO>) api.dexGetWithdrawsRequestsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }
}