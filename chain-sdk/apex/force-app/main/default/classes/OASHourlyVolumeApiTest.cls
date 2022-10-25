@isTest
private class OASHourlyVolumeApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsCurveHourlyVolumeHistoricalGetTest() {
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
        OASHourlyVolumeApi api;
        String js = '';

        api = new OASHourlyVolumeApi(new OASClient());

        api.chainsChainIdDappsCurveHourlyVolumeHistoricalGet(params);
    }
}