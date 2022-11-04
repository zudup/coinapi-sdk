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
        List<OASBundleV3DTO> response;
        List<OASBundleV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASBundleV3DTO>{OASBundleV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASBundleV3DTO>{OASBundleV3DTO.getExample()};
        response = (List<OASBundleV3DTO>) api.dappsUniswapv3BundleCurrentGet();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASBundleV3DTO>{OASBundleV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASBundleV3DTO>{OASBundleV3DTO.getExample()};
        response = (List<OASBundleV3DTO>) api.dappsUniswapv3BundleCurrentGet();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASBundleV3DTO>{OASBundleV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASBundleV3DTO>{OASBundleV3DTO.getExample()};
        response = (List<OASBundleV3DTO>) api.dappsUniswapv3BundleCurrentGet();
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
        List<OASBurnV3DTO> response;
        List<OASBurnV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASBurnV3DTO>{OASBurnV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASBurnV3DTO>{OASBurnV3DTO.getExample()};
        response = (List<OASBurnV3DTO>) api.dappsUniswapv3BurnsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASBurnV3DTO>{OASBurnV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASBurnV3DTO>{OASBurnV3DTO.getExample()};
        response = (List<OASBurnV3DTO>) api.dappsUniswapv3BurnsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASBurnV3DTO>{OASBurnV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASBurnV3DTO>{OASBurnV3DTO.getExample()};
        response = (List<OASBurnV3DTO>) api.dappsUniswapv3BurnsCurrentGet(params);
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
        List<OASFactoryV3DTO> response;
        List<OASFactoryV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASFactoryV3DTO>{OASFactoryV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASFactoryV3DTO>{OASFactoryV3DTO.getExample()};
        response = (List<OASFactoryV3DTO>) api.dappsUniswapv3FactoryCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASFactoryV3DTO>{OASFactoryV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASFactoryV3DTO>{OASFactoryV3DTO.getExample()};
        response = (List<OASFactoryV3DTO>) api.dappsUniswapv3FactoryCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASFactoryV3DTO>{OASFactoryV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASFactoryV3DTO>{OASFactoryV3DTO.getExample()};
        response = (List<OASFactoryV3DTO>) api.dappsUniswapv3FactoryCurrentGet(params);
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
        List<OASMintV3DTO> response;
        List<OASMintV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASMintV3DTO>{OASMintV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASMintV3DTO>{OASMintV3DTO.getExample()};
        response = (List<OASMintV3DTO>) api.dappsUniswapv3MintsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASMintV3DTO>{OASMintV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASMintV3DTO>{OASMintV3DTO.getExample()};
        response = (List<OASMintV3DTO>) api.dappsUniswapv3MintsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASMintV3DTO>{OASMintV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASMintV3DTO>{OASMintV3DTO.getExample()};
        response = (List<OASMintV3DTO>) api.dappsUniswapv3MintsCurrentGet(params);
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
        List<OASPoolV3DTO> response;
        List<OASPoolV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASPoolV3DTO>{OASPoolV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPoolV3DTO>{OASPoolV3DTO.getExample()};
        response = (List<OASPoolV3DTO>) api.dappsUniswapv3PoolsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASPoolV3DTO>{OASPoolV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASPoolV3DTO>{OASPoolV3DTO.getExample()};
        response = (List<OASPoolV3DTO>) api.dappsUniswapv3PoolsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASPoolV3DTO>{OASPoolV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASPoolV3DTO>{OASPoolV3DTO.getExample()};
        response = (List<OASPoolV3DTO>) api.dappsUniswapv3PoolsCurrentGet(params);
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
        List<OASPoolDayDataV3DTO> response;
        List<OASPoolDayDataV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASPoolDayDataV3DTO>{OASPoolDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPoolDayDataV3DTO>{OASPoolDayDataV3DTO.getExample()};
        response = (List<OASPoolDayDataV3DTO>) api.dappsUniswapv3PoolsDayDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASPoolDayDataV3DTO>{OASPoolDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASPoolDayDataV3DTO>{OASPoolDayDataV3DTO.getExample()};
        response = (List<OASPoolDayDataV3DTO>) api.dappsUniswapv3PoolsDayDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASPoolDayDataV3DTO>{OASPoolDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASPoolDayDataV3DTO>{OASPoolDayDataV3DTO.getExample()};
        response = (List<OASPoolDayDataV3DTO>) api.dappsUniswapv3PoolsDayDataCurrentGet(params);
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
        List<OASPoolHourDataV3DTO> response;
        List<OASPoolHourDataV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASPoolHourDataV3DTO>{OASPoolHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPoolHourDataV3DTO>{OASPoolHourDataV3DTO.getExample()};
        response = (List<OASPoolHourDataV3DTO>) api.dappsUniswapv3PoolsHourDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASPoolHourDataV3DTO>{OASPoolHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASPoolHourDataV3DTO>{OASPoolHourDataV3DTO.getExample()};
        response = (List<OASPoolHourDataV3DTO>) api.dappsUniswapv3PoolsHourDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASPoolHourDataV3DTO>{OASPoolHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASPoolHourDataV3DTO>{OASPoolHourDataV3DTO.getExample()};
        response = (List<OASPoolHourDataV3DTO>) api.dappsUniswapv3PoolsHourDataCurrentGet(params);
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
        List<OASPositionSnapshotV3DTO> response;
        List<OASPositionSnapshotV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASPositionSnapshotV3DTO>{OASPositionSnapshotV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPositionSnapshotV3DTO>{OASPositionSnapshotV3DTO.getExample()};
        response = (List<OASPositionSnapshotV3DTO>) api.dappsUniswapv3PositionSnapshotsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASPositionSnapshotV3DTO>{OASPositionSnapshotV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASPositionSnapshotV3DTO>{OASPositionSnapshotV3DTO.getExample()};
        response = (List<OASPositionSnapshotV3DTO>) api.dappsUniswapv3PositionSnapshotsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASPositionSnapshotV3DTO>{OASPositionSnapshotV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASPositionSnapshotV3DTO>{OASPositionSnapshotV3DTO.getExample()};
        response = (List<OASPositionSnapshotV3DTO>) api.dappsUniswapv3PositionSnapshotsCurrentGet(params);
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
        List<OASPositionV3DTO> response;
        List<OASPositionV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASPositionV3DTO>{OASPositionV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPositionV3DTO>{OASPositionV3DTO.getExample()};
        response = (List<OASPositionV3DTO>) api.dappsUniswapv3PositionsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASPositionV3DTO>{OASPositionV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASPositionV3DTO>{OASPositionV3DTO.getExample()};
        response = (List<OASPositionV3DTO>) api.dappsUniswapv3PositionsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASPositionV3DTO>{OASPositionV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASPositionV3DTO>{OASPositionV3DTO.getExample()};
        response = (List<OASPositionV3DTO>) api.dappsUniswapv3PositionsCurrentGet(params);
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
        List<OASSwapV3DTO> response;
        List<OASSwapV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASSwapV3DTO>{OASSwapV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSwapV3DTO>{OASSwapV3DTO.getExample()};
        response = (List<OASSwapV3DTO>) api.dappsUniswapv3SwapsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSwapV3DTO>{OASSwapV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSwapV3DTO>{OASSwapV3DTO.getExample()};
        response = (List<OASSwapV3DTO>) api.dappsUniswapv3SwapsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSwapV3DTO>{OASSwapV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSwapV3DTO>{OASSwapV3DTO.getExample()};
        response = (List<OASSwapV3DTO>) api.dappsUniswapv3SwapsCurrentGet(params);
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
        List<OASTickV3DTO> response;
        List<OASTickV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASTickV3DTO>{OASTickV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASTickV3DTO>{OASTickV3DTO.getExample()};
        response = (List<OASTickV3DTO>) api.dappsUniswapv3TicksCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASTickV3DTO>{OASTickV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASTickV3DTO>{OASTickV3DTO.getExample()};
        response = (List<OASTickV3DTO>) api.dappsUniswapv3TicksCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASTickV3DTO>{OASTickV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASTickV3DTO>{OASTickV3DTO.getExample()};
        response = (List<OASTickV3DTO>) api.dappsUniswapv3TicksCurrentGet(params);
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
        List<OASTickDayDataV3DTO> response;
        List<OASTickDayDataV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASTickDayDataV3DTO>{OASTickDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASTickDayDataV3DTO>{OASTickDayDataV3DTO.getExample()};
        response = (List<OASTickDayDataV3DTO>) api.dappsUniswapv3TicksDayDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASTickDayDataV3DTO>{OASTickDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASTickDayDataV3DTO>{OASTickDayDataV3DTO.getExample()};
        response = (List<OASTickDayDataV3DTO>) api.dappsUniswapv3TicksDayDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASTickDayDataV3DTO>{OASTickDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASTickDayDataV3DTO>{OASTickDayDataV3DTO.getExample()};
        response = (List<OASTickDayDataV3DTO>) api.dappsUniswapv3TicksDayDataCurrentGet(params);
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
        List<OASTokenV3DTO> response;
        List<OASTokenV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASTokenV3DTO>{OASTokenV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASTokenV3DTO>{OASTokenV3DTO.getExample()};
        response = (List<OASTokenV3DTO>) api.dappsUniswapv3TokensCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASTokenV3DTO>{OASTokenV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASTokenV3DTO>{OASTokenV3DTO.getExample()};
        response = (List<OASTokenV3DTO>) api.dappsUniswapv3TokensCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASTokenV3DTO>{OASTokenV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASTokenV3DTO>{OASTokenV3DTO.getExample()};
        response = (List<OASTokenV3DTO>) api.dappsUniswapv3TokensCurrentGet(params);
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
        List<OASTokenV3DayDataDTO> response;
        List<OASTokenV3DayDataDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASTokenV3DayDataDTO>{OASTokenV3DayDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASTokenV3DayDataDTO>{OASTokenV3DayDataDTO.getExample()};
        response = (List<OASTokenV3DayDataDTO>) api.dappsUniswapv3TokensDayDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASTokenV3DayDataDTO>{OASTokenV3DayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASTokenV3DayDataDTO>{OASTokenV3DayDataDTO.getExample()};
        response = (List<OASTokenV3DayDataDTO>) api.dappsUniswapv3TokensDayDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASTokenV3DayDataDTO>{OASTokenV3DayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASTokenV3DayDataDTO>{OASTokenV3DayDataDTO.getExample()};
        response = (List<OASTokenV3DayDataDTO>) api.dappsUniswapv3TokensDayDataCurrentGet(params);
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
        List<OASTokenHourDataV3DTO> response;
        List<OASTokenHourDataV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASTokenHourDataV3DTO>{OASTokenHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASTokenHourDataV3DTO>{OASTokenHourDataV3DTO.getExample()};
        response = (List<OASTokenHourDataV3DTO>) api.dappsUniswapv3TokensHourDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASTokenHourDataV3DTO>{OASTokenHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASTokenHourDataV3DTO>{OASTokenHourDataV3DTO.getExample()};
        response = (List<OASTokenHourDataV3DTO>) api.dappsUniswapv3TokensHourDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASTokenHourDataV3DTO>{OASTokenHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASTokenHourDataV3DTO>{OASTokenHourDataV3DTO.getExample()};
        response = (List<OASTokenHourDataV3DTO>) api.dappsUniswapv3TokensHourDataCurrentGet(params);
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
        List<OASUniswapDayDataV3DTO> response;
        List<OASUniswapDayDataV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapDayDataV3DTO>{OASUniswapDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapDayDataV3DTO>{OASUniswapDayDataV3DTO.getExample()};
        response = (List<OASUniswapDayDataV3DTO>) api.dappsUniswapv3UniswapDayDataCurrentGet();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapDayDataV3DTO>{OASUniswapDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapDayDataV3DTO>{OASUniswapDayDataV3DTO.getExample()};
        response = (List<OASUniswapDayDataV3DTO>) api.dappsUniswapv3UniswapDayDataCurrentGet();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapDayDataV3DTO>{OASUniswapDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapDayDataV3DTO>{OASUniswapDayDataV3DTO.getExample()};
        response = (List<OASUniswapDayDataV3DTO>) api.dappsUniswapv3UniswapDayDataCurrentGet();
        System.assertEquals(expectedResponse, response);
    }
}