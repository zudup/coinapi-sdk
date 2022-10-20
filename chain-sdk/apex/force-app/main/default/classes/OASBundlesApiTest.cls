@isTest
private class OASBundlesApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsUniswapv3BundlesHistoricalGetTest() {
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
        OASBundlesApi api;
        String js = '';

        api = new OASBundlesApi(new OASClient());

        api.chainsChainIdDappsUniswapv3BundlesHistoricalGet(params);
    }
}