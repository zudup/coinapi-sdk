@isTest
private class OASWeeklyVolumeApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsCurveWeeklyVolumeHistoricalGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null',
            'startBlock' => 2147483648L,
            'endBlock' => 2147483648L,
            'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'poolId' => 'null'
        };

        OASClient client;
        OASWeeklyVolumeApi api;
        String js = '';

        api = new OASWeeklyVolumeApi(new OASClient());

        api.chainsChainIdDappsCurveWeeklyVolumeHistoricalGet(params);
    }
}