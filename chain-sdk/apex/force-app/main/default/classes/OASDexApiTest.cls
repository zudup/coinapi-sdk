@isTest
private class OASDexApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsDexBatchHistoricalGetTest() {
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
        OASDexApi api;
        String js = '';

        api = new OASDexApi(new OASClient());

        api.dappsDexBatchHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsDexOrdersHistoricalGetTest() {
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
        OASDexApi api;
        String js = '';

        api = new OASDexApi(new OASClient());

        api.dappsDexOrdersHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsDexPricesHistoricalGetTest() {
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
        OASDexApi api;
        String js = '';

        api = new OASDexApi(new OASClient());

        api.dappsDexPricesHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsDexSolutionHistoricalGetTest() {
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
        OASDexApi api;
        String js = '';

        api = new OASDexApi(new OASClient());

        api.dappsDexSolutionHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsDexStatsHistoricalGetTest() {
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
        OASDexApi api;
        String js = '';

        api = new OASDexApi(new OASClient());

        api.dappsDexStatsHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsDexTokensHistoricalGetTest() {
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
        OASDexApi api;
        String js = '';

        api = new OASDexApi(new OASClient());

        api.dappsDexTokensHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsDexTradesHistoricalGetTest() {
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
        OASDexApi api;
        String js = '';

        api = new OASDexApi(new OASClient());

        api.dappsDexTradesHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsDexUsersHistoricalGetTest() {
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
        OASDexApi api;
        String js = '';

        api = new OASDexApi(new OASClient());

        api.dappsDexUsersHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsDexWithdrawHistoricalGetTest() {
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
        OASDexApi api;
        String js = '';

        api = new OASDexApi(new OASClient());

        api.dappsDexWithdrawHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsDexWithdrawRequestHistoricalGetTest() {
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
        OASDexApi api;
        String js = '';

        api = new OASDexApi(new OASClient());

        api.dappsDexWithdrawRequestHistoricalGet(params);
    }
}