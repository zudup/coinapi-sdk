@isTest
private class OASUniswapV3ApiTest {
    /**
     * BundleV3s (historical) 🔥
     *
     * Gets bundlev3s.
     */
    @isTest
    private static void uniswapV3GetBundleV3sHistoricalTest() {
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
        OASUniswapV3Api api;
        List<OASUniswapV3BundleV3DTO> response;
        List<OASUniswapV3BundleV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3BundleV3DTO>{OASUniswapV3BundleV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BundleV3DTO>{OASUniswapV3BundleV3DTO.getExample()};
        response = (List<OASUniswapV3BundleV3DTO>) api.uniswapV3GetBundleV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3BundleV3DTO>{OASUniswapV3BundleV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BundleV3DTO>{OASUniswapV3BundleV3DTO.getExample()};
        response = (List<OASUniswapV3BundleV3DTO>) api.uniswapV3GetBundleV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3BundleV3DTO>{OASUniswapV3BundleV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BundleV3DTO>{OASUniswapV3BundleV3DTO.getExample()};
        response = (List<OASUniswapV3BundleV3DTO>) api.uniswapV3GetBundleV3sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Bundles (current)
     *
     * Gets bundles.
     */
    @isTest
    private static void uniswapV3GetBundlesCurrentTest() {
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
        response = (List<OASUniswapV3BundleV3DTO>) api.uniswapV3GetBundlesCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3BundleV3DTO>{OASUniswapV3BundleV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BundleV3DTO>{OASUniswapV3BundleV3DTO.getExample()};
        response = (List<OASUniswapV3BundleV3DTO>) api.uniswapV3GetBundlesCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3BundleV3DTO>{OASUniswapV3BundleV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BundleV3DTO>{OASUniswapV3BundleV3DTO.getExample()};
        response = (List<OASUniswapV3BundleV3DTO>) api.uniswapV3GetBundlesCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * BurnV3s (historical) 🔥
     *
     * Gets burnv3s.
     */
    @isTest
    private static void uniswapV3GetBurnV3sHistoricalTest() {
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
            'pool' => 'null',
            'token0' => 'null',
            'token1' => 'null'
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
        response = (List<OASUniswapV3BurnV3DTO>) api.uniswapV3GetBurnV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3BurnV3DTO>{OASUniswapV3BurnV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BurnV3DTO>{OASUniswapV3BurnV3DTO.getExample()};
        response = (List<OASUniswapV3BurnV3DTO>) api.uniswapV3GetBurnV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3BurnV3DTO>{OASUniswapV3BurnV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BurnV3DTO>{OASUniswapV3BurnV3DTO.getExample()};
        response = (List<OASUniswapV3BurnV3DTO>) api.uniswapV3GetBurnV3sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Burns (current)
     *
     * Gets burns.
     */
    @isTest
    private static void uniswapV3GetBurnsCurrentTest() {
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
        response = (List<OASUniswapV3BurnV3DTO>) api.uniswapV3GetBurnsCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3BurnV3DTO>{OASUniswapV3BurnV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BurnV3DTO>{OASUniswapV3BurnV3DTO.getExample()};
        response = (List<OASUniswapV3BurnV3DTO>) api.uniswapV3GetBurnsCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3BurnV3DTO>{OASUniswapV3BurnV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BurnV3DTO>{OASUniswapV3BurnV3DTO.getExample()};
        response = (List<OASUniswapV3BurnV3DTO>) api.uniswapV3GetBurnsCurrent(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * DayData (current)
     *
     * Gets uniswapv3 day data.
     */
    @isTest
    private static void uniswapV3GetDayDataCurrentTest() {
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
        response = (List<OASUniswapV3UniswapDayDataV3DTO>) api.uniswapV3GetDayDataCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3UniswapDayDataV3DTO>{OASUniswapV3UniswapDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3UniswapDayDataV3DTO>{OASUniswapV3UniswapDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3UniswapDayDataV3DTO>) api.uniswapV3GetDayDataCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3UniswapDayDataV3DTO>{OASUniswapV3UniswapDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3UniswapDayDataV3DTO>{OASUniswapV3UniswapDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3UniswapDayDataV3DTO>) api.uniswapV3GetDayDataCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Factory (current)
     *
     * Gets factory.
     */
    @isTest
    private static void uniswapV3GetFactoryCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

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
        response = (List<OASUniswapV3FactoryV3DTO>) api.uniswapV3GetFactoryCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3FactoryV3DTO>{OASUniswapV3FactoryV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3FactoryV3DTO>{OASUniswapV3FactoryV3DTO.getExample()};
        response = (List<OASUniswapV3FactoryV3DTO>) api.uniswapV3GetFactoryCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3FactoryV3DTO>{OASUniswapV3FactoryV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3FactoryV3DTO>{OASUniswapV3FactoryV3DTO.getExample()};
        response = (List<OASUniswapV3FactoryV3DTO>) api.uniswapV3GetFactoryCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * FactoryV3s (historical) 🔥
     *
     * Gets factoryv3s.
     */
    @isTest
    private static void uniswapV3GetFactoryV3sHistoricalTest() {
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
        OASUniswapV3Api api;
        List<OASUniswapV3FactoryV3DTO> response;
        List<OASUniswapV3FactoryV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3FactoryV3DTO>{OASUniswapV3FactoryV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3FactoryV3DTO>{OASUniswapV3FactoryV3DTO.getExample()};
        response = (List<OASUniswapV3FactoryV3DTO>) api.uniswapV3GetFactoryV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3FactoryV3DTO>{OASUniswapV3FactoryV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3FactoryV3DTO>{OASUniswapV3FactoryV3DTO.getExample()};
        response = (List<OASUniswapV3FactoryV3DTO>) api.uniswapV3GetFactoryV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3FactoryV3DTO>{OASUniswapV3FactoryV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3FactoryV3DTO>{OASUniswapV3FactoryV3DTO.getExample()};
        response = (List<OASUniswapV3FactoryV3DTO>) api.uniswapV3GetFactoryV3sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * MintV3s (historical) 🔥
     *
     * Gets mintv3s.
     */
    @isTest
    private static void uniswapV3GetMintV3sHistoricalTest() {
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
            'pool' => 'null',
            'token0' => 'null',
            'token1' => 'null'
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
        response = (List<OASUniswapV3MintV3DTO>) api.uniswapV3GetMintV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3MintV3DTO>{OASUniswapV3MintV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3MintV3DTO>{OASUniswapV3MintV3DTO.getExample()};
        response = (List<OASUniswapV3MintV3DTO>) api.uniswapV3GetMintV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3MintV3DTO>{OASUniswapV3MintV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3MintV3DTO>{OASUniswapV3MintV3DTO.getExample()};
        response = (List<OASUniswapV3MintV3DTO>) api.uniswapV3GetMintV3sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Mints (current)
     *
     * Gets mints.
     */
    @isTest
    private static void uniswapV3GetMintsCurrentTest() {
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
        response = (List<OASUniswapV3MintV3DTO>) api.uniswapV3GetMintsCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3MintV3DTO>{OASUniswapV3MintV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3MintV3DTO>{OASUniswapV3MintV3DTO.getExample()};
        response = (List<OASUniswapV3MintV3DTO>) api.uniswapV3GetMintsCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3MintV3DTO>{OASUniswapV3MintV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3MintV3DTO>{OASUniswapV3MintV3DTO.getExample()};
        response = (List<OASUniswapV3MintV3DTO>) api.uniswapV3GetMintsCurrent(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PoolDayDataV3s (historical) 🔥
     *
     * Gets pooldaydatav3s.
     */
    @isTest
    private static void uniswapV3GetPoolDayDataV3sHistoricalTest() {
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
            'pool' => 'null'
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
        response = (List<OASUniswapV3PoolDayDataV3DTO>) api.uniswapV3GetPoolDayDataV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolDayDataV3DTO>{OASUniswapV3PoolDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolDayDataV3DTO>{OASUniswapV3PoolDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3PoolDayDataV3DTO>) api.uniswapV3GetPoolDayDataV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolDayDataV3DTO>{OASUniswapV3PoolDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolDayDataV3DTO>{OASUniswapV3PoolDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3PoolDayDataV3DTO>) api.uniswapV3GetPoolDayDataV3sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PoolHourDataV3s (historical) 🔥
     *
     * Gets poolhourdatav3s.
     */
    @isTest
    private static void uniswapV3GetPoolHourDataV3sHistoricalTest() {
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
            'pool' => 'null'
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
        response = (List<OASUniswapV3PoolHourDataV3DTO>) api.uniswapV3GetPoolHourDataV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolHourDataV3DTO>{OASUniswapV3PoolHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolHourDataV3DTO>{OASUniswapV3PoolHourDataV3DTO.getExample()};
        response = (List<OASUniswapV3PoolHourDataV3DTO>) api.uniswapV3GetPoolHourDataV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolHourDataV3DTO>{OASUniswapV3PoolHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolHourDataV3DTO>{OASUniswapV3PoolHourDataV3DTO.getExample()};
        response = (List<OASUniswapV3PoolHourDataV3DTO>) api.uniswapV3GetPoolHourDataV3sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PoolV3s (historical) 🔥
     *
     * Gets poolv3s.
     */
    @isTest
    private static void uniswapV3GetPoolV3sHistoricalTest() {
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
        OASUniswapV3Api api;
        List<OASUniswapV3PoolV3DTO> response;
        List<OASUniswapV3PoolV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3PoolV3DTO>{OASUniswapV3PoolV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolV3DTO>{OASUniswapV3PoolV3DTO.getExample()};
        response = (List<OASUniswapV3PoolV3DTO>) api.uniswapV3GetPoolV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolV3DTO>{OASUniswapV3PoolV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolV3DTO>{OASUniswapV3PoolV3DTO.getExample()};
        response = (List<OASUniswapV3PoolV3DTO>) api.uniswapV3GetPoolV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolV3DTO>{OASUniswapV3PoolV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolV3DTO>{OASUniswapV3PoolV3DTO.getExample()};
        response = (List<OASUniswapV3PoolV3DTO>) api.uniswapV3GetPoolV3sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Pools (current) 🔥
     *
     * Gets pools.
     */
    @isTest
    private static void uniswapV3GetPoolsCurrentTest() {
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
        response = (List<OASUniswapV3PoolV3DTO>) api.uniswapV3GetPoolsCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolV3DTO>{OASUniswapV3PoolV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolV3DTO>{OASUniswapV3PoolV3DTO.getExample()};
        response = (List<OASUniswapV3PoolV3DTO>) api.uniswapV3GetPoolsCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolV3DTO>{OASUniswapV3PoolV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolV3DTO>{OASUniswapV3PoolV3DTO.getExample()};
        response = (List<OASUniswapV3PoolV3DTO>) api.uniswapV3GetPoolsCurrent(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PoolsDayData (current)
     *
     * Gets pools day data.
     */
    @isTest
    private static void uniswapV3GetPoolsDayDataCurrentTest() {
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
        response = (List<OASUniswapV3PoolDayDataV3DTO>) api.uniswapV3GetPoolsDayDataCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolDayDataV3DTO>{OASUniswapV3PoolDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolDayDataV3DTO>{OASUniswapV3PoolDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3PoolDayDataV3DTO>) api.uniswapV3GetPoolsDayDataCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolDayDataV3DTO>{OASUniswapV3PoolDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolDayDataV3DTO>{OASUniswapV3PoolDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3PoolDayDataV3DTO>) api.uniswapV3GetPoolsDayDataCurrent(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PoolsHourData (current)
     *
     * Gets pools hour data.
     */
    @isTest
    private static void uniswapV3GetPoolsHourDataCurrentTest() {
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
        response = (List<OASUniswapV3PoolHourDataV3DTO>) api.uniswapV3GetPoolsHourDataCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolHourDataV3DTO>{OASUniswapV3PoolHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolHourDataV3DTO>{OASUniswapV3PoolHourDataV3DTO.getExample()};
        response = (List<OASUniswapV3PoolHourDataV3DTO>) api.uniswapV3GetPoolsHourDataCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolHourDataV3DTO>{OASUniswapV3PoolHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolHourDataV3DTO>{OASUniswapV3PoolHourDataV3DTO.getExample()};
        response = (List<OASUniswapV3PoolHourDataV3DTO>) api.uniswapV3GetPoolsHourDataCurrent(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PositionSnapshotV3s (historical) 🔥
     *
     * Gets positionsnapshotv3s.
     */
    @isTest
    private static void uniswapV3GetPositionSnapshotV3sHistoricalTest() {
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
            'pool' => 'null'
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
        response = (List<OASUniswapV3PositionSnapshotV3DTO>) api.uniswapV3GetPositionSnapshotV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PositionSnapshotV3DTO>{OASUniswapV3PositionSnapshotV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionSnapshotV3DTO>{OASUniswapV3PositionSnapshotV3DTO.getExample()};
        response = (List<OASUniswapV3PositionSnapshotV3DTO>) api.uniswapV3GetPositionSnapshotV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PositionSnapshotV3DTO>{OASUniswapV3PositionSnapshotV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionSnapshotV3DTO>{OASUniswapV3PositionSnapshotV3DTO.getExample()};
        response = (List<OASUniswapV3PositionSnapshotV3DTO>) api.uniswapV3GetPositionSnapshotV3sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PositionV3s (historical) 🔥
     *
     * Gets positionv3s.
     */
    @isTest
    private static void uniswapV3GetPositionV3sHistoricalTest() {
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
            'pool' => 'null',
            'token0' => 'null',
            'token1' => 'null'
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
        response = (List<OASUniswapV3PositionV3DTO>) api.uniswapV3GetPositionV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PositionV3DTO>{OASUniswapV3PositionV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionV3DTO>{OASUniswapV3PositionV3DTO.getExample()};
        response = (List<OASUniswapV3PositionV3DTO>) api.uniswapV3GetPositionV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PositionV3DTO>{OASUniswapV3PositionV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionV3DTO>{OASUniswapV3PositionV3DTO.getExample()};
        response = (List<OASUniswapV3PositionV3DTO>) api.uniswapV3GetPositionV3sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Positions (current)
     *
     * Gets positions.
     */
    @isTest
    private static void uniswapV3GetPositionsCurrentTest() {
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
        response = (List<OASUniswapV3PositionV3DTO>) api.uniswapV3GetPositionsCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PositionV3DTO>{OASUniswapV3PositionV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionV3DTO>{OASUniswapV3PositionV3DTO.getExample()};
        response = (List<OASUniswapV3PositionV3DTO>) api.uniswapV3GetPositionsCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PositionV3DTO>{OASUniswapV3PositionV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionV3DTO>{OASUniswapV3PositionV3DTO.getExample()};
        response = (List<OASUniswapV3PositionV3DTO>) api.uniswapV3GetPositionsCurrent(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PositionsSnapshots (current)
     *
     * Gets positions snapshots.
     */
    @isTest
    private static void uniswapV3GetPositionsSnapshotsCurrentTest() {
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
        response = (List<OASUniswapV3PositionSnapshotV3DTO>) api.uniswapV3GetPositionsSnapshotsCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PositionSnapshotV3DTO>{OASUniswapV3PositionSnapshotV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionSnapshotV3DTO>{OASUniswapV3PositionSnapshotV3DTO.getExample()};
        response = (List<OASUniswapV3PositionSnapshotV3DTO>) api.uniswapV3GetPositionsSnapshotsCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PositionSnapshotV3DTO>{OASUniswapV3PositionSnapshotV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionSnapshotV3DTO>{OASUniswapV3PositionSnapshotV3DTO.getExample()};
        response = (List<OASUniswapV3PositionSnapshotV3DTO>) api.uniswapV3GetPositionsSnapshotsCurrent(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * SwapV3s (historical) 🔥
     *
     * Gets swapv3s.
     */
    @isTest
    private static void uniswapV3GetSwapV3sHistoricalTest() {
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
            'pool' => 'null',
            'token0' => 'null',
            'token1' => 'null'
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
        response = (List<OASUniswapV3SwapV3DTO>) api.uniswapV3GetSwapV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3SwapV3DTO>{OASUniswapV3SwapV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3SwapV3DTO>{OASUniswapV3SwapV3DTO.getExample()};
        response = (List<OASUniswapV3SwapV3DTO>) api.uniswapV3GetSwapV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3SwapV3DTO>{OASUniswapV3SwapV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3SwapV3DTO>{OASUniswapV3SwapV3DTO.getExample()};
        response = (List<OASUniswapV3SwapV3DTO>) api.uniswapV3GetSwapV3sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Swaps (current) 🔥
     *
     * Gets swaps.
     */
    @isTest
    private static void uniswapV3GetSwapsCurrentTest() {
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
        response = (List<OASUniswapV3SwapV3DTO>) api.uniswapV3GetSwapsCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3SwapV3DTO>{OASUniswapV3SwapV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3SwapV3DTO>{OASUniswapV3SwapV3DTO.getExample()};
        response = (List<OASUniswapV3SwapV3DTO>) api.uniswapV3GetSwapsCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3SwapV3DTO>{OASUniswapV3SwapV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3SwapV3DTO>{OASUniswapV3SwapV3DTO.getExample()};
        response = (List<OASUniswapV3SwapV3DTO>) api.uniswapV3GetSwapsCurrent(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * TickDayDataV3s (historical) 🔥
     *
     * Gets tickdaydatav3s.
     */
    @isTest
    private static void uniswapV3GetTickDayDataV3sHistoricalTest() {
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
            'pool' => 'null'
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
        response = (List<OASUniswapV3TickDayDataV3DTO>) api.uniswapV3GetTickDayDataV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TickDayDataV3DTO>{OASUniswapV3TickDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickDayDataV3DTO>{OASUniswapV3TickDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3TickDayDataV3DTO>) api.uniswapV3GetTickDayDataV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TickDayDataV3DTO>{OASUniswapV3TickDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickDayDataV3DTO>{OASUniswapV3TickDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3TickDayDataV3DTO>) api.uniswapV3GetTickDayDataV3sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * TickV3s (historical) 🔥
     *
     * Gets tickv3s.
     */
    @isTest
    private static void uniswapV3GetTickV3sHistoricalTest() {
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
            'pool' => 'null'
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
        response = (List<OASUniswapV3TickV3DTO>) api.uniswapV3GetTickV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TickV3DTO>{OASUniswapV3TickV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickV3DTO>{OASUniswapV3TickV3DTO.getExample()};
        response = (List<OASUniswapV3TickV3DTO>) api.uniswapV3GetTickV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TickV3DTO>{OASUniswapV3TickV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickV3DTO>{OASUniswapV3TickV3DTO.getExample()};
        response = (List<OASUniswapV3TickV3DTO>) api.uniswapV3GetTickV3sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Ticks (current)
     *
     * Gets ticks.
     */
    @isTest
    private static void uniswapV3GetTicksCurrentTest() {
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
        response = (List<OASUniswapV3TickV3DTO>) api.uniswapV3GetTicksCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TickV3DTO>{OASUniswapV3TickV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickV3DTO>{OASUniswapV3TickV3DTO.getExample()};
        response = (List<OASUniswapV3TickV3DTO>) api.uniswapV3GetTicksCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TickV3DTO>{OASUniswapV3TickV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickV3DTO>{OASUniswapV3TickV3DTO.getExample()};
        response = (List<OASUniswapV3TickV3DTO>) api.uniswapV3GetTicksCurrent(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * TicksDayData (current)
     *
     * Gets ticks day data.
     */
    @isTest
    private static void uniswapV3GetTicksDayDataCurrentTest() {
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
        response = (List<OASUniswapV3TickDayDataV3DTO>) api.uniswapV3GetTicksDayDataCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TickDayDataV3DTO>{OASUniswapV3TickDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickDayDataV3DTO>{OASUniswapV3TickDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3TickDayDataV3DTO>) api.uniswapV3GetTicksDayDataCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TickDayDataV3DTO>{OASUniswapV3TickDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickDayDataV3DTO>{OASUniswapV3TickDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3TickDayDataV3DTO>) api.uniswapV3GetTicksDayDataCurrent(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * TokenHourDataV3s (historical) 🔥
     *
     * Gets tokenhourdatav3s.
     */
    @isTest
    private static void uniswapV3GetTokenHourDataV3sHistoricalTest() {
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
        OASUniswapV3Api api;
        List<OASUniswapV3TokenHourDataV3DTO> response;
        List<OASUniswapV3TokenHourDataV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TokenHourDataV3DTO>{OASUniswapV3TokenHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenHourDataV3DTO>{OASUniswapV3TokenHourDataV3DTO.getExample()};
        response = (List<OASUniswapV3TokenHourDataV3DTO>) api.uniswapV3GetTokenHourDataV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenHourDataV3DTO>{OASUniswapV3TokenHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenHourDataV3DTO>{OASUniswapV3TokenHourDataV3DTO.getExample()};
        response = (List<OASUniswapV3TokenHourDataV3DTO>) api.uniswapV3GetTokenHourDataV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenHourDataV3DTO>{OASUniswapV3TokenHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenHourDataV3DTO>{OASUniswapV3TokenHourDataV3DTO.getExample()};
        response = (List<OASUniswapV3TokenHourDataV3DTO>) api.uniswapV3GetTokenHourDataV3sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * TokenV3DayDatas (historical) 🔥
     *
     * Gets tokenv3daydatas.
     */
    @isTest
    private static void uniswapV3GetTokenV3DayDatasHistoricalTest() {
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
        OASUniswapV3Api api;
        List<OASUniswapV3TokenV3DayDataDTO> response;
        List<OASUniswapV3TokenV3DayDataDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()};
        response = (List<OASUniswapV3TokenV3DayDataDTO>) api.uniswapV3GetTokenV3DayDatasHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()};
        response = (List<OASUniswapV3TokenV3DayDataDTO>) api.uniswapV3GetTokenV3DayDatasHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()};
        response = (List<OASUniswapV3TokenV3DayDataDTO>) api.uniswapV3GetTokenV3DayDatasHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * TokenV3s (historical) 🔥
     *
     * Gets tokenv3s.
     */
    @isTest
    private static void uniswapV3GetTokenV3sHistoricalTest() {
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
        OASUniswapV3Api api;
        List<OASUniswapV3TokenV3DTO> response;
        List<OASUniswapV3TokenV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TokenV3DTO>{OASUniswapV3TokenV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DTO>{OASUniswapV3TokenV3DTO.getExample()};
        response = (List<OASUniswapV3TokenV3DTO>) api.uniswapV3GetTokenV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenV3DTO>{OASUniswapV3TokenV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DTO>{OASUniswapV3TokenV3DTO.getExample()};
        response = (List<OASUniswapV3TokenV3DTO>) api.uniswapV3GetTokenV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenV3DTO>{OASUniswapV3TokenV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DTO>{OASUniswapV3TokenV3DTO.getExample()};
        response = (List<OASUniswapV3TokenV3DTO>) api.uniswapV3GetTokenV3sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Tokens (current) 🔥
     *
     * Gets tokens.
     */
    @isTest
    private static void uniswapV3GetTokensCurrentTest() {
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
        response = (List<OASUniswapV3TokenV3DTO>) api.uniswapV3GetTokensCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenV3DTO>{OASUniswapV3TokenV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DTO>{OASUniswapV3TokenV3DTO.getExample()};
        response = (List<OASUniswapV3TokenV3DTO>) api.uniswapV3GetTokensCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenV3DTO>{OASUniswapV3TokenV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DTO>{OASUniswapV3TokenV3DTO.getExample()};
        response = (List<OASUniswapV3TokenV3DTO>) api.uniswapV3GetTokensCurrent(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * TokensDayData (current)
     *
     * Gets tokens day data.
     */
    @isTest
    private static void uniswapV3GetTokensDayDataCurrentTest() {
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
        response = (List<OASUniswapV3TokenV3DayDataDTO>) api.uniswapV3GetTokensDayDataCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()};
        response = (List<OASUniswapV3TokenV3DayDataDTO>) api.uniswapV3GetTokensDayDataCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()};
        response = (List<OASUniswapV3TokenV3DayDataDTO>) api.uniswapV3GetTokensDayDataCurrent(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * TokensHourData (current)
     *
     * Gets tokens hour data.
     */
    @isTest
    private static void uniswapV3GetTokensHourDataCurrentTest() {
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
        response = (List<OASUniswapV3TokenHourDataV3DTO>) api.uniswapV3GetTokensHourDataCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenHourDataV3DTO>{OASUniswapV3TokenHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenHourDataV3DTO>{OASUniswapV3TokenHourDataV3DTO.getExample()};
        response = (List<OASUniswapV3TokenHourDataV3DTO>) api.uniswapV3GetTokensHourDataCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenHourDataV3DTO>{OASUniswapV3TokenHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenHourDataV3DTO>{OASUniswapV3TokenHourDataV3DTO.getExample()};
        response = (List<OASUniswapV3TokenHourDataV3DTO>) api.uniswapV3GetTokensHourDataCurrent(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * TransactionV3s (historical) 🔥
     *
     * Gets transactionv3s.
     */
    @isTest
    private static void uniswapV3GetTransactionV3sHistoricalTest() {
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
        OASUniswapV3Api api;
        List<OASUniswapV3TransactionV3DTO> response;
        List<OASUniswapV3TransactionV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TransactionV3DTO>{OASUniswapV3TransactionV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TransactionV3DTO>{OASUniswapV3TransactionV3DTO.getExample()};
        response = (List<OASUniswapV3TransactionV3DTO>) api.uniswapV3GetTransactionV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TransactionV3DTO>{OASUniswapV3TransactionV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TransactionV3DTO>{OASUniswapV3TransactionV3DTO.getExample()};
        response = (List<OASUniswapV3TransactionV3DTO>) api.uniswapV3GetTransactionV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TransactionV3DTO>{OASUniswapV3TransactionV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TransactionV3DTO>{OASUniswapV3TransactionV3DTO.getExample()};
        response = (List<OASUniswapV3TransactionV3DTO>) api.uniswapV3GetTransactionV3sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * UniswapDayDataV3s (historical) 🔥
     *
     * Gets uniswapdaydatav3s.
     */
    @isTest
    private static void uniswapV3GetUniswapDayDataV3sHistoricalTest() {
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
        OASUniswapV3Api api;
        List<OASUniswapV3UniswapDayDataV3DTO> response;
        List<OASUniswapV3UniswapDayDataV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3UniswapDayDataV3DTO>{OASUniswapV3UniswapDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3UniswapDayDataV3DTO>{OASUniswapV3UniswapDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3UniswapDayDataV3DTO>) api.uniswapV3GetUniswapDayDataV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3UniswapDayDataV3DTO>{OASUniswapV3UniswapDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3UniswapDayDataV3DTO>{OASUniswapV3UniswapDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3UniswapDayDataV3DTO>) api.uniswapV3GetUniswapDayDataV3sHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3UniswapDayDataV3DTO>{OASUniswapV3UniswapDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3UniswapDayDataV3DTO>{OASUniswapV3UniswapDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3UniswapDayDataV3DTO>) api.uniswapV3GetUniswapDayDataV3sHistorical(params);
        System.assertEquals(expectedResponse, response);
    }
}