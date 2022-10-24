@isTest
private class OASTransactionsApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsSushiswapTransactionsHistoricalGetTest() {
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
        OASTransactionsApi api;
        String js = '';

        api = new OASTransactionsApi(new OASClient());

        api.chainsChainIdDappsSushiswapTransactionsHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsUniswapv2TransactionsHistoricalGetTest() {
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
        OASTransactionsApi api;
        String js = '';

        api = new OASTransactionsApi(new OASClient());

        api.chainsChainIdDappsUniswapv2TransactionsHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsUniswapv3TransactionsHistoricalGetTest() {
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
        OASTransactionsApi api;
        String js = '';

        api = new OASTransactionsApi(new OASClient());

        api.chainsChainIdDappsUniswapv3TransactionsHistoricalGet(params);
    }
}