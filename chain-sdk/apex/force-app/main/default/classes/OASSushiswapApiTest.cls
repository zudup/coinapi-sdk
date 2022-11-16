@isTest
private class OASSushiswapApiTest {
    /**
     * Exchanges (current) 🔥
     *
     * Gets exchanges.
     */
    @isTest
    private static void curveGetExchangesCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASSushiswapApi api;
        List<OASCurveExchangeDTO> response;
        List<OASCurveExchangeDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASCurveExchangeDTO>{OASCurveExchangeDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveExchangeDTO>{OASCurveExchangeDTO.getExample()};
        response = (List<OASCurveExchangeDTO>) api.curveGetExchangesCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveExchangeDTO>{OASCurveExchangeDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveExchangeDTO>{OASCurveExchangeDTO.getExample()};
        response = (List<OASCurveExchangeDTO>) api.curveGetExchangesCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveExchangeDTO>{OASCurveExchangeDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveExchangeDTO>{OASCurveExchangeDTO.getExample()};
        response = (List<OASCurveExchangeDTO>) api.curveGetExchangesCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Trades (current) 🔥
     *
     * Gets trades.
     */
    @isTest
    private static void dexGetTradesCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASSushiswapApi api;
        List<OASDexTradeDTO> response;
        List<OASDexTradeDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASDexTradeDTO>{OASDexTradeDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDexTradeDTO>{OASDexTradeDTO.getExample()};
        response = (List<OASDexTradeDTO>) api.dexGetTradesCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASDexTradeDTO>{OASDexTradeDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASDexTradeDTO>{OASDexTradeDTO.getExample()};
        response = (List<OASDexTradeDTO>) api.dexGetTradesCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASDexTradeDTO>{OASDexTradeDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASDexTradeDTO>{OASDexTradeDTO.getExample()};
        response = (List<OASDexTradeDTO>) api.dexGetTradesCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Bundles (historical) 🔥
     *
     * Gets bundles.
     */
    @isTest
    private static void sushiswapGetBundlesHistoricalTest() {
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
        OASSushiswapApi api;
        List<OASSushiswapBundleDTO> response;
        List<OASSushiswapBundleDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapBundleDTO>{OASSushiswapBundleDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapBundleDTO>{OASSushiswapBundleDTO.getExample()};
        response = (List<OASSushiswapBundleDTO>) api.sushiswapGetBundlesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapBundleDTO>{OASSushiswapBundleDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapBundleDTO>{OASSushiswapBundleDTO.getExample()};
        response = (List<OASSushiswapBundleDTO>) api.sushiswapGetBundlesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapBundleDTO>{OASSushiswapBundleDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapBundleDTO>{OASSushiswapBundleDTO.getExample()};
        response = (List<OASSushiswapBundleDTO>) api.sushiswapGetBundlesHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Burns (historical) 🔥
     *
     * Gets burns.
     */
    @isTest
    private static void sushiswapGetBurnsHistoricalTest() {
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
        OASSushiswapApi api;
        List<OASSushiswapBurnDTO> response;
        List<OASSushiswapBurnDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapBurnDTO>{OASSushiswapBurnDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapBurnDTO>{OASSushiswapBurnDTO.getExample()};
        response = (List<OASSushiswapBurnDTO>) api.sushiswapGetBurnsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapBurnDTO>{OASSushiswapBurnDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapBurnDTO>{OASSushiswapBurnDTO.getExample()};
        response = (List<OASSushiswapBurnDTO>) api.sushiswapGetBurnsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapBurnDTO>{OASSushiswapBurnDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapBurnDTO>{OASSushiswapBurnDTO.getExample()};
        response = (List<OASSushiswapBurnDTO>) api.sushiswapGetBurnsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * DayDatas (historical) 🔥
     *
     * Gets daydatas.
     */
    @isTest
    private static void sushiswapGetDayDatasHistoricalTest() {
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
        OASSushiswapApi api;
        List<OASSushiswapDayDataDTO> response;
        List<OASSushiswapDayDataDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapDayDataDTO>{OASSushiswapDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapDayDataDTO>{OASSushiswapDayDataDTO.getExample()};
        response = (List<OASSushiswapDayDataDTO>) api.sushiswapGetDayDatasHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapDayDataDTO>{OASSushiswapDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapDayDataDTO>{OASSushiswapDayDataDTO.getExample()};
        response = (List<OASSushiswapDayDataDTO>) api.sushiswapGetDayDatasHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapDayDataDTO>{OASSushiswapDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapDayDataDTO>{OASSushiswapDayDataDTO.getExample()};
        response = (List<OASSushiswapDayDataDTO>) api.sushiswapGetDayDatasHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Factorys (historical) 🔥
     *
     * Gets factorys.
     */
    @isTest
    private static void sushiswapGetFactorysHistoricalTest() {
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
        OASSushiswapApi api;
        List<OASSushiswapFactoryDTO> response;
        List<OASSushiswapFactoryDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapFactoryDTO>{OASSushiswapFactoryDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapFactoryDTO>{OASSushiswapFactoryDTO.getExample()};
        response = (List<OASSushiswapFactoryDTO>) api.sushiswapGetFactorysHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapFactoryDTO>{OASSushiswapFactoryDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapFactoryDTO>{OASSushiswapFactoryDTO.getExample()};
        response = (List<OASSushiswapFactoryDTO>) api.sushiswapGetFactorysHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapFactoryDTO>{OASSushiswapFactoryDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapFactoryDTO>{OASSushiswapFactoryDTO.getExample()};
        response = (List<OASSushiswapFactoryDTO>) api.sushiswapGetFactorysHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * HourDatas (historical) 🔥
     *
     * Gets hourdatas.
     */
    @isTest
    private static void sushiswapGetHourDatasHistoricalTest() {
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
        OASSushiswapApi api;
        List<OASSushiswapHourDataDTO> response;
        List<OASSushiswapHourDataDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapHourDataDTO>{OASSushiswapHourDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapHourDataDTO>{OASSushiswapHourDataDTO.getExample()};
        response = (List<OASSushiswapHourDataDTO>) api.sushiswapGetHourDatasHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapHourDataDTO>{OASSushiswapHourDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapHourDataDTO>{OASSushiswapHourDataDTO.getExample()};
        response = (List<OASSushiswapHourDataDTO>) api.sushiswapGetHourDatasHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapHourDataDTO>{OASSushiswapHourDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapHourDataDTO>{OASSushiswapHourDataDTO.getExample()};
        response = (List<OASSushiswapHourDataDTO>) api.sushiswapGetHourDatasHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * LiquidityPositionSnapshots (historical) 🔥
     *
     * Gets liquiditypositionsnapshots.
     */
    @isTest
    private static void sushiswapGetLiquidityPositionSnapshotsHistoricalTest() {
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
        OASSushiswapApi api;
        List<OASSushiswapLiquidityPositionSnapsho> response;
        List<OASSushiswapLiquidityPositionSnapsho> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapLiquidityPositionSnapsho>{OASSushiswapLiquidityPositionSnapsho.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapLiquidityPositionSnapsho>{OASSushiswapLiquidityPositionSnapsho.getExample()};
        response = (List<OASSushiswapLiquidityPositionSnapsho>) api.sushiswapGetLiquidityPositionSnapshotsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapLiquidityPositionSnapsho>{OASSushiswapLiquidityPositionSnapsho.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapLiquidityPositionSnapsho>{OASSushiswapLiquidityPositionSnapsho.getExample()};
        response = (List<OASSushiswapLiquidityPositionSnapsho>) api.sushiswapGetLiquidityPositionSnapshotsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapLiquidityPositionSnapsho>{OASSushiswapLiquidityPositionSnapsho.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapLiquidityPositionSnapsho>{OASSushiswapLiquidityPositionSnapsho.getExample()};
        response = (List<OASSushiswapLiquidityPositionSnapsho>) api.sushiswapGetLiquidityPositionSnapshotsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * LiquidityPositions (historical) 🔥
     *
     * Gets liquiditypositions.
     */
    @isTest
    private static void sushiswapGetLiquidityPositionsHistoricalTest() {
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
        OASSushiswapApi api;
        List<OASSushiswapLiquidityPositionDTO> response;
        List<OASSushiswapLiquidityPositionDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapLiquidityPositionDTO>{OASSushiswapLiquidityPositionDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapLiquidityPositionDTO>{OASSushiswapLiquidityPositionDTO.getExample()};
        response = (List<OASSushiswapLiquidityPositionDTO>) api.sushiswapGetLiquidityPositionsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapLiquidityPositionDTO>{OASSushiswapLiquidityPositionDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapLiquidityPositionDTO>{OASSushiswapLiquidityPositionDTO.getExample()};
        response = (List<OASSushiswapLiquidityPositionDTO>) api.sushiswapGetLiquidityPositionsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapLiquidityPositionDTO>{OASSushiswapLiquidityPositionDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapLiquidityPositionDTO>{OASSushiswapLiquidityPositionDTO.getExample()};
        response = (List<OASSushiswapLiquidityPositionDTO>) api.sushiswapGetLiquidityPositionsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Mints (historical) 🔥
     *
     * Gets mints.
     */
    @isTest
    private static void sushiswapGetMintsHistoricalTest() {
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
        OASSushiswapApi api;
        List<OASSushiswapMintDTO> response;
        List<OASSushiswapMintDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapMintDTO>{OASSushiswapMintDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapMintDTO>{OASSushiswapMintDTO.getExample()};
        response = (List<OASSushiswapMintDTO>) api.sushiswapGetMintsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapMintDTO>{OASSushiswapMintDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapMintDTO>{OASSushiswapMintDTO.getExample()};
        response = (List<OASSushiswapMintDTO>) api.sushiswapGetMintsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapMintDTO>{OASSushiswapMintDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapMintDTO>{OASSushiswapMintDTO.getExample()};
        response = (List<OASSushiswapMintDTO>) api.sushiswapGetMintsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PairDayDatas (historical) 🔥
     *
     * Gets pairdaydatas.
     */
    @isTest
    private static void sushiswapGetPairDayDatasHistoricalTest() {
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
            'pair' => 'null',
            'token0' => 'null',
            'token1' => 'null'
        };

        OASClient client;
        OASSushiswapApi api;
        List<OASSushiswapPairDayDataDTO> response;
        List<OASSushiswapPairDayDataDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapPairDayDataDTO>{OASSushiswapPairDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapPairDayDataDTO>{OASSushiswapPairDayDataDTO.getExample()};
        response = (List<OASSushiswapPairDayDataDTO>) api.sushiswapGetPairDayDatasHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapPairDayDataDTO>{OASSushiswapPairDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapPairDayDataDTO>{OASSushiswapPairDayDataDTO.getExample()};
        response = (List<OASSushiswapPairDayDataDTO>) api.sushiswapGetPairDayDatasHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapPairDayDataDTO>{OASSushiswapPairDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapPairDayDataDTO>{OASSushiswapPairDayDataDTO.getExample()};
        response = (List<OASSushiswapPairDayDataDTO>) api.sushiswapGetPairDayDatasHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PairHourDatas (historical) 🔥
     *
     * Gets pairhourdatas.
     */
    @isTest
    private static void sushiswapGetPairHourDatasHistoricalTest() {
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
        OASSushiswapApi api;
        List<OASSushiswapPairHourDataDTO> response;
        List<OASSushiswapPairHourDataDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapPairHourDataDTO>{OASSushiswapPairHourDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapPairHourDataDTO>{OASSushiswapPairHourDataDTO.getExample()};
        response = (List<OASSushiswapPairHourDataDTO>) api.sushiswapGetPairHourDatasHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapPairHourDataDTO>{OASSushiswapPairHourDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapPairHourDataDTO>{OASSushiswapPairHourDataDTO.getExample()};
        response = (List<OASSushiswapPairHourDataDTO>) api.sushiswapGetPairHourDatasHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapPairHourDataDTO>{OASSushiswapPairHourDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapPairHourDataDTO>{OASSushiswapPairHourDataDTO.getExample()};
        response = (List<OASSushiswapPairHourDataDTO>) api.sushiswapGetPairHourDatasHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Pairs (historical) 🔥
     *
     * Gets pairs.
     */
    @isTest
    private static void sushiswapGetPairsHistoricalTest() {
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
            'name' => 'null',
            'token0' => 'null',
            'token1' => 'null'
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
        response = (List<OASSushiswapPairDTO>) api.sushiswapGetPairsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapPairDTO>{OASSushiswapPairDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapPairDTO>{OASSushiswapPairDTO.getExample()};
        response = (List<OASSushiswapPairDTO>) api.sushiswapGetPairsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapPairDTO>{OASSushiswapPairDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapPairDTO>{OASSushiswapPairDTO.getExample()};
        response = (List<OASSushiswapPairDTO>) api.sushiswapGetPairsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Pools (current) 🔥
     *
     * Gets pools.
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
     * Swaps (current) 🔥
     *
     * Gets swaps.
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
     * Swaps (historical) 🔥
     *
     * Gets swaps.
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
            'id' => 'null',
            'pair' => 'null'
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
     * TokenDayDatas (historical) 🔥
     *
     * Gets tokendaydatas.
     */
    @isTest
    private static void sushiswapGetTokenDayDatasHistoricalTest() {
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
        OASSushiswapApi api;
        List<OASSushiswapTokenDayDataDTO> response;
        List<OASSushiswapTokenDayDataDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapTokenDayDataDTO>{OASSushiswapTokenDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapTokenDayDataDTO>{OASSushiswapTokenDayDataDTO.getExample()};
        response = (List<OASSushiswapTokenDayDataDTO>) api.sushiswapGetTokenDayDatasHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapTokenDayDataDTO>{OASSushiswapTokenDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapTokenDayDataDTO>{OASSushiswapTokenDayDataDTO.getExample()};
        response = (List<OASSushiswapTokenDayDataDTO>) api.sushiswapGetTokenDayDatasHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapTokenDayDataDTO>{OASSushiswapTokenDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapTokenDayDataDTO>{OASSushiswapTokenDayDataDTO.getExample()};
        response = (List<OASSushiswapTokenDayDataDTO>) api.sushiswapGetTokenDayDatasHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Tokens (current) 🔥
     *
     * Gets tokens.
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
     * Tokens (historical) 🔥
     *
     * Gets tokens.
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
            'id' => 'null',
            'symbol' => 'null',
            'name' => 'null'
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

    /**
     * Transactions (historical) 🔥
     *
     * Gets transactions.
     */
    @isTest
    private static void sushiswapGetTransactionsHistoricalTest() {
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
        OASSushiswapApi api;
        List<OASSushiswapTransactionDTO> response;
        List<OASSushiswapTransactionDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapTransactionDTO>{OASSushiswapTransactionDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapTransactionDTO>{OASSushiswapTransactionDTO.getExample()};
        response = (List<OASSushiswapTransactionDTO>) api.sushiswapGetTransactionsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapTransactionDTO>{OASSushiswapTransactionDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapTransactionDTO>{OASSushiswapTransactionDTO.getExample()};
        response = (List<OASSushiswapTransactionDTO>) api.sushiswapGetTransactionsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapTransactionDTO>{OASSushiswapTransactionDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapTransactionDTO>{OASSushiswapTransactionDTO.getExample()};
        response = (List<OASSushiswapTransactionDTO>) api.sushiswapGetTransactionsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Users (historical) 🔥
     *
     * Gets users.
     */
    @isTest
    private static void sushiswapGetUsersHistoricalTest() {
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
        OASSushiswapApi api;
        List<OASSushiswapUserDTO> response;
        List<OASSushiswapUserDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapUserDTO>{OASSushiswapUserDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapUserDTO>{OASSushiswapUserDTO.getExample()};
        response = (List<OASSushiswapUserDTO>) api.sushiswapGetUsersHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapUserDTO>{OASSushiswapUserDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapUserDTO>{OASSushiswapUserDTO.getExample()};
        response = (List<OASSushiswapUserDTO>) api.sushiswapGetUsersHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapUserDTO>{OASSushiswapUserDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapUserDTO>{OASSushiswapUserDTO.getExample()};
        response = (List<OASSushiswapUserDTO>) api.sushiswapGetUsersHistorical(params);
        System.assertEquals(expectedResponse, response);
    }
}