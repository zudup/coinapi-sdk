@isTest
private class OASUniswapV3ApiTest {
    /**
     * GetBundles
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3BundleCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3BundleV3DTO> response;
        List<OASUniswapV3BundleV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3BundleV3DTO>{OASUniswapV3BundleV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BundleV3DTO>{OASUniswapV3BundleV3DTO.getExample()};
        response = (List<OASUniswapV3BundleV3DTO>) api.dappsUniswapv3BundleCurrentGet();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3BundleV3DTO>{OASUniswapV3BundleV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BundleV3DTO>{OASUniswapV3BundleV3DTO.getExample()};
        response = (List<OASUniswapV3BundleV3DTO>) api.dappsUniswapv3BundleCurrentGet();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3BundleV3DTO>{OASUniswapV3BundleV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BundleV3DTO>{OASUniswapV3BundleV3DTO.getExample()};
        response = (List<OASUniswapV3BundleV3DTO>) api.dappsUniswapv3BundleCurrentGet();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3BundlesHistoricalGetTest() {
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
        OASUniswapV3Api api;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        api.dappsUniswapv3BundlesHistoricalGet(params);
    }

    /**
     * GetBurns
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3BurnsCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'filterPoolId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3BurnV3DTO> response;
        List<OASUniswapV3BurnV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3BurnV3DTO>{OASUniswapV3BurnV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BurnV3DTO>{OASUniswapV3BurnV3DTO.getExample()};
        response = (List<OASUniswapV3BurnV3DTO>) api.dappsUniswapv3BurnsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3BurnV3DTO>{OASUniswapV3BurnV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BurnV3DTO>{OASUniswapV3BurnV3DTO.getExample()};
        response = (List<OASUniswapV3BurnV3DTO>) api.dappsUniswapv3BurnsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3BurnV3DTO>{OASUniswapV3BurnV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BurnV3DTO>{OASUniswapV3BurnV3DTO.getExample()};
        response = (List<OASUniswapV3BurnV3DTO>) api.dappsUniswapv3BurnsCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3BurnsHistoricalGetTest() {
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
        OASUniswapV3Api api;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        api.dappsUniswapv3BurnsHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3DayDataHistoricalGetTest() {
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
        OASUniswapV3Api api;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        api.dappsUniswapv3DayDataHistoricalGet(params);
    }

    /**
     * GetFactory
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3FactoryCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3FactoryV3DTO> response;
        List<OASUniswapV3FactoryV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3FactoryV3DTO>{OASUniswapV3FactoryV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3FactoryV3DTO>{OASUniswapV3FactoryV3DTO.getExample()};
        response = (List<OASUniswapV3FactoryV3DTO>) api.dappsUniswapv3FactoryCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3FactoryV3DTO>{OASUniswapV3FactoryV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3FactoryV3DTO>{OASUniswapV3FactoryV3DTO.getExample()};
        response = (List<OASUniswapV3FactoryV3DTO>) api.dappsUniswapv3FactoryCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3FactoryV3DTO>{OASUniswapV3FactoryV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3FactoryV3DTO>{OASUniswapV3FactoryV3DTO.getExample()};
        response = (List<OASUniswapV3FactoryV3DTO>) api.dappsUniswapv3FactoryCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3FactoryHistoricalGetTest() {
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
        OASUniswapV3Api api;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        api.dappsUniswapv3FactoryHistoricalGet(params);
    }

    /**
     * GetMints
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3MintsCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'filterPoolId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3MintV3DTO> response;
        List<OASUniswapV3MintV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3MintV3DTO>{OASUniswapV3MintV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3MintV3DTO>{OASUniswapV3MintV3DTO.getExample()};
        response = (List<OASUniswapV3MintV3DTO>) api.dappsUniswapv3MintsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3MintV3DTO>{OASUniswapV3MintV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3MintV3DTO>{OASUniswapV3MintV3DTO.getExample()};
        response = (List<OASUniswapV3MintV3DTO>) api.dappsUniswapv3MintsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3MintV3DTO>{OASUniswapV3MintV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3MintV3DTO>{OASUniswapV3MintV3DTO.getExample()};
        response = (List<OASUniswapV3MintV3DTO>) api.dappsUniswapv3MintsCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3MintsHistoricalGetTest() {
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
        OASUniswapV3Api api;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        api.dappsUniswapv3MintsHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3PoolDayDataHistoricalGetTest() {
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
        OASUniswapV3Api api;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        api.dappsUniswapv3PoolDayDataHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3PoolHourDataHistoricalGetTest() {
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
        OASUniswapV3Api api;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        api.dappsUniswapv3PoolHourDataHistoricalGet(params);
    }

    /**
     * GetPools
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3PoolsCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'filterPoolId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3PoolV3DTO> response;
        List<OASUniswapV3PoolV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3PoolV3DTO>{OASUniswapV3PoolV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolV3DTO>{OASUniswapV3PoolV3DTO.getExample()};
        response = (List<OASUniswapV3PoolV3DTO>) api.dappsUniswapv3PoolsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolV3DTO>{OASUniswapV3PoolV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolV3DTO>{OASUniswapV3PoolV3DTO.getExample()};
        response = (List<OASUniswapV3PoolV3DTO>) api.dappsUniswapv3PoolsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolV3DTO>{OASUniswapV3PoolV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolV3DTO>{OASUniswapV3PoolV3DTO.getExample()};
        response = (List<OASUniswapV3PoolV3DTO>) api.dappsUniswapv3PoolsCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetPoolsDayData
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3PoolsDayDataCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'filterPoolId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3PoolDayDataV3DTO> response;
        List<OASUniswapV3PoolDayDataV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3PoolDayDataV3DTO>{OASUniswapV3PoolDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolDayDataV3DTO>{OASUniswapV3PoolDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3PoolDayDataV3DTO>) api.dappsUniswapv3PoolsDayDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolDayDataV3DTO>{OASUniswapV3PoolDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolDayDataV3DTO>{OASUniswapV3PoolDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3PoolDayDataV3DTO>) api.dappsUniswapv3PoolsDayDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolDayDataV3DTO>{OASUniswapV3PoolDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolDayDataV3DTO>{OASUniswapV3PoolDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3PoolDayDataV3DTO>) api.dappsUniswapv3PoolsDayDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3PoolsHistoricalGetTest() {
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
        OASUniswapV3Api api;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        api.dappsUniswapv3PoolsHistoricalGet(params);
    }

    /**
     * GetPoolsHourData
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3PoolsHourDataCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'filterPoolId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3PoolHourDataV3DTO> response;
        List<OASUniswapV3PoolHourDataV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3PoolHourDataV3DTO>{OASUniswapV3PoolHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolHourDataV3DTO>{OASUniswapV3PoolHourDataV3DTO.getExample()};
        response = (List<OASUniswapV3PoolHourDataV3DTO>) api.dappsUniswapv3PoolsHourDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolHourDataV3DTO>{OASUniswapV3PoolHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolHourDataV3DTO>{OASUniswapV3PoolHourDataV3DTO.getExample()};
        response = (List<OASUniswapV3PoolHourDataV3DTO>) api.dappsUniswapv3PoolsHourDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolHourDataV3DTO>{OASUniswapV3PoolHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolHourDataV3DTO>{OASUniswapV3PoolHourDataV3DTO.getExample()};
        response = (List<OASUniswapV3PoolHourDataV3DTO>) api.dappsUniswapv3PoolsHourDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3PositionSnapshotHistoricalGetTest() {
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
        OASUniswapV3Api api;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        api.dappsUniswapv3PositionSnapshotHistoricalGet(params);
    }

    /**
     * GetPositionSnapshot
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3PositionSnapshotsCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'filterPoolId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3PositionSnapshotV3DTO> response;
        List<OASUniswapV3PositionSnapshotV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3PositionSnapshotV3DTO>{OASUniswapV3PositionSnapshotV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionSnapshotV3DTO>{OASUniswapV3PositionSnapshotV3DTO.getExample()};
        response = (List<OASUniswapV3PositionSnapshotV3DTO>) api.dappsUniswapv3PositionSnapshotsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PositionSnapshotV3DTO>{OASUniswapV3PositionSnapshotV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionSnapshotV3DTO>{OASUniswapV3PositionSnapshotV3DTO.getExample()};
        response = (List<OASUniswapV3PositionSnapshotV3DTO>) api.dappsUniswapv3PositionSnapshotsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PositionSnapshotV3DTO>{OASUniswapV3PositionSnapshotV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionSnapshotV3DTO>{OASUniswapV3PositionSnapshotV3DTO.getExample()};
        response = (List<OASUniswapV3PositionSnapshotV3DTO>) api.dappsUniswapv3PositionSnapshotsCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetPositions
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3PositionsCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'filterPoolId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3PositionV3DTO> response;
        List<OASUniswapV3PositionV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3PositionV3DTO>{OASUniswapV3PositionV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionV3DTO>{OASUniswapV3PositionV3DTO.getExample()};
        response = (List<OASUniswapV3PositionV3DTO>) api.dappsUniswapv3PositionsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PositionV3DTO>{OASUniswapV3PositionV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionV3DTO>{OASUniswapV3PositionV3DTO.getExample()};
        response = (List<OASUniswapV3PositionV3DTO>) api.dappsUniswapv3PositionsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PositionV3DTO>{OASUniswapV3PositionV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionV3DTO>{OASUniswapV3PositionV3DTO.getExample()};
        response = (List<OASUniswapV3PositionV3DTO>) api.dappsUniswapv3PositionsCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3PositionsHistoricalGetTest() {
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
        OASUniswapV3Api api;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        api.dappsUniswapv3PositionsHistoricalGet(params);
    }

    /**
     * GetSwaps
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3SwapsCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'filterPoolId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3SwapV3DTO> response;
        List<OASUniswapV3SwapV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3SwapV3DTO>{OASUniswapV3SwapV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3SwapV3DTO>{OASUniswapV3SwapV3DTO.getExample()};
        response = (List<OASUniswapV3SwapV3DTO>) api.dappsUniswapv3SwapsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3SwapV3DTO>{OASUniswapV3SwapV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3SwapV3DTO>{OASUniswapV3SwapV3DTO.getExample()};
        response = (List<OASUniswapV3SwapV3DTO>) api.dappsUniswapv3SwapsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3SwapV3DTO>{OASUniswapV3SwapV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3SwapV3DTO>{OASUniswapV3SwapV3DTO.getExample()};
        response = (List<OASUniswapV3SwapV3DTO>) api.dappsUniswapv3SwapsCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3SwapsHistoricalGetTest() {
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
        OASUniswapV3Api api;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        api.dappsUniswapv3SwapsHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3TickDayDataHistoricalGetTest() {
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
        OASUniswapV3Api api;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        api.dappsUniswapv3TickDayDataHistoricalGet(params);
    }

    /**
     * GetTicks
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3TicksCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'filterPoolId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3TickV3DTO> response;
        List<OASUniswapV3TickV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TickV3DTO>{OASUniswapV3TickV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickV3DTO>{OASUniswapV3TickV3DTO.getExample()};
        response = (List<OASUniswapV3TickV3DTO>) api.dappsUniswapv3TicksCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TickV3DTO>{OASUniswapV3TickV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickV3DTO>{OASUniswapV3TickV3DTO.getExample()};
        response = (List<OASUniswapV3TickV3DTO>) api.dappsUniswapv3TicksCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TickV3DTO>{OASUniswapV3TickV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickV3DTO>{OASUniswapV3TickV3DTO.getExample()};
        response = (List<OASUniswapV3TickV3DTO>) api.dappsUniswapv3TicksCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetTicksDayData
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3TicksDayDataCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'filterPoolId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3TickDayDataV3DTO> response;
        List<OASUniswapV3TickDayDataV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TickDayDataV3DTO>{OASUniswapV3TickDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickDayDataV3DTO>{OASUniswapV3TickDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3TickDayDataV3DTO>) api.dappsUniswapv3TicksDayDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TickDayDataV3DTO>{OASUniswapV3TickDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickDayDataV3DTO>{OASUniswapV3TickDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3TickDayDataV3DTO>) api.dappsUniswapv3TicksDayDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TickDayDataV3DTO>{OASUniswapV3TickDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickDayDataV3DTO>{OASUniswapV3TickDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3TickDayDataV3DTO>) api.dappsUniswapv3TicksDayDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3TicksHistoricalGetTest() {
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
        OASUniswapV3Api api;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        api.dappsUniswapv3TicksHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3TokenDayDataHistoricalGetTest() {
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
        OASUniswapV3Api api;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        api.dappsUniswapv3TokenDayDataHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3TokenHourDataHistoricalGetTest() {
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
        OASUniswapV3Api api;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        api.dappsUniswapv3TokenHourDataHistoricalGet(params);
    }

    /**
     * GetTokens
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3TokensCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'filterTokenId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3TokenV3DTO> response;
        List<OASUniswapV3TokenV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TokenV3DTO>{OASUniswapV3TokenV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DTO>{OASUniswapV3TokenV3DTO.getExample()};
        response = (List<OASUniswapV3TokenV3DTO>) api.dappsUniswapv3TokensCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenV3DTO>{OASUniswapV3TokenV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DTO>{OASUniswapV3TokenV3DTO.getExample()};
        response = (List<OASUniswapV3TokenV3DTO>) api.dappsUniswapv3TokensCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenV3DTO>{OASUniswapV3TokenV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DTO>{OASUniswapV3TokenV3DTO.getExample()};
        response = (List<OASUniswapV3TokenV3DTO>) api.dappsUniswapv3TokensCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetTokensDayData
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3TokensDayDataCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'filterTokenId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3TokenV3DayDataDTO> response;
        List<OASUniswapV3TokenV3DayDataDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()};
        response = (List<OASUniswapV3TokenV3DayDataDTO>) api.dappsUniswapv3TokensDayDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()};
        response = (List<OASUniswapV3TokenV3DayDataDTO>) api.dappsUniswapv3TokensDayDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()};
        response = (List<OASUniswapV3TokenV3DayDataDTO>) api.dappsUniswapv3TokensDayDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3TokensHistoricalGetTest() {
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
        OASUniswapV3Api api;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        api.dappsUniswapv3TokensHistoricalGet(params);
    }

    /**
     * GetTokensHourData
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3TokensHourDataCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'filterTokenId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3TokenHourDataV3DTO> response;
        List<OASUniswapV3TokenHourDataV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TokenHourDataV3DTO>{OASUniswapV3TokenHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenHourDataV3DTO>{OASUniswapV3TokenHourDataV3DTO.getExample()};
        response = (List<OASUniswapV3TokenHourDataV3DTO>) api.dappsUniswapv3TokensHourDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenHourDataV3DTO>{OASUniswapV3TokenHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenHourDataV3DTO>{OASUniswapV3TokenHourDataV3DTO.getExample()};
        response = (List<OASUniswapV3TokenHourDataV3DTO>) api.dappsUniswapv3TokensHourDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenHourDataV3DTO>{OASUniswapV3TokenHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenHourDataV3DTO>{OASUniswapV3TokenHourDataV3DTO.getExample()};
        response = (List<OASUniswapV3TokenHourDataV3DTO>) api.dappsUniswapv3TokensHourDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3TransactionsHistoricalGetTest() {
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
        OASUniswapV3Api api;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        api.dappsUniswapv3TransactionsHistoricalGet(params);
    }

    /**
     * GetUniswapDayData
     *
     * 
     */
    @isTest
    private static void dappsUniswapv3UniswapDayDataCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapV3UniswapDayDataV3DTO> response;
        List<OASUniswapV3UniswapDayDataV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3UniswapDayDataV3DTO>{OASUniswapV3UniswapDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3UniswapDayDataV3DTO>{OASUniswapV3UniswapDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3UniswapDayDataV3DTO>) api.dappsUniswapv3UniswapDayDataCurrentGet();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3UniswapDayDataV3DTO>{OASUniswapV3UniswapDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3UniswapDayDataV3DTO>{OASUniswapV3UniswapDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3UniswapDayDataV3DTO>) api.dappsUniswapv3UniswapDayDataCurrentGet();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3UniswapDayDataV3DTO>{OASUniswapV3UniswapDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3UniswapDayDataV3DTO>{OASUniswapV3UniswapDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3UniswapDayDataV3DTO>) api.dappsUniswapv3UniswapDayDataCurrentGet();
        System.assertEquals(expectedResponse, response);
    }
}