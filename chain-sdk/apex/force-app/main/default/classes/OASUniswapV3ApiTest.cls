@isTest
private class OASUniswapV3ApiTest {
    /**
     * BundleV3DTOs (historical) 🔥
     *
     * Gets BundleV3DTOs.
     */
    @isTest
    private static void uniswapV3GetBundleV3DTOsHistoricalTest() {
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
        List<OASUniswapV3BundleV3DTO> response;
        List<OASUniswapV3BundleV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3BundleV3DTO>{OASUniswapV3BundleV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BundleV3DTO>{OASUniswapV3BundleV3DTO.getExample()};
        response = (List<OASUniswapV3BundleV3DTO>) api.uniswapV3GetBundleV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3BundleV3DTO>{OASUniswapV3BundleV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BundleV3DTO>{OASUniswapV3BundleV3DTO.getExample()};
        response = (List<OASUniswapV3BundleV3DTO>) api.uniswapV3GetBundleV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3BundleV3DTO>{OASUniswapV3BundleV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BundleV3DTO>{OASUniswapV3BundleV3DTO.getExample()};
        response = (List<OASUniswapV3BundleV3DTO>) api.uniswapV3GetBundleV3DTOsHistorical(params);
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
     * Bundles (historical)
     *
     * Gets bundles.
     */
    @isTest
    private static void uniswapV3GetBundlesHistoricalTest() {
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
        List<OASUniswapV3BundleV3DTO> response;
        List<OASUniswapV3BundleV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3BundleV3DTO>{OASUniswapV3BundleV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BundleV3DTO>{OASUniswapV3BundleV3DTO.getExample()};
        response = (List<OASUniswapV3BundleV3DTO>) api.uniswapV3GetBundlesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3BundleV3DTO>{OASUniswapV3BundleV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BundleV3DTO>{OASUniswapV3BundleV3DTO.getExample()};
        response = (List<OASUniswapV3BundleV3DTO>) api.uniswapV3GetBundlesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3BundleV3DTO>{OASUniswapV3BundleV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BundleV3DTO>{OASUniswapV3BundleV3DTO.getExample()};
        response = (List<OASUniswapV3BundleV3DTO>) api.uniswapV3GetBundlesHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * BurnV3DTOs (historical) 🔥
     *
     * Gets BurnV3DTOs.
     */
    @isTest
    private static void uniswapV3GetBurnV3DTOsHistoricalTest() {
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
        List<OASUniswapV3BurnV3DTO> response;
        List<OASUniswapV3BurnV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3BurnV3DTO>{OASUniswapV3BurnV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BurnV3DTO>{OASUniswapV3BurnV3DTO.getExample()};
        response = (List<OASUniswapV3BurnV3DTO>) api.uniswapV3GetBurnV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3BurnV3DTO>{OASUniswapV3BurnV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BurnV3DTO>{OASUniswapV3BurnV3DTO.getExample()};
        response = (List<OASUniswapV3BurnV3DTO>) api.uniswapV3GetBurnV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3BurnV3DTO>{OASUniswapV3BurnV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BurnV3DTO>{OASUniswapV3BurnV3DTO.getExample()};
        response = (List<OASUniswapV3BurnV3DTO>) api.uniswapV3GetBurnV3DTOsHistorical(params);
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
     * Burns (historical)
     *
     * Gets burns.
     */
    @isTest
    private static void uniswapV3GetBurnsHistoricalTest() {
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
        List<OASUniswapV3BurnV3DTO> response;
        List<OASUniswapV3BurnV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3BurnV3DTO>{OASUniswapV3BurnV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BurnV3DTO>{OASUniswapV3BurnV3DTO.getExample()};
        response = (List<OASUniswapV3BurnV3DTO>) api.uniswapV3GetBurnsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3BurnV3DTO>{OASUniswapV3BurnV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BurnV3DTO>{OASUniswapV3BurnV3DTO.getExample()};
        response = (List<OASUniswapV3BurnV3DTO>) api.uniswapV3GetBurnsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3BurnV3DTO>{OASUniswapV3BurnV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3BurnV3DTO>{OASUniswapV3BurnV3DTO.getExample()};
        response = (List<OASUniswapV3BurnV3DTO>) api.uniswapV3GetBurnsHistorical(params);
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
     * DayData (historical)
     *
     * Gets uniswapv3 day data.
     */
    @isTest
    private static void uniswapV3GetDayDataHistoricalTest() {
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
        List<OASUniswapV3UniswapDayDataV3DTO> response;
        List<OASUniswapV3UniswapDayDataV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3UniswapDayDataV3DTO>{OASUniswapV3UniswapDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3UniswapDayDataV3DTO>{OASUniswapV3UniswapDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3UniswapDayDataV3DTO>) api.uniswapV3GetDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3UniswapDayDataV3DTO>{OASUniswapV3UniswapDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3UniswapDayDataV3DTO>{OASUniswapV3UniswapDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3UniswapDayDataV3DTO>) api.uniswapV3GetDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3UniswapDayDataV3DTO>{OASUniswapV3UniswapDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3UniswapDayDataV3DTO>{OASUniswapV3UniswapDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3UniswapDayDataV3DTO>) api.uniswapV3GetDayDataHistorical(params);
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
     * Factory (historical)
     *
     * Gets factory.
     */
    @isTest
    private static void uniswapV3GetFactoryHistoricalTest() {
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
        List<OASUniswapV3FactoryV3DTO> response;
        List<OASUniswapV3FactoryV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3FactoryV3DTO>{OASUniswapV3FactoryV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3FactoryV3DTO>{OASUniswapV3FactoryV3DTO.getExample()};
        response = (List<OASUniswapV3FactoryV3DTO>) api.uniswapV3GetFactoryHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3FactoryV3DTO>{OASUniswapV3FactoryV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3FactoryV3DTO>{OASUniswapV3FactoryV3DTO.getExample()};
        response = (List<OASUniswapV3FactoryV3DTO>) api.uniswapV3GetFactoryHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3FactoryV3DTO>{OASUniswapV3FactoryV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3FactoryV3DTO>{OASUniswapV3FactoryV3DTO.getExample()};
        response = (List<OASUniswapV3FactoryV3DTO>) api.uniswapV3GetFactoryHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * FactoryV3DTOs (historical) 🔥
     *
     * Gets FactoryV3DTOs.
     */
    @isTest
    private static void uniswapV3GetFactoryV3DTOsHistoricalTest() {
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
        List<OASUniswapV3FactoryV3DTO> response;
        List<OASUniswapV3FactoryV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3FactoryV3DTO>{OASUniswapV3FactoryV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3FactoryV3DTO>{OASUniswapV3FactoryV3DTO.getExample()};
        response = (List<OASUniswapV3FactoryV3DTO>) api.uniswapV3GetFactoryV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3FactoryV3DTO>{OASUniswapV3FactoryV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3FactoryV3DTO>{OASUniswapV3FactoryV3DTO.getExample()};
        response = (List<OASUniswapV3FactoryV3DTO>) api.uniswapV3GetFactoryV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3FactoryV3DTO>{OASUniswapV3FactoryV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3FactoryV3DTO>{OASUniswapV3FactoryV3DTO.getExample()};
        response = (List<OASUniswapV3FactoryV3DTO>) api.uniswapV3GetFactoryV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * MintV3DTOs (historical) 🔥
     *
     * Gets MintV3DTOs.
     */
    @isTest
    private static void uniswapV3GetMintV3DTOsHistoricalTest() {
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
        List<OASUniswapV3MintV3DTO> response;
        List<OASUniswapV3MintV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3MintV3DTO>{OASUniswapV3MintV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3MintV3DTO>{OASUniswapV3MintV3DTO.getExample()};
        response = (List<OASUniswapV3MintV3DTO>) api.uniswapV3GetMintV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3MintV3DTO>{OASUniswapV3MintV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3MintV3DTO>{OASUniswapV3MintV3DTO.getExample()};
        response = (List<OASUniswapV3MintV3DTO>) api.uniswapV3GetMintV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3MintV3DTO>{OASUniswapV3MintV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3MintV3DTO>{OASUniswapV3MintV3DTO.getExample()};
        response = (List<OASUniswapV3MintV3DTO>) api.uniswapV3GetMintV3DTOsHistorical(params);
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
     * Mints (historical)
     *
     * Gets mints.
     */
    @isTest
    private static void uniswapV3GetMintsHistoricalTest() {
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
        List<OASUniswapV3MintV3DTO> response;
        List<OASUniswapV3MintV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3MintV3DTO>{OASUniswapV3MintV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3MintV3DTO>{OASUniswapV3MintV3DTO.getExample()};
        response = (List<OASUniswapV3MintV3DTO>) api.uniswapV3GetMintsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3MintV3DTO>{OASUniswapV3MintV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3MintV3DTO>{OASUniswapV3MintV3DTO.getExample()};
        response = (List<OASUniswapV3MintV3DTO>) api.uniswapV3GetMintsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3MintV3DTO>{OASUniswapV3MintV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3MintV3DTO>{OASUniswapV3MintV3DTO.getExample()};
        response = (List<OASUniswapV3MintV3DTO>) api.uniswapV3GetMintsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PoolDayDataV3DTOs (historical) 🔥
     *
     * Gets PoolDayDataV3DTOs.
     */
    @isTest
    private static void uniswapV3GetPoolDayDataV3DTOsHistoricalTest() {
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
        List<OASUniswapV3PoolDayDataV3DTO> response;
        List<OASUniswapV3PoolDayDataV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3PoolDayDataV3DTO>{OASUniswapV3PoolDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolDayDataV3DTO>{OASUniswapV3PoolDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3PoolDayDataV3DTO>) api.uniswapV3GetPoolDayDataV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolDayDataV3DTO>{OASUniswapV3PoolDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolDayDataV3DTO>{OASUniswapV3PoolDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3PoolDayDataV3DTO>) api.uniswapV3GetPoolDayDataV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolDayDataV3DTO>{OASUniswapV3PoolDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolDayDataV3DTO>{OASUniswapV3PoolDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3PoolDayDataV3DTO>) api.uniswapV3GetPoolDayDataV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PoolHourDataV3DTOs (historical) 🔥
     *
     * Gets PoolHourDataV3DTOs.
     */
    @isTest
    private static void uniswapV3GetPoolHourDataV3DTOsHistoricalTest() {
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
        List<OASUniswapV3PoolHourDataV3DTO> response;
        List<OASUniswapV3PoolHourDataV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3PoolHourDataV3DTO>{OASUniswapV3PoolHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolHourDataV3DTO>{OASUniswapV3PoolHourDataV3DTO.getExample()};
        response = (List<OASUniswapV3PoolHourDataV3DTO>) api.uniswapV3GetPoolHourDataV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolHourDataV3DTO>{OASUniswapV3PoolHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolHourDataV3DTO>{OASUniswapV3PoolHourDataV3DTO.getExample()};
        response = (List<OASUniswapV3PoolHourDataV3DTO>) api.uniswapV3GetPoolHourDataV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolHourDataV3DTO>{OASUniswapV3PoolHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolHourDataV3DTO>{OASUniswapV3PoolHourDataV3DTO.getExample()};
        response = (List<OASUniswapV3PoolHourDataV3DTO>) api.uniswapV3GetPoolHourDataV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PoolV3DTOs (historical) 🔥
     *
     * Gets PoolV3DTOs.
     */
    @isTest
    private static void uniswapV3GetPoolV3DTOsHistoricalTest() {
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
        List<OASUniswapV3PoolV3DTO> response;
        List<OASUniswapV3PoolV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3PoolV3DTO>{OASUniswapV3PoolV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolV3DTO>{OASUniswapV3PoolV3DTO.getExample()};
        response = (List<OASUniswapV3PoolV3DTO>) api.uniswapV3GetPoolV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolV3DTO>{OASUniswapV3PoolV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolV3DTO>{OASUniswapV3PoolV3DTO.getExample()};
        response = (List<OASUniswapV3PoolV3DTO>) api.uniswapV3GetPoolV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolV3DTO>{OASUniswapV3PoolV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolV3DTO>{OASUniswapV3PoolV3DTO.getExample()};
        response = (List<OASUniswapV3PoolV3DTO>) api.uniswapV3GetPoolV3DTOsHistorical(params);
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
     * PoolsDayData (historical)
     *
     * Gets pools day data.
     */
    @isTest
    private static void uniswapV3GetPoolsDayDataHistoricalTest() {
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
        List<OASUniswapV3PoolDayDataV3DTO> response;
        List<OASUniswapV3PoolDayDataV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3PoolDayDataV3DTO>{OASUniswapV3PoolDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolDayDataV3DTO>{OASUniswapV3PoolDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3PoolDayDataV3DTO>) api.uniswapV3GetPoolsDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolDayDataV3DTO>{OASUniswapV3PoolDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolDayDataV3DTO>{OASUniswapV3PoolDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3PoolDayDataV3DTO>) api.uniswapV3GetPoolsDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolDayDataV3DTO>{OASUniswapV3PoolDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolDayDataV3DTO>{OASUniswapV3PoolDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3PoolDayDataV3DTO>) api.uniswapV3GetPoolsDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Pools (historical) 🔥
     *
     * Gets pools.
     */
    @isTest
    private static void uniswapV3GetPoolsHistoricalTest() {
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
        List<OASUniswapV3PoolV3DTO> response;
        List<OASUniswapV3PoolV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3PoolV3DTO>{OASUniswapV3PoolV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolV3DTO>{OASUniswapV3PoolV3DTO.getExample()};
        response = (List<OASUniswapV3PoolV3DTO>) api.uniswapV3GetPoolsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolV3DTO>{OASUniswapV3PoolV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolV3DTO>{OASUniswapV3PoolV3DTO.getExample()};
        response = (List<OASUniswapV3PoolV3DTO>) api.uniswapV3GetPoolsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolV3DTO>{OASUniswapV3PoolV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolV3DTO>{OASUniswapV3PoolV3DTO.getExample()};
        response = (List<OASUniswapV3PoolV3DTO>) api.uniswapV3GetPoolsHistorical(params);
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
     * PoolsHourData (historical)
     *
     * Gets pools hour data.
     */
    @isTest
    private static void uniswapV3GetPoolsHourDataHistoricalTest() {
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
        List<OASUniswapV3PoolHourDataV3DTO> response;
        List<OASUniswapV3PoolHourDataV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3PoolHourDataV3DTO>{OASUniswapV3PoolHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolHourDataV3DTO>{OASUniswapV3PoolHourDataV3DTO.getExample()};
        response = (List<OASUniswapV3PoolHourDataV3DTO>) api.uniswapV3GetPoolsHourDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolHourDataV3DTO>{OASUniswapV3PoolHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolHourDataV3DTO>{OASUniswapV3PoolHourDataV3DTO.getExample()};
        response = (List<OASUniswapV3PoolHourDataV3DTO>) api.uniswapV3GetPoolsHourDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PoolHourDataV3DTO>{OASUniswapV3PoolHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PoolHourDataV3DTO>{OASUniswapV3PoolHourDataV3DTO.getExample()};
        response = (List<OASUniswapV3PoolHourDataV3DTO>) api.uniswapV3GetPoolsHourDataHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PositionSnapshotV3DTOs (historical) 🔥
     *
     * Gets PositionSnapshotV3DTOs.
     */
    @isTest
    private static void uniswapV3GetPositionSnapshotV3DTOsHistoricalTest() {
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
        List<OASUniswapV3PositionSnapshotV3DTO> response;
        List<OASUniswapV3PositionSnapshotV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3PositionSnapshotV3DTO>{OASUniswapV3PositionSnapshotV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionSnapshotV3DTO>{OASUniswapV3PositionSnapshotV3DTO.getExample()};
        response = (List<OASUniswapV3PositionSnapshotV3DTO>) api.uniswapV3GetPositionSnapshotV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PositionSnapshotV3DTO>{OASUniswapV3PositionSnapshotV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionSnapshotV3DTO>{OASUniswapV3PositionSnapshotV3DTO.getExample()};
        response = (List<OASUniswapV3PositionSnapshotV3DTO>) api.uniswapV3GetPositionSnapshotV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PositionSnapshotV3DTO>{OASUniswapV3PositionSnapshotV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionSnapshotV3DTO>{OASUniswapV3PositionSnapshotV3DTO.getExample()};
        response = (List<OASUniswapV3PositionSnapshotV3DTO>) api.uniswapV3GetPositionSnapshotV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PositionV3DTOs (historical) 🔥
     *
     * Gets PositionV3DTOs.
     */
    @isTest
    private static void uniswapV3GetPositionV3DTOsHistoricalTest() {
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
        List<OASUniswapV3PositionV3DTO> response;
        List<OASUniswapV3PositionV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3PositionV3DTO>{OASUniswapV3PositionV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionV3DTO>{OASUniswapV3PositionV3DTO.getExample()};
        response = (List<OASUniswapV3PositionV3DTO>) api.uniswapV3GetPositionV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PositionV3DTO>{OASUniswapV3PositionV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionV3DTO>{OASUniswapV3PositionV3DTO.getExample()};
        response = (List<OASUniswapV3PositionV3DTO>) api.uniswapV3GetPositionV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PositionV3DTO>{OASUniswapV3PositionV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionV3DTO>{OASUniswapV3PositionV3DTO.getExample()};
        response = (List<OASUniswapV3PositionV3DTO>) api.uniswapV3GetPositionV3DTOsHistorical(params);
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
     * Positions (historical)
     *
     * Gets positions.
     */
    @isTest
    private static void uniswapV3GetPositionsHistoricalTest() {
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
        List<OASUniswapV3PositionV3DTO> response;
        List<OASUniswapV3PositionV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3PositionV3DTO>{OASUniswapV3PositionV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionV3DTO>{OASUniswapV3PositionV3DTO.getExample()};
        response = (List<OASUniswapV3PositionV3DTO>) api.uniswapV3GetPositionsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PositionV3DTO>{OASUniswapV3PositionV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionV3DTO>{OASUniswapV3PositionV3DTO.getExample()};
        response = (List<OASUniswapV3PositionV3DTO>) api.uniswapV3GetPositionsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PositionV3DTO>{OASUniswapV3PositionV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionV3DTO>{OASUniswapV3PositionV3DTO.getExample()};
        response = (List<OASUniswapV3PositionV3DTO>) api.uniswapV3GetPositionsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * PositionsSnaphots (historical)
     *
     * Gets positions snapshots.
     */
    @isTest
    private static void uniswapV3GetPositionsSnaphotsHistoricalTest() {
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
        List<OASUniswapV3PositionSnapshotV3DTO> response;
        List<OASUniswapV3PositionSnapshotV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3PositionSnapshotV3DTO>{OASUniswapV3PositionSnapshotV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionSnapshotV3DTO>{OASUniswapV3PositionSnapshotV3DTO.getExample()};
        response = (List<OASUniswapV3PositionSnapshotV3DTO>) api.uniswapV3GetPositionsSnaphotsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PositionSnapshotV3DTO>{OASUniswapV3PositionSnapshotV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionSnapshotV3DTO>{OASUniswapV3PositionSnapshotV3DTO.getExample()};
        response = (List<OASUniswapV3PositionSnapshotV3DTO>) api.uniswapV3GetPositionsSnaphotsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3PositionSnapshotV3DTO>{OASUniswapV3PositionSnapshotV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3PositionSnapshotV3DTO>{OASUniswapV3PositionSnapshotV3DTO.getExample()};
        response = (List<OASUniswapV3PositionSnapshotV3DTO>) api.uniswapV3GetPositionsSnaphotsHistorical(params);
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
     * SwapV3DTOs (historical) 🔥
     *
     * Gets SwapV3DTOs.
     */
    @isTest
    private static void uniswapV3GetSwapV3DTOsHistoricalTest() {
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
        List<OASUniswapV3SwapV3DTO> response;
        List<OASUniswapV3SwapV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3SwapV3DTO>{OASUniswapV3SwapV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3SwapV3DTO>{OASUniswapV3SwapV3DTO.getExample()};
        response = (List<OASUniswapV3SwapV3DTO>) api.uniswapV3GetSwapV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3SwapV3DTO>{OASUniswapV3SwapV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3SwapV3DTO>{OASUniswapV3SwapV3DTO.getExample()};
        response = (List<OASUniswapV3SwapV3DTO>) api.uniswapV3GetSwapV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3SwapV3DTO>{OASUniswapV3SwapV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3SwapV3DTO>{OASUniswapV3SwapV3DTO.getExample()};
        response = (List<OASUniswapV3SwapV3DTO>) api.uniswapV3GetSwapV3DTOsHistorical(params);
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
     * Swaps (historical) 🔥
     *
     * Gets swaps.
     */
    @isTest
    private static void uniswapV3GetSwapsHistoricalTest() {
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
        List<OASUniswapV3SwapV3DTO> response;
        List<OASUniswapV3SwapV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3SwapV3DTO>{OASUniswapV3SwapV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3SwapV3DTO>{OASUniswapV3SwapV3DTO.getExample()};
        response = (List<OASUniswapV3SwapV3DTO>) api.uniswapV3GetSwapsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3SwapV3DTO>{OASUniswapV3SwapV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3SwapV3DTO>{OASUniswapV3SwapV3DTO.getExample()};
        response = (List<OASUniswapV3SwapV3DTO>) api.uniswapV3GetSwapsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3SwapV3DTO>{OASUniswapV3SwapV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3SwapV3DTO>{OASUniswapV3SwapV3DTO.getExample()};
        response = (List<OASUniswapV3SwapV3DTO>) api.uniswapV3GetSwapsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * TickDayDataV3DTOs (historical) 🔥
     *
     * Gets TickDayDataV3DTOs.
     */
    @isTest
    private static void uniswapV3GetTickDayDataV3DTOsHistoricalTest() {
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
        List<OASUniswapV3TickDayDataV3DTO> response;
        List<OASUniswapV3TickDayDataV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TickDayDataV3DTO>{OASUniswapV3TickDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickDayDataV3DTO>{OASUniswapV3TickDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3TickDayDataV3DTO>) api.uniswapV3GetTickDayDataV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TickDayDataV3DTO>{OASUniswapV3TickDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickDayDataV3DTO>{OASUniswapV3TickDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3TickDayDataV3DTO>) api.uniswapV3GetTickDayDataV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TickDayDataV3DTO>{OASUniswapV3TickDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickDayDataV3DTO>{OASUniswapV3TickDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3TickDayDataV3DTO>) api.uniswapV3GetTickDayDataV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * TickV3DTOs (historical) 🔥
     *
     * Gets TickV3DTOs.
     */
    @isTest
    private static void uniswapV3GetTickV3DTOsHistoricalTest() {
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
        List<OASUniswapV3TickV3DTO> response;
        List<OASUniswapV3TickV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TickV3DTO>{OASUniswapV3TickV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickV3DTO>{OASUniswapV3TickV3DTO.getExample()};
        response = (List<OASUniswapV3TickV3DTO>) api.uniswapV3GetTickV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TickV3DTO>{OASUniswapV3TickV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickV3DTO>{OASUniswapV3TickV3DTO.getExample()};
        response = (List<OASUniswapV3TickV3DTO>) api.uniswapV3GetTickV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TickV3DTO>{OASUniswapV3TickV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickV3DTO>{OASUniswapV3TickV3DTO.getExample()};
        response = (List<OASUniswapV3TickV3DTO>) api.uniswapV3GetTickV3DTOsHistorical(params);
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
     * TicksDayData (historical)
     *
     * Gets ticks day data.
     */
    @isTest
    private static void uniswapV3GetTicksDayDataHistoricalTest() {
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
        List<OASUniswapV3TickDayDataV3DTO> response;
        List<OASUniswapV3TickDayDataV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TickDayDataV3DTO>{OASUniswapV3TickDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickDayDataV3DTO>{OASUniswapV3TickDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3TickDayDataV3DTO>) api.uniswapV3GetTicksDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TickDayDataV3DTO>{OASUniswapV3TickDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickDayDataV3DTO>{OASUniswapV3TickDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3TickDayDataV3DTO>) api.uniswapV3GetTicksDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TickDayDataV3DTO>{OASUniswapV3TickDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickDayDataV3DTO>{OASUniswapV3TickDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3TickDayDataV3DTO>) api.uniswapV3GetTicksDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Ticks (historical)
     *
     * Gets ticks.
     */
    @isTest
    private static void uniswapV3GetTicksHistoricalTest() {
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
        List<OASUniswapV3TickV3DTO> response;
        List<OASUniswapV3TickV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TickV3DTO>{OASUniswapV3TickV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickV3DTO>{OASUniswapV3TickV3DTO.getExample()};
        response = (List<OASUniswapV3TickV3DTO>) api.uniswapV3GetTicksHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TickV3DTO>{OASUniswapV3TickV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickV3DTO>{OASUniswapV3TickV3DTO.getExample()};
        response = (List<OASUniswapV3TickV3DTO>) api.uniswapV3GetTicksHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TickV3DTO>{OASUniswapV3TickV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TickV3DTO>{OASUniswapV3TickV3DTO.getExample()};
        response = (List<OASUniswapV3TickV3DTO>) api.uniswapV3GetTicksHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * TokenHourDataV3DTOs (historical) 🔥
     *
     * Gets TokenHourDataV3DTOs.
     */
    @isTest
    private static void uniswapV3GetTokenHourDataV3DTOsHistoricalTest() {
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
        List<OASUniswapV3TokenHourDataV3DTO> response;
        List<OASUniswapV3TokenHourDataV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TokenHourDataV3DTO>{OASUniswapV3TokenHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenHourDataV3DTO>{OASUniswapV3TokenHourDataV3DTO.getExample()};
        response = (List<OASUniswapV3TokenHourDataV3DTO>) api.uniswapV3GetTokenHourDataV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenHourDataV3DTO>{OASUniswapV3TokenHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenHourDataV3DTO>{OASUniswapV3TokenHourDataV3DTO.getExample()};
        response = (List<OASUniswapV3TokenHourDataV3DTO>) api.uniswapV3GetTokenHourDataV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenHourDataV3DTO>{OASUniswapV3TokenHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenHourDataV3DTO>{OASUniswapV3TokenHourDataV3DTO.getExample()};
        response = (List<OASUniswapV3TokenHourDataV3DTO>) api.uniswapV3GetTokenHourDataV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * TokenV3DTOs (historical) 🔥
     *
     * Gets TokenV3DTOs.
     */
    @isTest
    private static void uniswapV3GetTokenV3DTOsHistoricalTest() {
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
        List<OASUniswapV3TokenV3DTO> response;
        List<OASUniswapV3TokenV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TokenV3DTO>{OASUniswapV3TokenV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DTO>{OASUniswapV3TokenV3DTO.getExample()};
        response = (List<OASUniswapV3TokenV3DTO>) api.uniswapV3GetTokenV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenV3DTO>{OASUniswapV3TokenV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DTO>{OASUniswapV3TokenV3DTO.getExample()};
        response = (List<OASUniswapV3TokenV3DTO>) api.uniswapV3GetTokenV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenV3DTO>{OASUniswapV3TokenV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DTO>{OASUniswapV3TokenV3DTO.getExample()};
        response = (List<OASUniswapV3TokenV3DTO>) api.uniswapV3GetTokenV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * TokenV3DayDataDTOs (historical) 🔥
     *
     * Gets TokenV3DayDataDTOs.
     */
    @isTest
    private static void uniswapV3GetTokenV3DayDataDTOsHistoricalTest() {
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
        List<OASUniswapV3TokenV3DayDataDTO> response;
        List<OASUniswapV3TokenV3DayDataDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()};
        response = (List<OASUniswapV3TokenV3DayDataDTO>) api.uniswapV3GetTokenV3DayDataDTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()};
        response = (List<OASUniswapV3TokenV3DayDataDTO>) api.uniswapV3GetTokenV3DayDataDTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()};
        response = (List<OASUniswapV3TokenV3DayDataDTO>) api.uniswapV3GetTokenV3DayDataDTOsHistorical(params);
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
     * TokensDayData (historical)
     *
     * Gets tokens day data.
     */
    @isTest
    private static void uniswapV3GetTokensDayDataHistoricalTest() {
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
        List<OASUniswapV3TokenV3DayDataDTO> response;
        List<OASUniswapV3TokenV3DayDataDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()};
        response = (List<OASUniswapV3TokenV3DayDataDTO>) api.uniswapV3GetTokensDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()};
        response = (List<OASUniswapV3TokenV3DayDataDTO>) api.uniswapV3GetTokensDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DayDataDTO>{OASUniswapV3TokenV3DayDataDTO.getExample()};
        response = (List<OASUniswapV3TokenV3DayDataDTO>) api.uniswapV3GetTokensDayDataHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Tokens (historical) 🔥
     *
     * Gets tokens.
     */
    @isTest
    private static void uniswapV3GetTokensHistoricalTest() {
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
        List<OASUniswapV3TokenV3DTO> response;
        List<OASUniswapV3TokenV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TokenV3DTO>{OASUniswapV3TokenV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DTO>{OASUniswapV3TokenV3DTO.getExample()};
        response = (List<OASUniswapV3TokenV3DTO>) api.uniswapV3GetTokensHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenV3DTO>{OASUniswapV3TokenV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DTO>{OASUniswapV3TokenV3DTO.getExample()};
        response = (List<OASUniswapV3TokenV3DTO>) api.uniswapV3GetTokensHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenV3DTO>{OASUniswapV3TokenV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenV3DTO>{OASUniswapV3TokenV3DTO.getExample()};
        response = (List<OASUniswapV3TokenV3DTO>) api.uniswapV3GetTokensHistorical(params);
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
     * TokensHourData (historical)
     *
     * Gets tokens hour data.
     */
    @isTest
    private static void uniswapV3GetTokensHourDataHistoricalTest() {
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
        List<OASUniswapV3TokenHourDataV3DTO> response;
        List<OASUniswapV3TokenHourDataV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TokenHourDataV3DTO>{OASUniswapV3TokenHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenHourDataV3DTO>{OASUniswapV3TokenHourDataV3DTO.getExample()};
        response = (List<OASUniswapV3TokenHourDataV3DTO>) api.uniswapV3GetTokensHourDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenHourDataV3DTO>{OASUniswapV3TokenHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenHourDataV3DTO>{OASUniswapV3TokenHourDataV3DTO.getExample()};
        response = (List<OASUniswapV3TokenHourDataV3DTO>) api.uniswapV3GetTokensHourDataHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TokenHourDataV3DTO>{OASUniswapV3TokenHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TokenHourDataV3DTO>{OASUniswapV3TokenHourDataV3DTO.getExample()};
        response = (List<OASUniswapV3TokenHourDataV3DTO>) api.uniswapV3GetTokensHourDataHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * TransactionV3DTOs (historical) 🔥
     *
     * Gets TransactionV3DTOs.
     */
    @isTest
    private static void uniswapV3GetTransactionV3DTOsHistoricalTest() {
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
        List<OASUniswapV3TransactionV3DTO> response;
        List<OASUniswapV3TransactionV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TransactionV3DTO>{OASUniswapV3TransactionV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TransactionV3DTO>{OASUniswapV3TransactionV3DTO.getExample()};
        response = (List<OASUniswapV3TransactionV3DTO>) api.uniswapV3GetTransactionV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TransactionV3DTO>{OASUniswapV3TransactionV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TransactionV3DTO>{OASUniswapV3TransactionV3DTO.getExample()};
        response = (List<OASUniswapV3TransactionV3DTO>) api.uniswapV3GetTransactionV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TransactionV3DTO>{OASUniswapV3TransactionV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TransactionV3DTO>{OASUniswapV3TransactionV3DTO.getExample()};
        response = (List<OASUniswapV3TransactionV3DTO>) api.uniswapV3GetTransactionV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Transactions (historical)
     *
     * Gets transactions.
     */
    @isTest
    private static void uniswapV3GetTransactionsHistoricalTest() {
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
        List<OASUniswapV3TransactionV3DTO> response;
        List<OASUniswapV3TransactionV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3TransactionV3DTO>{OASUniswapV3TransactionV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TransactionV3DTO>{OASUniswapV3TransactionV3DTO.getExample()};
        response = (List<OASUniswapV3TransactionV3DTO>) api.uniswapV3GetTransactionsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TransactionV3DTO>{OASUniswapV3TransactionV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TransactionV3DTO>{OASUniswapV3TransactionV3DTO.getExample()};
        response = (List<OASUniswapV3TransactionV3DTO>) api.uniswapV3GetTransactionsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3TransactionV3DTO>{OASUniswapV3TransactionV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3TransactionV3DTO>{OASUniswapV3TransactionV3DTO.getExample()};
        response = (List<OASUniswapV3TransactionV3DTO>) api.uniswapV3GetTransactionsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * UniswapDayDataV3DTOs (historical) 🔥
     *
     * Gets UniswapDayDataV3DTOs.
     */
    @isTest
    private static void uniswapV3GetUniswapDayDataV3DTOsHistoricalTest() {
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
        List<OASUniswapV3UniswapDayDataV3DTO> response;
        List<OASUniswapV3UniswapDayDataV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV3UniswapDayDataV3DTO>{OASUniswapV3UniswapDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3UniswapDayDataV3DTO>{OASUniswapV3UniswapDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3UniswapDayDataV3DTO>) api.uniswapV3GetUniswapDayDataV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3UniswapDayDataV3DTO>{OASUniswapV3UniswapDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3UniswapDayDataV3DTO>{OASUniswapV3UniswapDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3UniswapDayDataV3DTO>) api.uniswapV3GetUniswapDayDataV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV3UniswapDayDataV3DTO>{OASUniswapV3UniswapDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV3UniswapDayDataV3DTO>{OASUniswapV3UniswapDayDataV3DTO.getExample()};
        response = (List<OASUniswapV3UniswapDayDataV3DTO>) api.uniswapV3GetUniswapDayDataV3DTOsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }
}