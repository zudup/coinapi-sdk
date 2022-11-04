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
     * GetPools
     *
     * Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\&#39;s standard dummy text ever since the 1500s.
     */
    @isTest
    private static void dappsSushiswapPoolsCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASSushiswapApi api;
        List<OASPairDTO> response;
        List<OASPairDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASPairDTO>{OASPairDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPairDTO>{OASPairDTO.getExample()};
        response = (List<OASPairDTO>) api.dappsSushiswapPoolsCurrentGet();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASPairDTO>{OASPairDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASPairDTO>{OASPairDTO.getExample()};
        response = (List<OASPairDTO>) api.dappsSushiswapPoolsCurrentGet();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASPairDTO>{OASPairDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASPairDTO>{OASPairDTO.getExample()};
        response = (List<OASPairDTO>) api.dappsSushiswapPoolsCurrentGet();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetPools
     *
     * 
     */
    @isTest
    private static void dappsSushiswapPoolsHistoricalGetTest() {
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
        List<OASPairDTO> response;
        List<OASPairDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASPairDTO>{OASPairDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPairDTO>{OASPairDTO.getExample()};
        response = (List<OASPairDTO>) api.dappsSushiswapPoolsHistoricalGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASPairDTO>{OASPairDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASPairDTO>{OASPairDTO.getExample()};
        response = (List<OASPairDTO>) api.dappsSushiswapPoolsHistoricalGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASPairDTO>{OASPairDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASPairDTO>{OASPairDTO.getExample()};
        response = (List<OASPairDTO>) api.dappsSushiswapPoolsHistoricalGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetSwaps
     *
     * 
     */
    @isTest
    private static void dappsSushiswapSwapsCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASSushiswapApi api;
        List<OASSwapDTO> response;
        List<OASSwapDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSwapDTO>{OASSwapDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSwapDTO>{OASSwapDTO.getExample()};
        response = (List<OASSwapDTO>) api.dappsSushiswapSwapsCurrentGet();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSwapDTO>{OASSwapDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSwapDTO>{OASSwapDTO.getExample()};
        response = (List<OASSwapDTO>) api.dappsSushiswapSwapsCurrentGet();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSwapDTO>{OASSwapDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSwapDTO>{OASSwapDTO.getExample()};
        response = (List<OASSwapDTO>) api.dappsSushiswapSwapsCurrentGet();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetSwaps
     *
     * 
     */
    @isTest
    private static void dappsSushiswapSwapsHistoricalGetTest() {
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
        List<OASSwapDTO> response;
        List<OASSwapDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSwapDTO>{OASSwapDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSwapDTO>{OASSwapDTO.getExample()};
        response = (List<OASSwapDTO>) api.dappsSushiswapSwapsHistoricalGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSwapDTO>{OASSwapDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSwapDTO>{OASSwapDTO.getExample()};
        response = (List<OASSwapDTO>) api.dappsSushiswapSwapsHistoricalGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSwapDTO>{OASSwapDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSwapDTO>{OASSwapDTO.getExample()};
        response = (List<OASSwapDTO>) api.dappsSushiswapSwapsHistoricalGet(params);
        System.assertEquals(expectedResponse, response);
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
     * GetTokens
     *
     * 
     */
    @isTest
    private static void dappsSushiswapTokensCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASSushiswapApi api;
        List<OASTokenDTO> response;
        List<OASTokenDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASTokenDTO>{OASTokenDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASTokenDTO>{OASTokenDTO.getExample()};
        response = (List<OASTokenDTO>) api.dappsSushiswapTokensCurrentGet();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASTokenDTO>{OASTokenDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASTokenDTO>{OASTokenDTO.getExample()};
        response = (List<OASTokenDTO>) api.dappsSushiswapTokensCurrentGet();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASTokenDTO>{OASTokenDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASTokenDTO>{OASTokenDTO.getExample()};
        response = (List<OASTokenDTO>) api.dappsSushiswapTokensCurrentGet();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetTokens
     *
     * 
     */
    @isTest
    private static void dappsSushiswapTokensHistoricalGetTest() {
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
        List<OASTokenDTO> response;
        List<OASTokenDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASTokenDTO>{OASTokenDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASTokenDTO>{OASTokenDTO.getExample()};
        response = (List<OASTokenDTO>) api.dappsSushiswapTokensHistoricalGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASTokenDTO>{OASTokenDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASTokenDTO>{OASTokenDTO.getExample()};
        response = (List<OASTokenDTO>) api.dappsSushiswapTokensHistoricalGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASTokenDTO>{OASTokenDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASTokenDTO>{OASTokenDTO.getExample()};
        response = (List<OASTokenDTO>) api.dappsSushiswapTokensHistoricalGet(params);
        System.assertEquals(expectedResponse, response);
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
}