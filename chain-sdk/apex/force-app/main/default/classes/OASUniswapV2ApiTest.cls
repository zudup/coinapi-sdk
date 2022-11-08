@isTest
private class OASUniswapV2ApiTest {
    /**
     * GetBundles (historical)
     *
     * Gets bundles.
     */
    @isTest
    private static void uniswapV2GetBundlesHistoricalTest() {
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
        List<OASUniswapV2BundleV2DTO> response;
        List<OASUniswapV2BundleV2DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2BundleV2DTO>{OASUniswapV2BundleV2DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2BundleV2DTO>{OASUniswapV2BundleV2DTO.getExample()};
        response = (List<OASUniswapV2BundleV2DTO>) api.uniswapV2GetBundlesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2BundleV2DTO>{OASUniswapV2BundleV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2BundleV2DTO>{OASUniswapV2BundleV2DTO.getExample()};
        response = (List<OASUniswapV2BundleV2DTO>) api.uniswapV2GetBundlesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2BundleV2DTO>{OASUniswapV2BundleV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2BundleV2DTO>{OASUniswapV2BundleV2DTO.getExample()};
        response = (List<OASUniswapV2BundleV2DTO>) api.uniswapV2GetBundlesHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetBurns (historical)
     *
     * Gets burns.
     */
    @isTest
    private static void uniswapV2GetBurnsHistoricalTest() {
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
        List<OASUniswapV2BurnV2DTO> response;
        List<OASUniswapV2BurnV2DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2BurnV2DTO>{OASUniswapV2BurnV2DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2BurnV2DTO>{OASUniswapV2BurnV2DTO.getExample()};
        response = (List<OASUniswapV2BurnV2DTO>) api.uniswapV2GetBurnsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2BurnV2DTO>{OASUniswapV2BurnV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2BurnV2DTO>{OASUniswapV2BurnV2DTO.getExample()};
        response = (List<OASUniswapV2BurnV2DTO>) api.uniswapV2GetBurnsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2BurnV2DTO>{OASUniswapV2BurnV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2BurnV2DTO>{OASUniswapV2BurnV2DTO.getExample()};
        response = (List<OASUniswapV2BurnV2DTO>) api.uniswapV2GetBurnsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetDayData (historical)
     *
     * Gets uniswapv2 day data.
     */
    @isTest
    private static void uniswapV2GetDayDataHistoricalTest() {
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
        List<OASUniswapV2UniswapDayDataV2DTO> response;
        List<OASUniswapV2UniswapDayDataV2DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2UniswapDayDataV2DTO>{OASUniswapV2UniswapDayDataV2DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UniswapDayDataV2DTO>{OASUniswapV2UniswapDayDataV2DTO.getExample()};
        response = (List<OASUniswapV2UniswapDayDataV2DTO>) api.uniswapV2GetDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2UniswapDayDataV2DTO>{OASUniswapV2UniswapDayDataV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UniswapDayDataV2DTO>{OASUniswapV2UniswapDayDataV2DTO.getExample()};
        response = (List<OASUniswapV2UniswapDayDataV2DTO>) api.uniswapV2GetDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2UniswapDayDataV2DTO>{OASUniswapV2UniswapDayDataV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UniswapDayDataV2DTO>{OASUniswapV2UniswapDayDataV2DTO.getExample()};
        response = (List<OASUniswapV2UniswapDayDataV2DTO>) api.uniswapV2GetDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetFactory (historical)
     *
     * Gets factory.
     */
    @isTest
    private static void uniswapV2GetFactoryHistoricalTest() {
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
        List<OASUniswapV2UniswapFactoryV2DTO> response;
        List<OASUniswapV2UniswapFactoryV2DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2UniswapFactoryV2DTO>{OASUniswapV2UniswapFactoryV2DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UniswapFactoryV2DTO>{OASUniswapV2UniswapFactoryV2DTO.getExample()};
        response = (List<OASUniswapV2UniswapFactoryV2DTO>) api.uniswapV2GetFactoryHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2UniswapFactoryV2DTO>{OASUniswapV2UniswapFactoryV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UniswapFactoryV2DTO>{OASUniswapV2UniswapFactoryV2DTO.getExample()};
        response = (List<OASUniswapV2UniswapFactoryV2DTO>) api.uniswapV2GetFactoryHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2UniswapFactoryV2DTO>{OASUniswapV2UniswapFactoryV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UniswapFactoryV2DTO>{OASUniswapV2UniswapFactoryV2DTO.getExample()};
        response = (List<OASUniswapV2UniswapFactoryV2DTO>) api.uniswapV2GetFactoryHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetLiquidityPositions (historical)
     *
     * Gets liquidity positions.
     */
    @isTest
    private static void uniswapV2GetLiquidityPositionsHistoricalTest() {
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
        List<OASUniswapV2LiquidityPositionV2DTO> response;
        List<OASUniswapV2LiquidityPositionV2DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2LiquidityPositionV2DTO>{OASUniswapV2LiquidityPositionV2DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2LiquidityPositionV2DTO>{OASUniswapV2LiquidityPositionV2DTO.getExample()};
        response = (List<OASUniswapV2LiquidityPositionV2DTO>) api.uniswapV2GetLiquidityPositionsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2LiquidityPositionV2DTO>{OASUniswapV2LiquidityPositionV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2LiquidityPositionV2DTO>{OASUniswapV2LiquidityPositionV2DTO.getExample()};
        response = (List<OASUniswapV2LiquidityPositionV2DTO>) api.uniswapV2GetLiquidityPositionsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2LiquidityPositionV2DTO>{OASUniswapV2LiquidityPositionV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2LiquidityPositionV2DTO>{OASUniswapV2LiquidityPositionV2DTO.getExample()};
        response = (List<OASUniswapV2LiquidityPositionV2DTO>) api.uniswapV2GetLiquidityPositionsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetLiquidityPositionsSnapshots (historical)
     *
     * Gets liquidity positions snapshots.
     */
    @isTest
    private static void uniswapV2GetLiquidityPositionsSnapshotsHistoricalTest() {
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
        List<OASUniswapV2LiquidityPositionSnapsho> response;
        List<OASUniswapV2LiquidityPositionSnapsho> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2LiquidityPositionSnapsho>{OASUniswapV2LiquidityPositionSnapsho.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2LiquidityPositionSnapsho>{OASUniswapV2LiquidityPositionSnapsho.getExample()};
        response = (List<OASUniswapV2LiquidityPositionSnapsho>) api.uniswapV2GetLiquidityPositionsSnapshotsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2LiquidityPositionSnapsho>{OASUniswapV2LiquidityPositionSnapsho.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2LiquidityPositionSnapsho>{OASUniswapV2LiquidityPositionSnapsho.getExample()};
        response = (List<OASUniswapV2LiquidityPositionSnapsho>) api.uniswapV2GetLiquidityPositionsSnapshotsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2LiquidityPositionSnapsho>{OASUniswapV2LiquidityPositionSnapsho.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2LiquidityPositionSnapsho>{OASUniswapV2LiquidityPositionSnapsho.getExample()};
        response = (List<OASUniswapV2LiquidityPositionSnapsho>) api.uniswapV2GetLiquidityPositionsSnapshotsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetMints (historical)
     *
     * Gets mints.
     */
    @isTest
    private static void uniswapV2GetMintsHistoricalTest() {
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
        List<OASUniswapV2MintV2DTO> response;
        List<OASUniswapV2MintV2DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2MintV2DTO>{OASUniswapV2MintV2DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2MintV2DTO>{OASUniswapV2MintV2DTO.getExample()};
        response = (List<OASUniswapV2MintV2DTO>) api.uniswapV2GetMintsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2MintV2DTO>{OASUniswapV2MintV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2MintV2DTO>{OASUniswapV2MintV2DTO.getExample()};
        response = (List<OASUniswapV2MintV2DTO>) api.uniswapV2GetMintsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2MintV2DTO>{OASUniswapV2MintV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2MintV2DTO>{OASUniswapV2MintV2DTO.getExample()};
        response = (List<OASUniswapV2MintV2DTO>) api.uniswapV2GetMintsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetPools (current) 🔥
     *
     * Gets pools.
     */
    @isTest
    private static void uniswapV2GetPoolsCurrentTest() {
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
        response = (List<OASUniswapV2PairV2DTO>) api.uniswapV2GetPoolsCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairV2DTO>{OASUniswapV2PairV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairV2DTO>{OASUniswapV2PairV2DTO.getExample()};
        response = (List<OASUniswapV2PairV2DTO>) api.uniswapV2GetPoolsCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairV2DTO>{OASUniswapV2PairV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairV2DTO>{OASUniswapV2PairV2DTO.getExample()};
        response = (List<OASUniswapV2PairV2DTO>) api.uniswapV2GetPoolsCurrent(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetPoolsDayData (historical)
     *
     * Gets pools day data.
     */
    @isTest
    private static void uniswapV2GetPoolsDayDataHistoricalTest() {
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
        List<OASUniswapV2PairDayDataV2DTO> response;
        List<OASUniswapV2PairDayDataV2DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2PairDayDataV2DTO>{OASUniswapV2PairDayDataV2DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairDayDataV2DTO>{OASUniswapV2PairDayDataV2DTO.getExample()};
        response = (List<OASUniswapV2PairDayDataV2DTO>) api.uniswapV2GetPoolsDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairDayDataV2DTO>{OASUniswapV2PairDayDataV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairDayDataV2DTO>{OASUniswapV2PairDayDataV2DTO.getExample()};
        response = (List<OASUniswapV2PairDayDataV2DTO>) api.uniswapV2GetPoolsDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairDayDataV2DTO>{OASUniswapV2PairDayDataV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairDayDataV2DTO>{OASUniswapV2PairDayDataV2DTO.getExample()};
        response = (List<OASUniswapV2PairDayDataV2DTO>) api.uniswapV2GetPoolsDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetPools (historical) 🔥
     *
     * Gets pools.
     */
    @isTest
    private static void uniswapV2GetPoolsHistoricalTest() {
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
        List<OASUniswapV2PairV2DTO> response;
        List<OASUniswapV2PairV2DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2PairV2DTO>{OASUniswapV2PairV2DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairV2DTO>{OASUniswapV2PairV2DTO.getExample()};
        response = (List<OASUniswapV2PairV2DTO>) api.uniswapV2GetPoolsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairV2DTO>{OASUniswapV2PairV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairV2DTO>{OASUniswapV2PairV2DTO.getExample()};
        response = (List<OASUniswapV2PairV2DTO>) api.uniswapV2GetPoolsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairV2DTO>{OASUniswapV2PairV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairV2DTO>{OASUniswapV2PairV2DTO.getExample()};
        response = (List<OASUniswapV2PairV2DTO>) api.uniswapV2GetPoolsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetPoolsHourData (historical)
     *
     * Gets pools tracked each our.
     */
    @isTest
    private static void uniswapV2GetPoolsHourDataHistoricalTest() {
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
        List<OASUniswapV2PairHourDataV2DTO> response;
        List<OASUniswapV2PairHourDataV2DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2PairHourDataV2DTO>{OASUniswapV2PairHourDataV2DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairHourDataV2DTO>{OASUniswapV2PairHourDataV2DTO.getExample()};
        response = (List<OASUniswapV2PairHourDataV2DTO>) api.uniswapV2GetPoolsHourDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairHourDataV2DTO>{OASUniswapV2PairHourDataV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairHourDataV2DTO>{OASUniswapV2PairHourDataV2DTO.getExample()};
        response = (List<OASUniswapV2PairHourDataV2DTO>) api.uniswapV2GetPoolsHourDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairHourDataV2DTO>{OASUniswapV2PairHourDataV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairHourDataV2DTO>{OASUniswapV2PairHourDataV2DTO.getExample()};
        response = (List<OASUniswapV2PairHourDataV2DTO>) api.uniswapV2GetPoolsHourDataHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetSwaps (current) 🔥
     *
     * Gets swaps.
     */
    @isTest
    private static void uniswapV2GetSwapsCurrentTest() {
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
        response = (List<OASUniswapV2SwapV2DTO>) api.uniswapV2GetSwapsCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2SwapV2DTO>{OASUniswapV2SwapV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2SwapV2DTO>{OASUniswapV2SwapV2DTO.getExample()};
        response = (List<OASUniswapV2SwapV2DTO>) api.uniswapV2GetSwapsCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2SwapV2DTO>{OASUniswapV2SwapV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2SwapV2DTO>{OASUniswapV2SwapV2DTO.getExample()};
        response = (List<OASUniswapV2SwapV2DTO>) api.uniswapV2GetSwapsCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetSwaps (historical) 🔥
     *
     * Gets swaps.
     */
    @isTest
    private static void uniswapV2GetSwapsHistoricalTest() {
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
        List<OASUniswapV2SwapV2DTO> response;
        List<OASUniswapV2SwapV2DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2SwapV2DTO>{OASUniswapV2SwapV2DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2SwapV2DTO>{OASUniswapV2SwapV2DTO.getExample()};
        response = (List<OASUniswapV2SwapV2DTO>) api.uniswapV2GetSwapsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2SwapV2DTO>{OASUniswapV2SwapV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2SwapV2DTO>{OASUniswapV2SwapV2DTO.getExample()};
        response = (List<OASUniswapV2SwapV2DTO>) api.uniswapV2GetSwapsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2SwapV2DTO>{OASUniswapV2SwapV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2SwapV2DTO>{OASUniswapV2SwapV2DTO.getExample()};
        response = (List<OASUniswapV2SwapV2DTO>) api.uniswapV2GetSwapsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetTokens (current) 🔥
     *
     * Gets tokens.
     */
    @isTest
    private static void uniswapV2GetTokensCurrentTest() {
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
        response = (List<OASUniswapV2TokenV2DTO>) api.uniswapV2GetTokensCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TokenV2DTO>{OASUniswapV2TokenV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenV2DTO>{OASUniswapV2TokenV2DTO.getExample()};
        response = (List<OASUniswapV2TokenV2DTO>) api.uniswapV2GetTokensCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TokenV2DTO>{OASUniswapV2TokenV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenV2DTO>{OASUniswapV2TokenV2DTO.getExample()};
        response = (List<OASUniswapV2TokenV2DTO>) api.uniswapV2GetTokensCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetTokensDayData (historical)
     *
     * Gets tokens day data.
     */
    @isTest
    private static void uniswapV2GetTokensDayDataHistoricalTest() {
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
        List<OASUniswapV2TokenDayDataV2DTO> response;
        List<OASUniswapV2TokenDayDataV2DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2TokenDayDataV2DTO>{OASUniswapV2TokenDayDataV2DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenDayDataV2DTO>{OASUniswapV2TokenDayDataV2DTO.getExample()};
        response = (List<OASUniswapV2TokenDayDataV2DTO>) api.uniswapV2GetTokensDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TokenDayDataV2DTO>{OASUniswapV2TokenDayDataV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenDayDataV2DTO>{OASUniswapV2TokenDayDataV2DTO.getExample()};
        response = (List<OASUniswapV2TokenDayDataV2DTO>) api.uniswapV2GetTokensDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TokenDayDataV2DTO>{OASUniswapV2TokenDayDataV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenDayDataV2DTO>{OASUniswapV2TokenDayDataV2DTO.getExample()};
        response = (List<OASUniswapV2TokenDayDataV2DTO>) api.uniswapV2GetTokensDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetTokens (historical) 🔥
     *
     * Gets tokens.
     */
    @isTest
    private static void uniswapV2GetTokensHistoricalTest() {
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
        List<OASUniswapV2TokenV2DTO> response;
        List<OASUniswapV2TokenV2DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2TokenV2DTO>{OASUniswapV2TokenV2DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenV2DTO>{OASUniswapV2TokenV2DTO.getExample()};
        response = (List<OASUniswapV2TokenV2DTO>) api.uniswapV2GetTokensHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TokenV2DTO>{OASUniswapV2TokenV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenV2DTO>{OASUniswapV2TokenV2DTO.getExample()};
        response = (List<OASUniswapV2TokenV2DTO>) api.uniswapV2GetTokensHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TokenV2DTO>{OASUniswapV2TokenV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenV2DTO>{OASUniswapV2TokenV2DTO.getExample()};
        response = (List<OASUniswapV2TokenV2DTO>) api.uniswapV2GetTokensHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetTransactions (historical)
     *
     * Gets transactions.
     */
    @isTest
    private static void uniswapV2GetTransactionsHistoricalTest() {
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
        List<OASUniswapV2TransactionV2DTO> response;
        List<OASUniswapV2TransactionV2DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2TransactionV2DTO>{OASUniswapV2TransactionV2DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TransactionV2DTO>{OASUniswapV2TransactionV2DTO.getExample()};
        response = (List<OASUniswapV2TransactionV2DTO>) api.uniswapV2GetTransactionsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TransactionV2DTO>{OASUniswapV2TransactionV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TransactionV2DTO>{OASUniswapV2TransactionV2DTO.getExample()};
        response = (List<OASUniswapV2TransactionV2DTO>) api.uniswapV2GetTransactionsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TransactionV2DTO>{OASUniswapV2TransactionV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TransactionV2DTO>{OASUniswapV2TransactionV2DTO.getExample()};
        response = (List<OASUniswapV2TransactionV2DTO>) api.uniswapV2GetTransactionsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetUsers (historical)
     *
     * Gets users.
     */
    @isTest
    private static void uniswapV2GetUsersHistoricalTest() {
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
        List<OASUniswapV2UserV2DTO> response;
        List<OASUniswapV2UserV2DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2UserV2DTO>{OASUniswapV2UserV2DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UserV2DTO>{OASUniswapV2UserV2DTO.getExample()};
        response = (List<OASUniswapV2UserV2DTO>) api.uniswapV2GetUsersHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2UserV2DTO>{OASUniswapV2UserV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UserV2DTO>{OASUniswapV2UserV2DTO.getExample()};
        response = (List<OASUniswapV2UserV2DTO>) api.uniswapV2GetUsersHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2UserV2DTO>{OASUniswapV2UserV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UserV2DTO>{OASUniswapV2UserV2DTO.getExample()};
        response = (List<OASUniswapV2UserV2DTO>) api.uniswapV2GetUsersHistorical(params);
        System.assertEquals(expectedResponse, response);
    }
}