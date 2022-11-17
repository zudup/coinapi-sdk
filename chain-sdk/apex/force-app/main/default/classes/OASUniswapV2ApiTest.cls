@isTest
private class OASUniswapV2ApiTest {
    /**
     * Bundles (current)
     *
     * Gets bundles.
     */
    @isTest
    private static void uniswapV2BundlesCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV2Api api;
        List<OASUniswapV2BundleDTO> response;
        List<OASUniswapV2BundleDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2BundleDTO>{OASUniswapV2BundleDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2BundleDTO>{OASUniswapV2BundleDTO.getExample()};
        response = (List<OASUniswapV2BundleDTO>) api.uniswapV2BundlesCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2BundleDTO>{OASUniswapV2BundleDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2BundleDTO>{OASUniswapV2BundleDTO.getExample()};
        response = (List<OASUniswapV2BundleDTO>) api.uniswapV2BundlesCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2BundleDTO>{OASUniswapV2BundleDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2BundleDTO>{OASUniswapV2BundleDTO.getExample()};
        response = (List<OASUniswapV2BundleDTO>) api.uniswapV2BundlesCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Burns (current)
     *
     * Gets burns.
     */
    @isTest
    private static void uniswapV2BurnsCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV2Api api;
        List<OASUniswapV2BurnDTO> response;
        List<OASUniswapV2BurnDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2BurnDTO>{OASUniswapV2BurnDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2BurnDTO>{OASUniswapV2BurnDTO.getExample()};
        response = (List<OASUniswapV2BurnDTO>) api.uniswapV2BurnsCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2BurnDTO>{OASUniswapV2BurnDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2BurnDTO>{OASUniswapV2BurnDTO.getExample()};
        response = (List<OASUniswapV2BurnDTO>) api.uniswapV2BurnsCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2BurnDTO>{OASUniswapV2BurnDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2BurnDTO>{OASUniswapV2BurnDTO.getExample()};
        response = (List<OASUniswapV2BurnDTO>) api.uniswapV2BurnsCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Bundles (historical)
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
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'id' => 'null'
        };

        OASClient client;
        OASUniswapV2Api api;
        List<OASUniswapV2BundleDTO> response;
        List<OASUniswapV2BundleDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2BundleDTO>{OASUniswapV2BundleDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2BundleDTO>{OASUniswapV2BundleDTO.getExample()};
        response = (List<OASUniswapV2BundleDTO>) api.uniswapV2GetBundlesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2BundleDTO>{OASUniswapV2BundleDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2BundleDTO>{OASUniswapV2BundleDTO.getExample()};
        response = (List<OASUniswapV2BundleDTO>) api.uniswapV2GetBundlesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2BundleDTO>{OASUniswapV2BundleDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2BundleDTO>{OASUniswapV2BundleDTO.getExample()};
        response = (List<OASUniswapV2BundleDTO>) api.uniswapV2GetBundlesHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Burns (historical)
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
            'id' => 'null',
            'pair' => 'null'
        };

        OASClient client;
        OASUniswapV2Api api;
        List<OASUniswapV2BurnDTO> response;
        List<OASUniswapV2BurnDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2BurnDTO>{OASUniswapV2BurnDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2BurnDTO>{OASUniswapV2BurnDTO.getExample()};
        response = (List<OASUniswapV2BurnDTO>) api.uniswapV2GetBurnsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2BurnDTO>{OASUniswapV2BurnDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2BurnDTO>{OASUniswapV2BurnDTO.getExample()};
        response = (List<OASUniswapV2BurnDTO>) api.uniswapV2GetBurnsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2BurnDTO>{OASUniswapV2BurnDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2BurnDTO>{OASUniswapV2BurnDTO.getExample()};
        response = (List<OASUniswapV2BurnDTO>) api.uniswapV2GetBurnsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * LiquidityPositionSnapshots (historical)
     *
     * Gets liquidityPositionSnapshots.
     */
    @isTest
    private static void uniswapV2GetLiquidityPositionSnapshotsHistoricalTest() {
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
        response = (List<OASUniswapV2LiquidityPositionSnapsho>) api.uniswapV2GetLiquidityPositionSnapshotsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2LiquidityPositionSnapsho>{OASUniswapV2LiquidityPositionSnapsho.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2LiquidityPositionSnapsho>{OASUniswapV2LiquidityPositionSnapsho.getExample()};
        response = (List<OASUniswapV2LiquidityPositionSnapsho>) api.uniswapV2GetLiquidityPositionSnapshotsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2LiquidityPositionSnapsho>{OASUniswapV2LiquidityPositionSnapsho.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2LiquidityPositionSnapsho>{OASUniswapV2LiquidityPositionSnapsho.getExample()};
        response = (List<OASUniswapV2LiquidityPositionSnapsho>) api.uniswapV2GetLiquidityPositionSnapshotsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * LiquidityPositions (historical)
     *
     * Gets liquidityPositions.
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
            'id' => 'null',
            'user' => 'null',
            'pair' => 'null'
        };

        OASClient client;
        OASUniswapV2Api api;
        List<OASUniswapV2LiquidityPositionDTO> response;
        List<OASUniswapV2LiquidityPositionDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2LiquidityPositionDTO>{OASUniswapV2LiquidityPositionDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2LiquidityPositionDTO>{OASUniswapV2LiquidityPositionDTO.getExample()};
        response = (List<OASUniswapV2LiquidityPositionDTO>) api.uniswapV2GetLiquidityPositionsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2LiquidityPositionDTO>{OASUniswapV2LiquidityPositionDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2LiquidityPositionDTO>{OASUniswapV2LiquidityPositionDTO.getExample()};
        response = (List<OASUniswapV2LiquidityPositionDTO>) api.uniswapV2GetLiquidityPositionsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2LiquidityPositionDTO>{OASUniswapV2LiquidityPositionDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2LiquidityPositionDTO>{OASUniswapV2LiquidityPositionDTO.getExample()};
        response = (List<OASUniswapV2LiquidityPositionDTO>) api.uniswapV2GetLiquidityPositionsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Mints (historical)
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
            'id' => 'null',
            'pair' => 'null'
        };

        OASClient client;
        OASUniswapV2Api api;
        List<OASUniswapV2MintDTO> response;
        List<OASUniswapV2MintDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2MintDTO>{OASUniswapV2MintDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2MintDTO>{OASUniswapV2MintDTO.getExample()};
        response = (List<OASUniswapV2MintDTO>) api.uniswapV2GetMintsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2MintDTO>{OASUniswapV2MintDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2MintDTO>{OASUniswapV2MintDTO.getExample()};
        response = (List<OASUniswapV2MintDTO>) api.uniswapV2GetMintsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2MintDTO>{OASUniswapV2MintDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2MintDTO>{OASUniswapV2MintDTO.getExample()};
        response = (List<OASUniswapV2MintDTO>) api.uniswapV2GetMintsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PairDayDatas (historical)
     *
     * Gets pairDayDatas.
     */
    @isTest
    private static void uniswapV2GetPairDayDatasHistoricalTest() {
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
        List<OASUniswapV2PairDayDataDTO> response;
        List<OASUniswapV2PairDayDataDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2PairDayDataDTO>{OASUniswapV2PairDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairDayDataDTO>{OASUniswapV2PairDayDataDTO.getExample()};
        response = (List<OASUniswapV2PairDayDataDTO>) api.uniswapV2GetPairDayDatasHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairDayDataDTO>{OASUniswapV2PairDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairDayDataDTO>{OASUniswapV2PairDayDataDTO.getExample()};
        response = (List<OASUniswapV2PairDayDataDTO>) api.uniswapV2GetPairDayDatasHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairDayDataDTO>{OASUniswapV2PairDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairDayDataDTO>{OASUniswapV2PairDayDataDTO.getExample()};
        response = (List<OASUniswapV2PairDayDataDTO>) api.uniswapV2GetPairDayDatasHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PairHourDatas (historical)
     *
     * Gets pairHourDatas.
     */
    @isTest
    private static void uniswapV2GetPairHourDatasHistoricalTest() {
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
        List<OASUniswapV2PairHourDataDTO> response;
        List<OASUniswapV2PairHourDataDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2PairHourDataDTO>{OASUniswapV2PairHourDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairHourDataDTO>{OASUniswapV2PairHourDataDTO.getExample()};
        response = (List<OASUniswapV2PairHourDataDTO>) api.uniswapV2GetPairHourDatasHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairHourDataDTO>{OASUniswapV2PairHourDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairHourDataDTO>{OASUniswapV2PairHourDataDTO.getExample()};
        response = (List<OASUniswapV2PairHourDataDTO>) api.uniswapV2GetPairHourDatasHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairHourDataDTO>{OASUniswapV2PairHourDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairHourDataDTO>{OASUniswapV2PairHourDataDTO.getExample()};
        response = (List<OASUniswapV2PairHourDataDTO>) api.uniswapV2GetPairHourDatasHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Pairs (historical)
     *
     * Gets pairs.
     */
    @isTest
    private static void uniswapV2GetPairsHistoricalTest() {
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
        List<OASUniswapV2PairDTO> response;
        List<OASUniswapV2PairDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2PairDTO>{OASUniswapV2PairDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairDTO>{OASUniswapV2PairDTO.getExample()};
        response = (List<OASUniswapV2PairDTO>) api.uniswapV2GetPairsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairDTO>{OASUniswapV2PairDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairDTO>{OASUniswapV2PairDTO.getExample()};
        response = (List<OASUniswapV2PairDTO>) api.uniswapV2GetPairsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairDTO>{OASUniswapV2PairDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairDTO>{OASUniswapV2PairDTO.getExample()};
        response = (List<OASUniswapV2PairDTO>) api.uniswapV2GetPairsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Swaps (historical)
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
            'id' => 'null',
            'pair' => 'null'
        };

        OASClient client;
        OASUniswapV2Api api;
        List<OASUniswapV2SwapDTO> response;
        List<OASUniswapV2SwapDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2SwapDTO>{OASUniswapV2SwapDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2SwapDTO>{OASUniswapV2SwapDTO.getExample()};
        response = (List<OASUniswapV2SwapDTO>) api.uniswapV2GetSwapsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2SwapDTO>{OASUniswapV2SwapDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2SwapDTO>{OASUniswapV2SwapDTO.getExample()};
        response = (List<OASUniswapV2SwapDTO>) api.uniswapV2GetSwapsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2SwapDTO>{OASUniswapV2SwapDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2SwapDTO>{OASUniswapV2SwapDTO.getExample()};
        response = (List<OASUniswapV2SwapDTO>) api.uniswapV2GetSwapsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * TokenDayDatas (historical)
     *
     * Gets tokenDayDatas.
     */
    @isTest
    private static void uniswapV2GetTokenDayDatasHistoricalTest() {
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
        List<OASUniswapV2TokenDayDataDTO> response;
        List<OASUniswapV2TokenDayDataDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2TokenDayDataDTO>{OASUniswapV2TokenDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenDayDataDTO>{OASUniswapV2TokenDayDataDTO.getExample()};
        response = (List<OASUniswapV2TokenDayDataDTO>) api.uniswapV2GetTokenDayDatasHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TokenDayDataDTO>{OASUniswapV2TokenDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenDayDataDTO>{OASUniswapV2TokenDayDataDTO.getExample()};
        response = (List<OASUniswapV2TokenDayDataDTO>) api.uniswapV2GetTokenDayDatasHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TokenDayDataDTO>{OASUniswapV2TokenDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenDayDataDTO>{OASUniswapV2TokenDayDataDTO.getExample()};
        response = (List<OASUniswapV2TokenDayDataDTO>) api.uniswapV2GetTokenDayDatasHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Tokens (historical)
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
            'id' => 'null',
            'symbol' => 'null',
            'name' => 'null'
        };

        OASClient client;
        OASUniswapV2Api api;
        List<OASUniswapV2TokenDTO> response;
        List<OASUniswapV2TokenDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2TokenDTO>{OASUniswapV2TokenDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenDTO>{OASUniswapV2TokenDTO.getExample()};
        response = (List<OASUniswapV2TokenDTO>) api.uniswapV2GetTokensHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TokenDTO>{OASUniswapV2TokenDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenDTO>{OASUniswapV2TokenDTO.getExample()};
        response = (List<OASUniswapV2TokenDTO>) api.uniswapV2GetTokensHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TokenDTO>{OASUniswapV2TokenDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenDTO>{OASUniswapV2TokenDTO.getExample()};
        response = (List<OASUniswapV2TokenDTO>) api.uniswapV2GetTokensHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Transactions (historical)
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
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'id' => 'null'
        };

        OASClient client;
        OASUniswapV2Api api;
        List<OASUniswapV2TransactionDTO> response;
        List<OASUniswapV2TransactionDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2TransactionDTO>{OASUniswapV2TransactionDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TransactionDTO>{OASUniswapV2TransactionDTO.getExample()};
        response = (List<OASUniswapV2TransactionDTO>) api.uniswapV2GetTransactionsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TransactionDTO>{OASUniswapV2TransactionDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TransactionDTO>{OASUniswapV2TransactionDTO.getExample()};
        response = (List<OASUniswapV2TransactionDTO>) api.uniswapV2GetTransactionsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TransactionDTO>{OASUniswapV2TransactionDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TransactionDTO>{OASUniswapV2TransactionDTO.getExample()};
        response = (List<OASUniswapV2TransactionDTO>) api.uniswapV2GetTransactionsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * UniswapDayDatas (historical)
     *
     * Gets uniswapDayDatas.
     */
    @isTest
    private static void uniswapV2GetUniswapDayDatasHistoricalTest() {
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
        List<OASUniswapV2UniswapDayDataDTO> response;
        List<OASUniswapV2UniswapDayDataDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2UniswapDayDataDTO>{OASUniswapV2UniswapDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UniswapDayDataDTO>{OASUniswapV2UniswapDayDataDTO.getExample()};
        response = (List<OASUniswapV2UniswapDayDataDTO>) api.uniswapV2GetUniswapDayDatasHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2UniswapDayDataDTO>{OASUniswapV2UniswapDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UniswapDayDataDTO>{OASUniswapV2UniswapDayDataDTO.getExample()};
        response = (List<OASUniswapV2UniswapDayDataDTO>) api.uniswapV2GetUniswapDayDatasHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2UniswapDayDataDTO>{OASUniswapV2UniswapDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UniswapDayDataDTO>{OASUniswapV2UniswapDayDataDTO.getExample()};
        response = (List<OASUniswapV2UniswapDayDataDTO>) api.uniswapV2GetUniswapDayDatasHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * UniswapFactorys (historical)
     *
     * Gets uniswapFactorys.
     */
    @isTest
    private static void uniswapV2GetUniswapFactorysHistoricalTest() {
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
        List<OASUniswapV2UniswapFactoryDTO> response;
        List<OASUniswapV2UniswapFactoryDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2UniswapFactoryDTO>{OASUniswapV2UniswapFactoryDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UniswapFactoryDTO>{OASUniswapV2UniswapFactoryDTO.getExample()};
        response = (List<OASUniswapV2UniswapFactoryDTO>) api.uniswapV2GetUniswapFactorysHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2UniswapFactoryDTO>{OASUniswapV2UniswapFactoryDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UniswapFactoryDTO>{OASUniswapV2UniswapFactoryDTO.getExample()};
        response = (List<OASUniswapV2UniswapFactoryDTO>) api.uniswapV2GetUniswapFactorysHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2UniswapFactoryDTO>{OASUniswapV2UniswapFactoryDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UniswapFactoryDTO>{OASUniswapV2UniswapFactoryDTO.getExample()};
        response = (List<OASUniswapV2UniswapFactoryDTO>) api.uniswapV2GetUniswapFactorysHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Users (historical)
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
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'id' => 'null'
        };

        OASClient client;
        OASUniswapV2Api api;
        List<OASUniswapV2UserDTO> response;
        List<OASUniswapV2UserDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2UserDTO>{OASUniswapV2UserDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UserDTO>{OASUniswapV2UserDTO.getExample()};
        response = (List<OASUniswapV2UserDTO>) api.uniswapV2GetUsersHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2UserDTO>{OASUniswapV2UserDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UserDTO>{OASUniswapV2UserDTO.getExample()};
        response = (List<OASUniswapV2UserDTO>) api.uniswapV2GetUsersHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2UserDTO>{OASUniswapV2UserDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UserDTO>{OASUniswapV2UserDTO.getExample()};
        response = (List<OASUniswapV2UserDTO>) api.uniswapV2GetUsersHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * LiquidityPositionSnapshots (current)
     *
     * Gets liquidityPositionSnapshots.
     */
    @isTest
    private static void uniswapV2LiquidityPositionSnapshotsCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

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
        response = (List<OASUniswapV2LiquidityPositionSnapsho>) api.uniswapV2LiquidityPositionSnapshotsCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2LiquidityPositionSnapsho>{OASUniswapV2LiquidityPositionSnapsho.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2LiquidityPositionSnapsho>{OASUniswapV2LiquidityPositionSnapsho.getExample()};
        response = (List<OASUniswapV2LiquidityPositionSnapsho>) api.uniswapV2LiquidityPositionSnapshotsCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2LiquidityPositionSnapsho>{OASUniswapV2LiquidityPositionSnapsho.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2LiquidityPositionSnapsho>{OASUniswapV2LiquidityPositionSnapsho.getExample()};
        response = (List<OASUniswapV2LiquidityPositionSnapsho>) api.uniswapV2LiquidityPositionSnapshotsCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * LiquidityPositions (current)
     *
     * Gets liquidityPositions.
     */
    @isTest
    private static void uniswapV2LiquidityPositionsCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV2Api api;
        List<OASUniswapV2LiquidityPositionDTO> response;
        List<OASUniswapV2LiquidityPositionDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2LiquidityPositionDTO>{OASUniswapV2LiquidityPositionDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2LiquidityPositionDTO>{OASUniswapV2LiquidityPositionDTO.getExample()};
        response = (List<OASUniswapV2LiquidityPositionDTO>) api.uniswapV2LiquidityPositionsCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2LiquidityPositionDTO>{OASUniswapV2LiquidityPositionDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2LiquidityPositionDTO>{OASUniswapV2LiquidityPositionDTO.getExample()};
        response = (List<OASUniswapV2LiquidityPositionDTO>) api.uniswapV2LiquidityPositionsCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2LiquidityPositionDTO>{OASUniswapV2LiquidityPositionDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2LiquidityPositionDTO>{OASUniswapV2LiquidityPositionDTO.getExample()};
        response = (List<OASUniswapV2LiquidityPositionDTO>) api.uniswapV2LiquidityPositionsCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Mints (current)
     *
     * Gets mints.
     */
    @isTest
    private static void uniswapV2MintsCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV2Api api;
        List<OASUniswapV2MintDTO> response;
        List<OASUniswapV2MintDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2MintDTO>{OASUniswapV2MintDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2MintDTO>{OASUniswapV2MintDTO.getExample()};
        response = (List<OASUniswapV2MintDTO>) api.uniswapV2MintsCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2MintDTO>{OASUniswapV2MintDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2MintDTO>{OASUniswapV2MintDTO.getExample()};
        response = (List<OASUniswapV2MintDTO>) api.uniswapV2MintsCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2MintDTO>{OASUniswapV2MintDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2MintDTO>{OASUniswapV2MintDTO.getExample()};
        response = (List<OASUniswapV2MintDTO>) api.uniswapV2MintsCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PairDayDatas (current)
     *
     * Gets pairDayDatas.
     */
    @isTest
    private static void uniswapV2PairDayDatasCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV2Api api;
        List<OASUniswapV2PairDayDataDTO> response;
        List<OASUniswapV2PairDayDataDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2PairDayDataDTO>{OASUniswapV2PairDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairDayDataDTO>{OASUniswapV2PairDayDataDTO.getExample()};
        response = (List<OASUniswapV2PairDayDataDTO>) api.uniswapV2PairDayDatasCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairDayDataDTO>{OASUniswapV2PairDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairDayDataDTO>{OASUniswapV2PairDayDataDTO.getExample()};
        response = (List<OASUniswapV2PairDayDataDTO>) api.uniswapV2PairDayDatasCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairDayDataDTO>{OASUniswapV2PairDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairDayDataDTO>{OASUniswapV2PairDayDataDTO.getExample()};
        response = (List<OASUniswapV2PairDayDataDTO>) api.uniswapV2PairDayDatasCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PairHourDatas (current)
     *
     * Gets pairHourDatas.
     */
    @isTest
    private static void uniswapV2PairHourDatasCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV2Api api;
        List<OASUniswapV2PairHourDataDTO> response;
        List<OASUniswapV2PairHourDataDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2PairHourDataDTO>{OASUniswapV2PairHourDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairHourDataDTO>{OASUniswapV2PairHourDataDTO.getExample()};
        response = (List<OASUniswapV2PairHourDataDTO>) api.uniswapV2PairHourDatasCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairHourDataDTO>{OASUniswapV2PairHourDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairHourDataDTO>{OASUniswapV2PairHourDataDTO.getExample()};
        response = (List<OASUniswapV2PairHourDataDTO>) api.uniswapV2PairHourDatasCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairHourDataDTO>{OASUniswapV2PairHourDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairHourDataDTO>{OASUniswapV2PairHourDataDTO.getExample()};
        response = (List<OASUniswapV2PairHourDataDTO>) api.uniswapV2PairHourDatasCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Pairs (current)
     *
     * Gets pairs.
     */
    @isTest
    private static void uniswapV2PairsCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        OASClient client;
        OASUniswapV2Api api;
        List<OASUniswapV2PairDTO> response;
        List<OASUniswapV2PairDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2PairDTO>{OASUniswapV2PairDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairDTO>{OASUniswapV2PairDTO.getExample()};
        response = (List<OASUniswapV2PairDTO>) api.uniswapV2PairsCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairDTO>{OASUniswapV2PairDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairDTO>{OASUniswapV2PairDTO.getExample()};
        response = (List<OASUniswapV2PairDTO>) api.uniswapV2PairsCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairDTO>{OASUniswapV2PairDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairDTO>{OASUniswapV2PairDTO.getExample()};
        response = (List<OASUniswapV2PairDTO>) api.uniswapV2PairsCurrent(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Swaps (current)
     *
     * Gets swaps.
     */
    @isTest
    private static void uniswapV2SwapsCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'pair' => 'null'
        };

        OASClient client;
        OASUniswapV2Api api;
        List<OASUniswapV2SwapDTO> response;
        List<OASUniswapV2SwapDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2SwapDTO>{OASUniswapV2SwapDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2SwapDTO>{OASUniswapV2SwapDTO.getExample()};
        response = (List<OASUniswapV2SwapDTO>) api.uniswapV2SwapsCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2SwapDTO>{OASUniswapV2SwapDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2SwapDTO>{OASUniswapV2SwapDTO.getExample()};
        response = (List<OASUniswapV2SwapDTO>) api.uniswapV2SwapsCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2SwapDTO>{OASUniswapV2SwapDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2SwapDTO>{OASUniswapV2SwapDTO.getExample()};
        response = (List<OASUniswapV2SwapDTO>) api.uniswapV2SwapsCurrent(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * TokenDayDatas (current)
     *
     * Gets tokenDayDatas.
     */
    @isTest
    private static void uniswapV2TokenDayDatasCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV2Api api;
        List<OASUniswapV2TokenDayDataDTO> response;
        List<OASUniswapV2TokenDayDataDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2TokenDayDataDTO>{OASUniswapV2TokenDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenDayDataDTO>{OASUniswapV2TokenDayDataDTO.getExample()};
        response = (List<OASUniswapV2TokenDayDataDTO>) api.uniswapV2TokenDayDatasCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TokenDayDataDTO>{OASUniswapV2TokenDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenDayDataDTO>{OASUniswapV2TokenDayDataDTO.getExample()};
        response = (List<OASUniswapV2TokenDayDataDTO>) api.uniswapV2TokenDayDatasCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TokenDayDataDTO>{OASUniswapV2TokenDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenDayDataDTO>{OASUniswapV2TokenDayDataDTO.getExample()};
        response = (List<OASUniswapV2TokenDayDataDTO>) api.uniswapV2TokenDayDatasCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Tokens (current)
     *
     * Gets tokens.
     */
    @isTest
    private static void uniswapV2TokensCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV2Api api;
        List<OASUniswapV2TokenDTO> response;
        List<OASUniswapV2TokenDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2TokenDTO>{OASUniswapV2TokenDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenDTO>{OASUniswapV2TokenDTO.getExample()};
        response = (List<OASUniswapV2TokenDTO>) api.uniswapV2TokensCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TokenDTO>{OASUniswapV2TokenDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenDTO>{OASUniswapV2TokenDTO.getExample()};
        response = (List<OASUniswapV2TokenDTO>) api.uniswapV2TokensCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TokenDTO>{OASUniswapV2TokenDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenDTO>{OASUniswapV2TokenDTO.getExample()};
        response = (List<OASUniswapV2TokenDTO>) api.uniswapV2TokensCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Transactions (current)
     *
     * Gets transactions.
     */
    @isTest
    private static void uniswapV2TransactionsCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV2Api api;
        List<OASUniswapV2TransactionDTO> response;
        List<OASUniswapV2TransactionDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2TransactionDTO>{OASUniswapV2TransactionDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TransactionDTO>{OASUniswapV2TransactionDTO.getExample()};
        response = (List<OASUniswapV2TransactionDTO>) api.uniswapV2TransactionsCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TransactionDTO>{OASUniswapV2TransactionDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TransactionDTO>{OASUniswapV2TransactionDTO.getExample()};
        response = (List<OASUniswapV2TransactionDTO>) api.uniswapV2TransactionsCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TransactionDTO>{OASUniswapV2TransactionDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TransactionDTO>{OASUniswapV2TransactionDTO.getExample()};
        response = (List<OASUniswapV2TransactionDTO>) api.uniswapV2TransactionsCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * UniswapDayDatas (current)
     *
     * Gets uniswapDayDatas.
     */
    @isTest
    private static void uniswapV2UniswapDayDatasCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV2Api api;
        List<OASUniswapV2UniswapDayDataDTO> response;
        List<OASUniswapV2UniswapDayDataDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2UniswapDayDataDTO>{OASUniswapV2UniswapDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UniswapDayDataDTO>{OASUniswapV2UniswapDayDataDTO.getExample()};
        response = (List<OASUniswapV2UniswapDayDataDTO>) api.uniswapV2UniswapDayDatasCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2UniswapDayDataDTO>{OASUniswapV2UniswapDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UniswapDayDataDTO>{OASUniswapV2UniswapDayDataDTO.getExample()};
        response = (List<OASUniswapV2UniswapDayDataDTO>) api.uniswapV2UniswapDayDatasCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2UniswapDayDataDTO>{OASUniswapV2UniswapDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UniswapDayDataDTO>{OASUniswapV2UniswapDayDataDTO.getExample()};
        response = (List<OASUniswapV2UniswapDayDataDTO>) api.uniswapV2UniswapDayDatasCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * UniswapFactorys (current)
     *
     * Gets uniswapFactorys.
     */
    @isTest
    private static void uniswapV2UniswapFactorysCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV2Api api;
        List<OASUniswapV2UniswapFactoryDTO> response;
        List<OASUniswapV2UniswapFactoryDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2UniswapFactoryDTO>{OASUniswapV2UniswapFactoryDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UniswapFactoryDTO>{OASUniswapV2UniswapFactoryDTO.getExample()};
        response = (List<OASUniswapV2UniswapFactoryDTO>) api.uniswapV2UniswapFactorysCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2UniswapFactoryDTO>{OASUniswapV2UniswapFactoryDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UniswapFactoryDTO>{OASUniswapV2UniswapFactoryDTO.getExample()};
        response = (List<OASUniswapV2UniswapFactoryDTO>) api.uniswapV2UniswapFactorysCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2UniswapFactoryDTO>{OASUniswapV2UniswapFactoryDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UniswapFactoryDTO>{OASUniswapV2UniswapFactoryDTO.getExample()};
        response = (List<OASUniswapV2UniswapFactoryDTO>) api.uniswapV2UniswapFactorysCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Users (current)
     *
     * Gets users.
     */
    @isTest
    private static void uniswapV2UsersCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV2Api api;
        List<OASUniswapV2UserDTO> response;
        List<OASUniswapV2UserDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2UserDTO>{OASUniswapV2UserDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UserDTO>{OASUniswapV2UserDTO.getExample()};
        response = (List<OASUniswapV2UserDTO>) api.uniswapV2UsersCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2UserDTO>{OASUniswapV2UserDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UserDTO>{OASUniswapV2UserDTO.getExample()};
        response = (List<OASUniswapV2UserDTO>) api.uniswapV2UsersCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2UserDTO>{OASUniswapV2UserDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2UserDTO>{OASUniswapV2UserDTO.getExample()};
        response = (List<OASUniswapV2UserDTO>) api.uniswapV2UsersCurrent();
        System.assertEquals(expectedResponse, response);
    }
}