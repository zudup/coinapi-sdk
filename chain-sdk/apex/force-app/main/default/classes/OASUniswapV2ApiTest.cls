@isTest
private class OASUniswapV2ApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv2BundlesHistoricalGetTest() {
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
        OASUniswapV2Api api;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        api.dappsUniswapv2BundlesHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv2BurnsHistoricalGetTest() {
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
        OASUniswapV2Api api;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        api.dappsUniswapv2BurnsHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv2DayDataHistoricalGetTest() {
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
        OASUniswapV2Api api;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        api.dappsUniswapv2DayDataHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv2FactoryHistoricalGetTest() {
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
        OASUniswapV2Api api;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        api.dappsUniswapv2FactoryHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv2LiquidityPositionHistoricalGetTest() {
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
        OASUniswapV2Api api;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        api.dappsUniswapv2LiquidityPositionHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv2LiquidityPositionSnapshotsHistoricalGetTest() {
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
        OASUniswapV2Api api;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        api.dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv2MintsHistoricalGetTest() {
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
        OASUniswapV2Api api;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        api.dappsUniswapv2MintsHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv2PoolDayDataHistoricalGetTest() {
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
        OASUniswapV2Api api;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        api.dappsUniswapv2PoolDayDataHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv2PoolHourDataHistoricalGetTest() {
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
        OASUniswapV2Api api;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        api.dappsUniswapv2PoolHourDataHistoricalGet(params);
    }

    /**
     * GetPools
     *
     * 
     */
    @isTest
    private static void dappsUniswapv2PoolsCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'filterPoolId' => 'null'
        };

        OASClient client;
        OASUniswapV2Api api;
        List<OASUniswapV2PairV2DTO> response;
        List<OASUniswapV2PairV2DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2PairV2DTO>{OASUniswapV2PairV2DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairV2DTO>{OASUniswapV2PairV2DTO.getExample()};
        response = (List<OASUniswapV2PairV2DTO>) api.dappsUniswapv2PoolsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairV2DTO>{OASUniswapV2PairV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairV2DTO>{OASUniswapV2PairV2DTO.getExample()};
        response = (List<OASUniswapV2PairV2DTO>) api.dappsUniswapv2PoolsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairV2DTO>{OASUniswapV2PairV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairV2DTO>{OASUniswapV2PairV2DTO.getExample()};
        response = (List<OASUniswapV2PairV2DTO>) api.dappsUniswapv2PoolsCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv2PoolsHistoricalGetTest() {
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
        OASUniswapV2Api api;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        api.dappsUniswapv2PoolsHistoricalGet(params);
    }

    /**
     * GetSwaps
     *
     * 
     */
    @isTest
    private static void dappsUniswapv2SwapsCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV2Api api;
        List<OASUniswapV2SwapV2DTO> response;
        List<OASUniswapV2SwapV2DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2SwapV2DTO>{OASUniswapV2SwapV2DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2SwapV2DTO>{OASUniswapV2SwapV2DTO.getExample()};
        response = (List<OASUniswapV2SwapV2DTO>) api.dappsUniswapv2SwapsCurrentGet();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2SwapV2DTO>{OASUniswapV2SwapV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2SwapV2DTO>{OASUniswapV2SwapV2DTO.getExample()};
        response = (List<OASUniswapV2SwapV2DTO>) api.dappsUniswapv2SwapsCurrentGet();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2SwapV2DTO>{OASUniswapV2SwapV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2SwapV2DTO>{OASUniswapV2SwapV2DTO.getExample()};
        response = (List<OASUniswapV2SwapV2DTO>) api.dappsUniswapv2SwapsCurrentGet();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv2SwapsHistoricalGetTest() {
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
        OASUniswapV2Api api;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        api.dappsUniswapv2SwapsHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv2TokenDayDataHistoricalGetTest() {
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
        OASUniswapV2Api api;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        api.dappsUniswapv2TokenDayDataHistoricalGet(params);
    }

    /**
     * GetTokens
     *
     * 
     */
    @isTest
    private static void dappsUniswapv2TokensCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV2Api api;
        List<OASUniswapV2TokenV2DTO> response;
        List<OASUniswapV2TokenV2DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2TokenV2DTO>{OASUniswapV2TokenV2DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenV2DTO>{OASUniswapV2TokenV2DTO.getExample()};
        response = (List<OASUniswapV2TokenV2DTO>) api.dappsUniswapv2TokensCurrentGet();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TokenV2DTO>{OASUniswapV2TokenV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenV2DTO>{OASUniswapV2TokenV2DTO.getExample()};
        response = (List<OASUniswapV2TokenV2DTO>) api.dappsUniswapv2TokensCurrentGet();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TokenV2DTO>{OASUniswapV2TokenV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenV2DTO>{OASUniswapV2TokenV2DTO.getExample()};
        response = (List<OASUniswapV2TokenV2DTO>) api.dappsUniswapv2TokensCurrentGet();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv2TokensHistoricalGetTest() {
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
        OASUniswapV2Api api;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        api.dappsUniswapv2TokensHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv2TransactionsHistoricalGetTest() {
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
        OASUniswapV2Api api;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        api.dappsUniswapv2TransactionsHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv2UsersHistoricalGetTest() {
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
        OASUniswapV2Api api;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        api.dappsUniswapv2UsersHistoricalGet(params);
    }
}