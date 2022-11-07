@isTest
private class OASSushiswapApiTest {
    /**
     * GetBundles (historical)
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
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3)
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
     * GetBurns (historical)
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
            'poolId' => 'null'
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
     * GetDayData (historical)
     *
     * Gets day data.
     */
    @isTest
    private static void sushiswapGetDayDataHistoricalTest() {
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
        List<OASSushiswapDayDataDTO> response;
        List<OASSushiswapDayDataDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapDayDataDTO>{OASSushiswapDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapDayDataDTO>{OASSushiswapDayDataDTO.getExample()};
        response = (List<OASSushiswapDayDataDTO>) api.sushiswapGetDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapDayDataDTO>{OASSushiswapDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapDayDataDTO>{OASSushiswapDayDataDTO.getExample()};
        response = (List<OASSushiswapDayDataDTO>) api.sushiswapGetDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapDayDataDTO>{OASSushiswapDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapDayDataDTO>{OASSushiswapDayDataDTO.getExample()};
        response = (List<OASSushiswapDayDataDTO>) api.sushiswapGetDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetFactory (historical)
     *
     * Gets factory.
     */
    @isTest
    private static void sushiswapGetFactoryHistoricalTest() {
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
        List<OASSushiswapFactoryDTO> response;
        List<OASSushiswapFactoryDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapFactoryDTO>{OASSushiswapFactoryDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapFactoryDTO>{OASSushiswapFactoryDTO.getExample()};
        response = (List<OASSushiswapFactoryDTO>) api.sushiswapGetFactoryHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapFactoryDTO>{OASSushiswapFactoryDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapFactoryDTO>{OASSushiswapFactoryDTO.getExample()};
        response = (List<OASSushiswapFactoryDTO>) api.sushiswapGetFactoryHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapFactoryDTO>{OASSushiswapFactoryDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapFactoryDTO>{OASSushiswapFactoryDTO.getExample()};
        response = (List<OASSushiswapFactoryDTO>) api.sushiswapGetFactoryHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetHourData (historical)
     *
     * Gets hour data.
     */
    @isTest
    private static void sushiswapGetHourDataHistoricalTest() {
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
        List<OASSushiswapHourDataDTO> response;
        List<OASSushiswapHourDataDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapHourDataDTO>{OASSushiswapHourDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapHourDataDTO>{OASSushiswapHourDataDTO.getExample()};
        response = (List<OASSushiswapHourDataDTO>) api.sushiswapGetHourDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapHourDataDTO>{OASSushiswapHourDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapHourDataDTO>{OASSushiswapHourDataDTO.getExample()};
        response = (List<OASSushiswapHourDataDTO>) api.sushiswapGetHourDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapHourDataDTO>{OASSushiswapHourDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapHourDataDTO>{OASSushiswapHourDataDTO.getExample()};
        response = (List<OASSushiswapHourDataDTO>) api.sushiswapGetHourDataHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetLiquidityPosition (historical)
     *
     * Gets liquidity position.
     */
    @isTest
    private static void sushiswapGetLiquidityPositionHistoricalTest() {
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
        List<OASSushiswapLiquidityPositionDTO> response;
        List<OASSushiswapLiquidityPositionDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapLiquidityPositionDTO>{OASSushiswapLiquidityPositionDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapLiquidityPositionDTO>{OASSushiswapLiquidityPositionDTO.getExample()};
        response = (List<OASSushiswapLiquidityPositionDTO>) api.sushiswapGetLiquidityPositionHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapLiquidityPositionDTO>{OASSushiswapLiquidityPositionDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapLiquidityPositionDTO>{OASSushiswapLiquidityPositionDTO.getExample()};
        response = (List<OASSushiswapLiquidityPositionDTO>) api.sushiswapGetLiquidityPositionHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapLiquidityPositionDTO>{OASSushiswapLiquidityPositionDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapLiquidityPositionDTO>{OASSushiswapLiquidityPositionDTO.getExample()};
        response = (List<OASSushiswapLiquidityPositionDTO>) api.sushiswapGetLiquidityPositionHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetLiquidityPositionSnapshot (historical)
     *
     * Gets liquidity position snapshot.
     */
    @isTest
    private static void sushiswapGetLiquidityPositionSnapshotHistoricalTest() {
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
        List<OASSushiswapLiquidityPositionSnapsho> response;
        List<OASSushiswapLiquidityPositionSnapsho> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapLiquidityPositionSnapsho>{OASSushiswapLiquidityPositionSnapsho.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapLiquidityPositionSnapsho>{OASSushiswapLiquidityPositionSnapsho.getExample()};
        response = (List<OASSushiswapLiquidityPositionSnapsho>) api.sushiswapGetLiquidityPositionSnapshotHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapLiquidityPositionSnapsho>{OASSushiswapLiquidityPositionSnapsho.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapLiquidityPositionSnapsho>{OASSushiswapLiquidityPositionSnapsho.getExample()};
        response = (List<OASSushiswapLiquidityPositionSnapsho>) api.sushiswapGetLiquidityPositionSnapshotHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapLiquidityPositionSnapsho>{OASSushiswapLiquidityPositionSnapsho.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapLiquidityPositionSnapsho>{OASSushiswapLiquidityPositionSnapsho.getExample()};
        response = (List<OASSushiswapLiquidityPositionSnapsho>) api.sushiswapGetLiquidityPositionSnapshotHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetMints (historical)
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
            'poolId' => 'null'
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
     * GetPools (current)
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
     * GetPoolsDayData (historical)
     *
     * Gets pools day data.
     */
    @isTest
    private static void sushiswapGetPoolsDayDataHistoricalTest() {
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
        List<OASSushiswapPairDayDataDTO> response;
        List<OASSushiswapPairDayDataDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapPairDayDataDTO>{OASSushiswapPairDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapPairDayDataDTO>{OASSushiswapPairDayDataDTO.getExample()};
        response = (List<OASSushiswapPairDayDataDTO>) api.sushiswapGetPoolsDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapPairDayDataDTO>{OASSushiswapPairDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapPairDayDataDTO>{OASSushiswapPairDayDataDTO.getExample()};
        response = (List<OASSushiswapPairDayDataDTO>) api.sushiswapGetPoolsDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapPairDayDataDTO>{OASSushiswapPairDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapPairDayDataDTO>{OASSushiswapPairDayDataDTO.getExample()};
        response = (List<OASSushiswapPairDayDataDTO>) api.sushiswapGetPoolsDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetPools (historical)
     *
     * Gets list of pools for given filters.
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
     * GetPoolsHourData (historical)
     *
     * Gets pools tracked each our.
     */
    @isTest
    private static void sushiswapGetPoolsHourDataHistoricalTest() {
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
        List<OASSushiswapPairHourDataDTO> response;
        List<OASSushiswapPairHourDataDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapPairHourDataDTO>{OASSushiswapPairHourDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapPairHourDataDTO>{OASSushiswapPairHourDataDTO.getExample()};
        response = (List<OASSushiswapPairHourDataDTO>) api.sushiswapGetPoolsHourDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapPairHourDataDTO>{OASSushiswapPairHourDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapPairHourDataDTO>{OASSushiswapPairHourDataDTO.getExample()};
        response = (List<OASSushiswapPairHourDataDTO>) api.sushiswapGetPoolsHourDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapPairHourDataDTO>{OASSushiswapPairHourDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapPairHourDataDTO>{OASSushiswapPairHourDataDTO.getExample()};
        response = (List<OASSushiswapPairHourDataDTO>) api.sushiswapGetPoolsHourDataHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetSwaps (current)
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
     * GetSwaps (historical)
     *
     * Gets list of swaps for given filters.
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
     * GetTokens (current)
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
     * GetTokensDayData (historical)
     *
     * Gets tokens day data.
     */
    @isTest
    private static void sushiswapGetTokensDayDataHistoricalTest() {
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
        List<OASSushiswapTokenDayDataDTO> response;
        List<OASSushiswapTokenDayDataDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapTokenDayDataDTO>{OASSushiswapTokenDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapTokenDayDataDTO>{OASSushiswapTokenDayDataDTO.getExample()};
        response = (List<OASSushiswapTokenDayDataDTO>) api.sushiswapGetTokensDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapTokenDayDataDTO>{OASSushiswapTokenDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapTokenDayDataDTO>{OASSushiswapTokenDayDataDTO.getExample()};
        response = (List<OASSushiswapTokenDayDataDTO>) api.sushiswapGetTokensDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapTokenDayDataDTO>{OASSushiswapTokenDayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapTokenDayDataDTO>{OASSushiswapTokenDayDataDTO.getExample()};
        response = (List<OASSushiswapTokenDayDataDTO>) api.sushiswapGetTokensDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetTokens (historical)
     *
     * Gets list of tokens for given filters.
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

    /**
     * GetTransactions (historical)
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
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3)
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
     * GetUsers (historical)
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
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3)
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