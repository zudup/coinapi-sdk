@isTest
private class OASCowApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsCowOrdersHistoricalGetTest() {
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
        OASCowApi api;
        String js = '';

        api = new OASCowApi(new OASClient());

        api.dappsCowOrdersHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsCowSettlementHistoricalGetTest() {
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
        OASCowApi api;
        String js = '';

        api = new OASCowApi(new OASClient());

        api.dappsCowSettlementHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsCowTokensHistoricalGetTest() {
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
        OASCowApi api;
        String js = '';

        api = new OASCowApi(new OASClient());

        api.dappsCowTokensHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsCowTradesHistoricalGetTest() {
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
        OASCowApi api;
        String js = '';

        api = new OASCowApi(new OASClient());

        api.dappsCowTradesHistoricalGet(params);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void dappsCowUsersHistoricalGetTest() {
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
        OASCowApi api;
        String js = '';

        api = new OASCowApi(new OASClient());

        api.dappsCowUsersHistoricalGet(params);
    }
}