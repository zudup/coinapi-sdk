@isTest
private class OASSushiswapApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsSushiswapBundlesHistoricalGetTest() {
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
        OASSushiswapApi api;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        api.dappsSushiswapBundlesHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsSushiswapBurnsHistoricalGetTest() {
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
        OASSushiswapApi api;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        api.dappsSushiswapBurnsHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsSushiswapDayDataHistoricalGetTest() {
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
        OASSushiswapApi api;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        api.dappsSushiswapDayDataHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsSushiswapFactoryHistoricalGetTest() {
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
        OASSushiswapApi api;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        api.dappsSushiswapFactoryHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsSushiswapHourDataHistoricalGetTest() {
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
        OASSushiswapApi api;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        api.dappsSushiswapHourDataHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsSushiswapLiquidityPositionHistoricalGetTest() {
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
        OASSushiswapApi api;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        api.dappsSushiswapLiquidityPositionHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsSushiswapLiquidityPositionSnapshotsHistoricalGetTest() {
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
        OASSushiswapApi api;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        api.dappsSushiswapLiquidityPositionSnapshotsHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsSushiswapMintsHistoricalGetTest() {
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
        OASSushiswapApi api;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        api.dappsSushiswapMintsHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsSushiswapPoolDayDataHistoricalGetTest() {
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
        OASSushiswapApi api;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        api.dappsSushiswapPoolDayDataHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsSushiswapPoolHourDataHistoricalGetTest() {
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
        OASSushiswapApi api;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        api.dappsSushiswapPoolHourDataHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsSushiswapTokenDayDataHistoricalGetTest() {
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
        OASSushiswapApi api;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        api.dappsSushiswapTokenDayDataHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsSushiswapTransactionsHistoricalGetTest() {
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
        OASSushiswapApi api;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        api.dappsSushiswapTransactionsHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsSushiswapUsersHistoricalGetTest() {
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
        OASSushiswapApi api;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        api.dappsSushiswapUsersHistoricalGet(params);
    }

    /**
     * 
     *
     * GetPools (current)
     */
    @isTest
    private static void sushiswapGetPoolsCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASSushiswapApi api;
        List<OASSushiswapPairDTO> response;
        List<OASSushiswapPairDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapPairDTO>{OASSushiswapPairDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapPairDTO>{OASSushiswapPairDTO.getExample()};
        response = (List<OASSushiswapPairDTO>) api.sushiswapGetPoolsCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapPairDTO>{OASSushiswapPairDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapPairDTO>{OASSushiswapPairDTO.getExample()};
        response = (List<OASSushiswapPairDTO>) api.sushiswapGetPoolsCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapPairDTO>{OASSushiswapPairDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapPairDTO>{OASSushiswapPairDTO.getExample()};
        response = (List<OASSushiswapPairDTO>) api.sushiswapGetPoolsCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * GetPools (historical)
     */
    @isTest
    private static void sushiswapGetPoolsHistoricalTest() {
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
        OASSushiswapApi api;
        List<OASSushiswapPairDTO> response;
        List<OASSushiswapPairDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapPairDTO>{OASSushiswapPairDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapPairDTO>{OASSushiswapPairDTO.getExample()};
        response = (List<OASSushiswapPairDTO>) api.sushiswapGetPoolsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapPairDTO>{OASSushiswapPairDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapPairDTO>{OASSushiswapPairDTO.getExample()};
        response = (List<OASSushiswapPairDTO>) api.sushiswapGetPoolsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapPairDTO>{OASSushiswapPairDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapPairDTO>{OASSushiswapPairDTO.getExample()};
        response = (List<OASSushiswapPairDTO>) api.sushiswapGetPoolsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * GetSwaps (current)
     */
    @isTest
    private static void sushiswapGetSwapsCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASSushiswapApi api;
        List<OASSushiswapSwapDTO> response;
        List<OASSushiswapSwapDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapSwapDTO>{OASSushiswapSwapDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapSwapDTO>{OASSushiswapSwapDTO.getExample()};
        response = (List<OASSushiswapSwapDTO>) api.sushiswapGetSwapsCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapSwapDTO>{OASSushiswapSwapDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapSwapDTO>{OASSushiswapSwapDTO.getExample()};
        response = (List<OASSushiswapSwapDTO>) api.sushiswapGetSwapsCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapSwapDTO>{OASSushiswapSwapDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapSwapDTO>{OASSushiswapSwapDTO.getExample()};
        response = (List<OASSushiswapSwapDTO>) api.sushiswapGetSwapsCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * GetSwaps (historical)
     */
    @isTest
    private static void sushiswapGetSwapsHistoricalTest() {
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
        OASSushiswapApi api;
        List<OASSushiswapSwapDTO> response;
        List<OASSushiswapSwapDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapSwapDTO>{OASSushiswapSwapDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapSwapDTO>{OASSushiswapSwapDTO.getExample()};
        response = (List<OASSushiswapSwapDTO>) api.sushiswapGetSwapsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapSwapDTO>{OASSushiswapSwapDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapSwapDTO>{OASSushiswapSwapDTO.getExample()};
        response = (List<OASSushiswapSwapDTO>) api.sushiswapGetSwapsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapSwapDTO>{OASSushiswapSwapDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapSwapDTO>{OASSushiswapSwapDTO.getExample()};
        response = (List<OASSushiswapSwapDTO>) api.sushiswapGetSwapsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * GetTokens (current)
     */
    @isTest
    private static void sushiswapGetTokensCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASSushiswapApi api;
        List<OASSushiswapTokenDTO> response;
        List<OASSushiswapTokenDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapTokenDTO>{OASSushiswapTokenDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapTokenDTO>{OASSushiswapTokenDTO.getExample()};
        response = (List<OASSushiswapTokenDTO>) api.sushiswapGetTokensCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapTokenDTO>{OASSushiswapTokenDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapTokenDTO>{OASSushiswapTokenDTO.getExample()};
        response = (List<OASSushiswapTokenDTO>) api.sushiswapGetTokensCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapTokenDTO>{OASSushiswapTokenDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapTokenDTO>{OASSushiswapTokenDTO.getExample()};
        response = (List<OASSushiswapTokenDTO>) api.sushiswapGetTokensCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * GetTokens (historical)
     */
    @isTest
    private static void sushiswapGetTokensHistoricalTest() {
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
        OASSushiswapApi api;
        List<OASSushiswapTokenDTO> response;
        List<OASSushiswapTokenDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapTokenDTO>{OASSushiswapTokenDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapTokenDTO>{OASSushiswapTokenDTO.getExample()};
        response = (List<OASSushiswapTokenDTO>) api.sushiswapGetTokensHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapTokenDTO>{OASSushiswapTokenDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapTokenDTO>{OASSushiswapTokenDTO.getExample()};
        response = (List<OASSushiswapTokenDTO>) api.sushiswapGetTokensHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapTokenDTO>{OASSushiswapTokenDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapTokenDTO>{OASSushiswapTokenDTO.getExample()};
        response = (List<OASSushiswapTokenDTO>) api.sushiswapGetTokensHistorical(params);
        System.assertEquals(expectedResponse, response);
    }
}