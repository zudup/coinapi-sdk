@isTest
private class OASUniswapV2ApiTest {
    /**
     * BundleV2s (historical) 🔥
     *
     * Gets bundlev2s.
     */
    @isTest
    private static void uniswapV2GetBundleV2sHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'id' => 'null'
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
        response = (List<OASUniswapV2BundleV2DTO>) api.uniswapV2GetBundleV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2BundleV2DTO>{OASUniswapV2BundleV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2BundleV2DTO>{OASUniswapV2BundleV2DTO.getExample()};
        response = (List<OASUniswapV2BundleV2DTO>) api.uniswapV2GetBundleV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2BundleV2DTO>{OASUniswapV2BundleV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2BundleV2DTO>{OASUniswapV2BundleV2DTO.getExample()};
        response = (List<OASUniswapV2BundleV2DTO>) api.uniswapV2GetBundleV2sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * BurnV2s (historical) 🔥
     *
     * Gets burnv2s.
     */
    @isTest
    private static void uniswapV2GetBurnV2sHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'id' => 'null',
            'pair' => 'null'
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
        response = (List<OASUniswapV2BurnV2DTO>) api.uniswapV2GetBurnV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2BurnV2DTO>{OASUniswapV2BurnV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2BurnV2DTO>{OASUniswapV2BurnV2DTO.getExample()};
        response = (List<OASUniswapV2BurnV2DTO>) api.uniswapV2GetBurnV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2BurnV2DTO>{OASUniswapV2BurnV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2BurnV2DTO>{OASUniswapV2BurnV2DTO.getExample()};
        response = (List<OASUniswapV2BurnV2DTO>) api.uniswapV2GetBurnV2sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * LiquidityPositionSnapshotV2s (historical) 🔥
     *
     * Gets liquiditypositionsnapshotv2s.
     */
    @isTest
    private static void uniswapV2GetLiquidityPositionSnapshotV2sHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'id' => 'null',
            'user' => 'null',
            'pair' => 'null'
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
        response = (List<OASUniswapV2LiquidityPositionSnapsho>) api.uniswapV2GetLiquidityPositionSnapshotV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2LiquidityPositionSnapsho>{OASUniswapV2LiquidityPositionSnapsho.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2LiquidityPositionSnapsho>{OASUniswapV2LiquidityPositionSnapsho.getExample()};
        response = (List<OASUniswapV2LiquidityPositionSnapsho>) api.uniswapV2GetLiquidityPositionSnapshotV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2LiquidityPositionSnapsho>{OASUniswapV2LiquidityPositionSnapsho.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2LiquidityPositionSnapsho>{OASUniswapV2LiquidityPositionSnapsho.getExample()};
        response = (List<OASUniswapV2LiquidityPositionSnapsho>) api.uniswapV2GetLiquidityPositionSnapshotV2sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * LiquidityPositionV2s (historical) 🔥
     *
     * Gets liquiditypositionv2s.
     */
    @isTest
    private static void uniswapV2GetLiquidityPositionV2sHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'id' => 'null',
            'user' => 'null',
            'pair' => 'null'
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
        response = (List<OASUniswapV2LiquidityPositionV2DTO>) api.uniswapV2GetLiquidityPositionV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2LiquidityPositionV2DTO>{OASUniswapV2LiquidityPositionV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2LiquidityPositionV2DTO>{OASUniswapV2LiquidityPositionV2DTO.getExample()};
        response = (List<OASUniswapV2LiquidityPositionV2DTO>) api.uniswapV2GetLiquidityPositionV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2LiquidityPositionV2DTO>{OASUniswapV2LiquidityPositionV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2LiquidityPositionV2DTO>{OASUniswapV2LiquidityPositionV2DTO.getExample()};
        response = (List<OASUniswapV2LiquidityPositionV2DTO>) api.uniswapV2GetLiquidityPositionV2sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * MintV2s (historical) 🔥
     *
     * Gets mintv2s.
     */
    @isTest
    private static void uniswapV2GetMintV2sHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'id' => 'null',
            'pair' => 'null'
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
        response = (List<OASUniswapV2MintV2DTO>) api.uniswapV2GetMintV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2MintV2DTO>{OASUniswapV2MintV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2MintV2DTO>{OASUniswapV2MintV2DTO.getExample()};
        response = (List<OASUniswapV2MintV2DTO>) api.uniswapV2GetMintV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2MintV2DTO>{OASUniswapV2MintV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2MintV2DTO>{OASUniswapV2MintV2DTO.getExample()};
        response = (List<OASUniswapV2MintV2DTO>) api.uniswapV2GetMintV2sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PairDayDataV2s (historical) 🔥
     *
     * Gets pairdaydatav2s.
     */
    @isTest
    private static void uniswapV2GetPairDayDataV2sHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'id' => 'null',
            'token0' => 'null',
            'token1' => 'null'
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
        response = (List<OASUniswapV2PairDayDataV2DTO>) api.uniswapV2GetPairDayDataV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairDayDataV2DTO>{OASUniswapV2PairDayDataV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairDayDataV2DTO>{OASUniswapV2PairDayDataV2DTO.getExample()};
        response = (List<OASUniswapV2PairDayDataV2DTO>) api.uniswapV2GetPairDayDataV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairDayDataV2DTO>{OASUniswapV2PairDayDataV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairDayDataV2DTO>{OASUniswapV2PairDayDataV2DTO.getExample()};
        response = (List<OASUniswapV2PairDayDataV2DTO>) api.uniswapV2GetPairDayDataV2sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PairHourDataV2s (historical) 🔥
     *
     * Gets pairhourdatav2s.
     */
    @isTest
    private static void uniswapV2GetPairHourDataV2sHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'id' => 'null',
            'pair' => 'null'
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
        response = (List<OASUniswapV2PairHourDataV2DTO>) api.uniswapV2GetPairHourDataV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairHourDataV2DTO>{OASUniswapV2PairHourDataV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairHourDataV2DTO>{OASUniswapV2PairHourDataV2DTO.getExample()};
        response = (List<OASUniswapV2PairHourDataV2DTO>) api.uniswapV2GetPairHourDataV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairHourDataV2DTO>{OASUniswapV2PairHourDataV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairHourDataV2DTO>{OASUniswapV2PairHourDataV2DTO.getExample()};
        response = (List<OASUniswapV2PairHourDataV2DTO>) api.uniswapV2GetPairHourDataV2sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PairV2s (historical) 🔥
     *
     * Gets pairv2s.
     */
    @isTest
    private static void uniswapV2GetPairV2sHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'id' => 'null',
            'token0' => 'null',
            'token1' => 'null'
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
        response = (List<OASUniswapV2PairV2DTO>) api.uniswapV2GetPairV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairV2DTO>{OASUniswapV2PairV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairV2DTO>{OASUniswapV2PairV2DTO.getExample()};
        response = (List<OASUniswapV2PairV2DTO>) api.uniswapV2GetPairV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairV2DTO>{OASUniswapV2PairV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairV2DTO>{OASUniswapV2PairV2DTO.getExample()};
        response = (List<OASUniswapV2PairV2DTO>) api.uniswapV2GetPairV2sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Pools (current) 🔥
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
     * SwapV2s (historical) 🔥
     *
     * Gets swapv2s.
     */
    @isTest
    private static void uniswapV2GetSwapV2sHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'id' => 'null',
            'pair' => 'null'
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
        response = (List<OASUniswapV2SwapV2DTO>) api.uniswapV2GetSwapV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2SwapV2DTO>{OASUniswapV2SwapV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2SwapV2DTO>{OASUniswapV2SwapV2DTO.getExample()};
        response = (List<OASUniswapV2SwapV2DTO>) api.uniswapV2GetSwapV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2SwapV2DTO>{OASUniswapV2SwapV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2SwapV2DTO>{OASUniswapV2SwapV2DTO.getExample()};
        response = (List<OASUniswapV2SwapV2DTO>) api.uniswapV2GetSwapV2sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Swaps (current) 🔥
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
     * TokenDayDataV2s (historical) 🔥
     *
     * Gets tokendaydatav2s.
     */
    @isTest
    private static void uniswapV2GetTokenDayDataV2sHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'id' => 'null'
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
        response = (List<OASUniswapV2TokenDayDataV2DTO>) api.uniswapV2GetTokenDayDataV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TokenDayDataV2DTO>{OASUniswapV2TokenDayDataV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenDayDataV2DTO>{OASUniswapV2TokenDayDataV2DTO.getExample()};
        response = (List<OASUniswapV2TokenDayDataV2DTO>) api.uniswapV2GetTokenDayDataV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TokenDayDataV2DTO>{OASUniswapV2TokenDayDataV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenDayDataV2DTO>{OASUniswapV2TokenDayDataV2DTO.getExample()};
        response = (List<OASUniswapV2TokenDayDataV2DTO>) api.uniswapV2GetTokenDayDataV2sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * TokenV2s (historical) 🔥
     *
     * Gets tokenv2s.
     */
    @isTest
    private static void uniswapV2GetTokenV2sHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'id' => 'null',
            'symbol' => 'null',
            'name' => 'null'
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
        response = (List<OASUniswapV2TokenV2DTO>) api.uniswapV2GetTokenV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TokenV2DTO>{OASUniswapV2TokenV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenV2DTO>{OASUniswapV2TokenV2DTO.getExample()};
        response = (List<OASUniswapV2TokenV2DTO>) api.uniswapV2GetTokenV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TokenV2DTO>{OASUniswapV2TokenV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenV2DTO>{OASUniswapV2TokenV2DTO.getExample()};
        response = (List<OASUniswapV2TokenV2DTO>) api.uniswapV2GetTokenV2sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Tokens (current) 🔥
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
     * TransactionV2s (historical) 🔥
     *
     * Gets transactionv2s.
     */
    @isTest
    private static void uniswapV2GetTransactionV2sHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'id' => 'null'
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
        response = (List<OASUniswapV2TransactionV2DTO>) api.uniswapV2GetTransactionV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TransactionV2DTO>{OASUniswapV2TransactionV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TransactionV2DTO>{OASUniswapV2TransactionV2DTO.getExample()};
        response = (List<OASUniswapV2TransactionV2DTO>) api.uniswapV2GetTransactionV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TransactionV2DTO>{OASUniswapV2TransactionV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TransactionV2DTO>{OASUniswapV2TransactionV2DTO.getExample()};
        response = (List<OASUniswapV2TransactionV2DTO>) api.uniswapV2GetTransactionV2sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * UniswapDayDataV2s (historical) 🔥
     *
     * Gets uniswapdaydatav2s.
     */
    @isTest
    private static void uniswapV2GetUniswapDayDataV2sHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'id' => 'null'
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
        response = (List<OASUniswapV2UniswapDayDataV2DTO>) api.uniswapV2GetUniswapDayDataV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2UniswapDayDataV2DTO>{OASUniswapV2UniswapDayDataV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UniswapDayDataV2DTO>{OASUniswapV2UniswapDayDataV2DTO.getExample()};
        response = (List<OASUniswapV2UniswapDayDataV2DTO>) api.uniswapV2GetUniswapDayDataV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2UniswapDayDataV2DTO>{OASUniswapV2UniswapDayDataV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UniswapDayDataV2DTO>{OASUniswapV2UniswapDayDataV2DTO.getExample()};
        response = (List<OASUniswapV2UniswapDayDataV2DTO>) api.uniswapV2GetUniswapDayDataV2sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * UniswapFactoryV2s (historical) 🔥
     *
     * Gets uniswapfactoryv2s.
     */
    @isTest
    private static void uniswapV2GetUniswapFactoryV2sHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'id' => 'null'
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
        response = (List<OASUniswapV2UniswapFactoryV2DTO>) api.uniswapV2GetUniswapFactoryV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2UniswapFactoryV2DTO>{OASUniswapV2UniswapFactoryV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UniswapFactoryV2DTO>{OASUniswapV2UniswapFactoryV2DTO.getExample()};
        response = (List<OASUniswapV2UniswapFactoryV2DTO>) api.uniswapV2GetUniswapFactoryV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2UniswapFactoryV2DTO>{OASUniswapV2UniswapFactoryV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UniswapFactoryV2DTO>{OASUniswapV2UniswapFactoryV2DTO.getExample()};
        response = (List<OASUniswapV2UniswapFactoryV2DTO>) api.uniswapV2GetUniswapFactoryV2sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * UserV2s (historical) 🔥
     *
     * Gets userv2s.
     */
    @isTest
    private static void uniswapV2GetUserV2sHistoricalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'id' => 'null'
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
        response = (List<OASUniswapV2UserV2DTO>) api.uniswapV2GetUserV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2UserV2DTO>{OASUniswapV2UserV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UserV2DTO>{OASUniswapV2UserV2DTO.getExample()};
        response = (List<OASUniswapV2UserV2DTO>) api.uniswapV2GetUserV2sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2UserV2DTO>{OASUniswapV2UserV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UserV2DTO>{OASUniswapV2UserV2DTO.getExample()};
        response = (List<OASUniswapV2UserV2DTO>) api.uniswapV2GetUserV2sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }
}