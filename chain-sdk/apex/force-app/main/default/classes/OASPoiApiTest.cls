@isTest
private class OASPoiApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsSushiswapPoiHistoricalGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null',
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3)
        };

        OASClient client;
        OASPoiApi api;
        String js = '';

        api = new OASPoiApi(new OASClient());

        api.chainsChainIdDappsSushiswapPoiHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsUniswapv2PoiHistoricalGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null',
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3)
        };

        OASClient client;
        OASPoiApi api;
        String js = '';

        api = new OASPoiApi(new OASClient());

        api.chainsChainIdDappsUniswapv2PoiHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsUniswapv3PoiHistoricalGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null',
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3)
        };

        OASClient client;
        OASPoiApi api;
        String js = '';

        api = new OASPoiApi(new OASClient());

        api.chainsChainIdDappsUniswapv3PoiHistoricalGet(params);
    }
}