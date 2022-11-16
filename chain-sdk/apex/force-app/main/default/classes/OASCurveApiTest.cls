@isTest
private class OASCurveApiTest {
    /**
     * Accounts (historical) 🔥
     *
     * Gets accounts.
     */
    @isTest
    private static void curveGetAccountsHistoricalTest() {
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
            'address' => 'null'
        };

        OASClient client;
        OASCurveApi api;
        List<OASCurveAccountDTO> response;
        List<OASCurveAccountDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveAccountDTO>{OASCurveAccountDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveAccountDTO>{OASCurveAccountDTO.getExample()};
        response = (List<OASCurveAccountDTO>) api.curveGetAccountsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveAccountDTO>{OASCurveAccountDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveAccountDTO>{OASCurveAccountDTO.getExample()};
        response = (List<OASCurveAccountDTO>) api.curveGetAccountsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveAccountDTO>{OASCurveAccountDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveAccountDTO>{OASCurveAccountDTO.getExample()};
        response = (List<OASCurveAccountDTO>) api.curveGetAccountsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * AddLiquidityEvents (historical) 🔥
     *
     * Gets addliquidityevents.
     */
    @isTest
    private static void curveGetAddLiquidityEventsHistoricalTest() {
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
        OASCurveApi api;
        List<OASCurveAddLiquidityEventDTO> response;
        List<OASCurveAddLiquidityEventDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveAddLiquidityEventDTO>{OASCurveAddLiquidityEventDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveAddLiquidityEventDTO>{OASCurveAddLiquidityEventDTO.getExample()};
        response = (List<OASCurveAddLiquidityEventDTO>) api.curveGetAddLiquidityEventsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveAddLiquidityEventDTO>{OASCurveAddLiquidityEventDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveAddLiquidityEventDTO>{OASCurveAddLiquidityEventDTO.getExample()};
        response = (List<OASCurveAddLiquidityEventDTO>) api.curveGetAddLiquidityEventsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveAddLiquidityEventDTO>{OASCurveAddLiquidityEventDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveAddLiquidityEventDTO>{OASCurveAddLiquidityEventDTO.getExample()};
        response = (List<OASCurveAddLiquidityEventDTO>) api.curveGetAddLiquidityEventsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * AdminFeeChangeLogs (historical) 🔥
     *
     * Gets adminfeechangelogs.
     */
    @isTest
    private static void curveGetAdminFeeChangeLogsHistoricalTest() {
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
        OASCurveApi api;
        List<OASCurveAdminFeeChangeLogDTO> response;
        List<OASCurveAdminFeeChangeLogDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveAdminFeeChangeLogDTO>{OASCurveAdminFeeChangeLogDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveAdminFeeChangeLogDTO>{OASCurveAdminFeeChangeLogDTO.getExample()};
        response = (List<OASCurveAdminFeeChangeLogDTO>) api.curveGetAdminFeeChangeLogsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveAdminFeeChangeLogDTO>{OASCurveAdminFeeChangeLogDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveAdminFeeChangeLogDTO>{OASCurveAdminFeeChangeLogDTO.getExample()};
        response = (List<OASCurveAdminFeeChangeLogDTO>) api.curveGetAdminFeeChangeLogsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveAdminFeeChangeLogDTO>{OASCurveAdminFeeChangeLogDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveAdminFeeChangeLogDTO>{OASCurveAdminFeeChangeLogDTO.getExample()};
        response = (List<OASCurveAdminFeeChangeLogDTO>) api.curveGetAdminFeeChangeLogsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * AmplificationCoeffChangeLogs (historical) 🔥
     *
     * Gets amplificationcoeffchangelogs.
     */
    @isTest
    private static void curveGetAmplificationCoeffChangeLogsHistoricalTest() {
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
        OASCurveApi api;
        List<OASCurveAmplificationCoeffChangeLogD> response;
        List<OASCurveAmplificationCoeffChangeLogD> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveAmplificationCoeffChangeLogD>{OASCurveAmplificationCoeffChangeLogD.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveAmplificationCoeffChangeLogD>{OASCurveAmplificationCoeffChangeLogD.getExample()};
        response = (List<OASCurveAmplificationCoeffChangeLogD>) api.curveGetAmplificationCoeffChangeLogsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveAmplificationCoeffChangeLogD>{OASCurveAmplificationCoeffChangeLogD.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveAmplificationCoeffChangeLogD>{OASCurveAmplificationCoeffChangeLogD.getExample()};
        response = (List<OASCurveAmplificationCoeffChangeLogD>) api.curveGetAmplificationCoeffChangeLogsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveAmplificationCoeffChangeLogD>{OASCurveAmplificationCoeffChangeLogD.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveAmplificationCoeffChangeLogD>{OASCurveAmplificationCoeffChangeLogD.getExample()};
        response = (List<OASCurveAmplificationCoeffChangeLogD>) api.curveGetAmplificationCoeffChangeLogsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Coins (historical) 🔥
     *
     * Gets coins.
     */
    @isTest
    private static void curveGetCoinsHistoricalTest() {
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
        OASCurveApi api;
        List<OASCurveCoinDTO> response;
        List<OASCurveCoinDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveCoinDTO>{OASCurveCoinDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveCoinDTO>{OASCurveCoinDTO.getExample()};
        response = (List<OASCurveCoinDTO>) api.curveGetCoinsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveCoinDTO>{OASCurveCoinDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveCoinDTO>{OASCurveCoinDTO.getExample()};
        response = (List<OASCurveCoinDTO>) api.curveGetCoinsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveCoinDTO>{OASCurveCoinDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveCoinDTO>{OASCurveCoinDTO.getExample()};
        response = (List<OASCurveCoinDTO>) api.curveGetCoinsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * ContractVersions (historical) 🔥
     *
     * Gets contractversions.
     */
    @isTest
    private static void curveGetContractVersionsHistoricalTest() {
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
            'address' => 'null'
        };

        OASClient client;
        OASCurveApi api;
        List<OASCurveContractVersionDTO> response;
        List<OASCurveContractVersionDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveContractVersionDTO>{OASCurveContractVersionDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveContractVersionDTO>{OASCurveContractVersionDTO.getExample()};
        response = (List<OASCurveContractVersionDTO>) api.curveGetContractVersionsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveContractVersionDTO>{OASCurveContractVersionDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveContractVersionDTO>{OASCurveContractVersionDTO.getExample()};
        response = (List<OASCurveContractVersionDTO>) api.curveGetContractVersionsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveContractVersionDTO>{OASCurveContractVersionDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveContractVersionDTO>{OASCurveContractVersionDTO.getExample()};
        response = (List<OASCurveContractVersionDTO>) api.curveGetContractVersionsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Contracts (historical) 🔥
     *
     * Gets contracts.
     */
    @isTest
    private static void curveGetContractsHistoricalTest() {
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
        OASCurveApi api;
        List<OASCurveContractDTO> response;
        List<OASCurveContractDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveContractDTO>{OASCurveContractDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveContractDTO>{OASCurveContractDTO.getExample()};
        response = (List<OASCurveContractDTO>) api.curveGetContractsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveContractDTO>{OASCurveContractDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveContractDTO>{OASCurveContractDTO.getExample()};
        response = (List<OASCurveContractDTO>) api.curveGetContractsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveContractDTO>{OASCurveContractDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveContractDTO>{OASCurveContractDTO.getExample()};
        response = (List<OASCurveContractDTO>) api.curveGetContractsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * DailyVolumes (historical) 🔥
     *
     * Gets dailyvolumes.
     */
    @isTest
    private static void curveGetDailyVolumesHistoricalTest() {
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
        OASCurveApi api;
        List<OASCurveDailyVolumeDTO> response;
        List<OASCurveDailyVolumeDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveDailyVolumeDTO>{OASCurveDailyVolumeDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveDailyVolumeDTO>{OASCurveDailyVolumeDTO.getExample()};
        response = (List<OASCurveDailyVolumeDTO>) api.curveGetDailyVolumesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveDailyVolumeDTO>{OASCurveDailyVolumeDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveDailyVolumeDTO>{OASCurveDailyVolumeDTO.getExample()};
        response = (List<OASCurveDailyVolumeDTO>) api.curveGetDailyVolumesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveDailyVolumeDTO>{OASCurveDailyVolumeDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveDailyVolumeDTO>{OASCurveDailyVolumeDTO.getExample()};
        response = (List<OASCurveDailyVolumeDTO>) api.curveGetDailyVolumesHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Exchanges (historical) 🔥
     *
     * Gets exchanges.
     */
    @isTest
    private static void curveGetExchangesHistoricalTest() {
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
        OASCurveApi api;
        List<OASCurveExchangeDTO> response;
        List<OASCurveExchangeDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveExchangeDTO>{OASCurveExchangeDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveExchangeDTO>{OASCurveExchangeDTO.getExample()};
        response = (List<OASCurveExchangeDTO>) api.curveGetExchangesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveExchangeDTO>{OASCurveExchangeDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveExchangeDTO>{OASCurveExchangeDTO.getExample()};
        response = (List<OASCurveExchangeDTO>) api.curveGetExchangesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveExchangeDTO>{OASCurveExchangeDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveExchangeDTO>{OASCurveExchangeDTO.getExample()};
        response = (List<OASCurveExchangeDTO>) api.curveGetExchangesHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * FeeChangeLogs (historical) 🔥
     *
     * Gets feechangelogs.
     */
    @isTest
    private static void curveGetFeeChangeLogsHistoricalTest() {
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
        OASCurveApi api;
        List<OASCurveFeeChangeLogDTO> response;
        List<OASCurveFeeChangeLogDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveFeeChangeLogDTO>{OASCurveFeeChangeLogDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveFeeChangeLogDTO>{OASCurveFeeChangeLogDTO.getExample()};
        response = (List<OASCurveFeeChangeLogDTO>) api.curveGetFeeChangeLogsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveFeeChangeLogDTO>{OASCurveFeeChangeLogDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveFeeChangeLogDTO>{OASCurveFeeChangeLogDTO.getExample()};
        response = (List<OASCurveFeeChangeLogDTO>) api.curveGetFeeChangeLogsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveFeeChangeLogDTO>{OASCurveFeeChangeLogDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveFeeChangeLogDTO>{OASCurveFeeChangeLogDTO.getExample()};
        response = (List<OASCurveFeeChangeLogDTO>) api.curveGetFeeChangeLogsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GaugeDeposits (historical) 🔥
     *
     * Gets gaugedeposits.
     */
    @isTest
    private static void curveGetGaugeDepositsHistoricalTest() {
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
        OASCurveApi api;
        List<OASCurveGaugeDepositDTO> response;
        List<OASCurveGaugeDepositDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveGaugeDepositDTO>{OASCurveGaugeDepositDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveGaugeDepositDTO>{OASCurveGaugeDepositDTO.getExample()};
        response = (List<OASCurveGaugeDepositDTO>) api.curveGetGaugeDepositsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveGaugeDepositDTO>{OASCurveGaugeDepositDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveGaugeDepositDTO>{OASCurveGaugeDepositDTO.getExample()};
        response = (List<OASCurveGaugeDepositDTO>) api.curveGetGaugeDepositsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveGaugeDepositDTO>{OASCurveGaugeDepositDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveGaugeDepositDTO>{OASCurveGaugeDepositDTO.getExample()};
        response = (List<OASCurveGaugeDepositDTO>) api.curveGetGaugeDepositsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GaugeLiquiditys (historical) 🔥
     *
     * Gets gaugeliquiditys.
     */
    @isTest
    private static void curveGetGaugeLiquiditysHistoricalTest() {
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
            'user' => 'null'
        };

        OASClient client;
        OASCurveApi api;
        List<OASCurveGaugeLiquidityDTO> response;
        List<OASCurveGaugeLiquidityDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveGaugeLiquidityDTO>{OASCurveGaugeLiquidityDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveGaugeLiquidityDTO>{OASCurveGaugeLiquidityDTO.getExample()};
        response = (List<OASCurveGaugeLiquidityDTO>) api.curveGetGaugeLiquiditysHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveGaugeLiquidityDTO>{OASCurveGaugeLiquidityDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveGaugeLiquidityDTO>{OASCurveGaugeLiquidityDTO.getExample()};
        response = (List<OASCurveGaugeLiquidityDTO>) api.curveGetGaugeLiquiditysHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveGaugeLiquidityDTO>{OASCurveGaugeLiquidityDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveGaugeLiquidityDTO>{OASCurveGaugeLiquidityDTO.getExample()};
        response = (List<OASCurveGaugeLiquidityDTO>) api.curveGetGaugeLiquiditysHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GaugeTotalWeights (historical) 🔥
     *
     * Gets gaugetotalweights.
     */
    @isTest
    private static void curveGetGaugeTotalWeightsHistoricalTest() {
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
        OASCurveApi api;
        List<OASCurveGaugeTotalWeightDTO> response;
        List<OASCurveGaugeTotalWeightDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveGaugeTotalWeightDTO>{OASCurveGaugeTotalWeightDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveGaugeTotalWeightDTO>{OASCurveGaugeTotalWeightDTO.getExample()};
        response = (List<OASCurveGaugeTotalWeightDTO>) api.curveGetGaugeTotalWeightsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveGaugeTotalWeightDTO>{OASCurveGaugeTotalWeightDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveGaugeTotalWeightDTO>{OASCurveGaugeTotalWeightDTO.getExample()};
        response = (List<OASCurveGaugeTotalWeightDTO>) api.curveGetGaugeTotalWeightsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveGaugeTotalWeightDTO>{OASCurveGaugeTotalWeightDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveGaugeTotalWeightDTO>{OASCurveGaugeTotalWeightDTO.getExample()};
        response = (List<OASCurveGaugeTotalWeightDTO>) api.curveGetGaugeTotalWeightsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GaugeTypeWeights (historical) 🔥
     *
     * Gets gaugetypeweights.
     */
    @isTest
    private static void curveGetGaugeTypeWeightsHistoricalTest() {
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
        OASCurveApi api;
        List<OASCurveGaugeTypeWeightDTO> response;
        List<OASCurveGaugeTypeWeightDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveGaugeTypeWeightDTO>{OASCurveGaugeTypeWeightDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveGaugeTypeWeightDTO>{OASCurveGaugeTypeWeightDTO.getExample()};
        response = (List<OASCurveGaugeTypeWeightDTO>) api.curveGetGaugeTypeWeightsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveGaugeTypeWeightDTO>{OASCurveGaugeTypeWeightDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveGaugeTypeWeightDTO>{OASCurveGaugeTypeWeightDTO.getExample()};
        response = (List<OASCurveGaugeTypeWeightDTO>) api.curveGetGaugeTypeWeightsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveGaugeTypeWeightDTO>{OASCurveGaugeTypeWeightDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveGaugeTypeWeightDTO>{OASCurveGaugeTypeWeightDTO.getExample()};
        response = (List<OASCurveGaugeTypeWeightDTO>) api.curveGetGaugeTypeWeightsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GaugeTypes (historical) 🔥
     *
     * Gets gaugetypes.
     */
    @isTest
    private static void curveGetGaugeTypesHistoricalTest() {
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
            'name' => 'null'
        };

        OASClient client;
        OASCurveApi api;
        List<OASCurveGaugeTypeDTO> response;
        List<OASCurveGaugeTypeDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveGaugeTypeDTO>{OASCurveGaugeTypeDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveGaugeTypeDTO>{OASCurveGaugeTypeDTO.getExample()};
        response = (List<OASCurveGaugeTypeDTO>) api.curveGetGaugeTypesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveGaugeTypeDTO>{OASCurveGaugeTypeDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveGaugeTypeDTO>{OASCurveGaugeTypeDTO.getExample()};
        response = (List<OASCurveGaugeTypeDTO>) api.curveGetGaugeTypesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveGaugeTypeDTO>{OASCurveGaugeTypeDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveGaugeTypeDTO>{OASCurveGaugeTypeDTO.getExample()};
        response = (List<OASCurveGaugeTypeDTO>) api.curveGetGaugeTypesHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GaugeWeightVotes (historical) 🔥
     *
     * Gets gaugeweightvotes.
     */
    @isTest
    private static void curveGetGaugeWeightVotesHistoricalTest() {
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
            'user' => 'null'
        };

        OASClient client;
        OASCurveApi api;
        List<OASCurveGaugeWeightVoteDTO> response;
        List<OASCurveGaugeWeightVoteDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveGaugeWeightVoteDTO>{OASCurveGaugeWeightVoteDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveGaugeWeightVoteDTO>{OASCurveGaugeWeightVoteDTO.getExample()};
        response = (List<OASCurveGaugeWeightVoteDTO>) api.curveGetGaugeWeightVotesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveGaugeWeightVoteDTO>{OASCurveGaugeWeightVoteDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveGaugeWeightVoteDTO>{OASCurveGaugeWeightVoteDTO.getExample()};
        response = (List<OASCurveGaugeWeightVoteDTO>) api.curveGetGaugeWeightVotesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveGaugeWeightVoteDTO>{OASCurveGaugeWeightVoteDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveGaugeWeightVoteDTO>{OASCurveGaugeWeightVoteDTO.getExample()};
        response = (List<OASCurveGaugeWeightVoteDTO>) api.curveGetGaugeWeightVotesHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GaugeWeights (historical) 🔥
     *
     * Gets gaugeweights.
     */
    @isTest
    private static void curveGetGaugeWeightsHistoricalTest() {
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
        OASCurveApi api;
        List<OASCurveGaugeWeightDTO> response;
        List<OASCurveGaugeWeightDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveGaugeWeightDTO>{OASCurveGaugeWeightDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveGaugeWeightDTO>{OASCurveGaugeWeightDTO.getExample()};
        response = (List<OASCurveGaugeWeightDTO>) api.curveGetGaugeWeightsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveGaugeWeightDTO>{OASCurveGaugeWeightDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveGaugeWeightDTO>{OASCurveGaugeWeightDTO.getExample()};
        response = (List<OASCurveGaugeWeightDTO>) api.curveGetGaugeWeightsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveGaugeWeightDTO>{OASCurveGaugeWeightDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveGaugeWeightDTO>{OASCurveGaugeWeightDTO.getExample()};
        response = (List<OASCurveGaugeWeightDTO>) api.curveGetGaugeWeightsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GaugeWithdraws (historical) 🔥
     *
     * Gets gaugewithdraws.
     */
    @isTest
    private static void curveGetGaugeWithdrawsHistoricalTest() {
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
        OASCurveApi api;
        List<OASCurveGaugeWithdrawDTO> response;
        List<OASCurveGaugeWithdrawDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveGaugeWithdrawDTO>{OASCurveGaugeWithdrawDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveGaugeWithdrawDTO>{OASCurveGaugeWithdrawDTO.getExample()};
        response = (List<OASCurveGaugeWithdrawDTO>) api.curveGetGaugeWithdrawsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveGaugeWithdrawDTO>{OASCurveGaugeWithdrawDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveGaugeWithdrawDTO>{OASCurveGaugeWithdrawDTO.getExample()};
        response = (List<OASCurveGaugeWithdrawDTO>) api.curveGetGaugeWithdrawsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveGaugeWithdrawDTO>{OASCurveGaugeWithdrawDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveGaugeWithdrawDTO>{OASCurveGaugeWithdrawDTO.getExample()};
        response = (List<OASCurveGaugeWithdrawDTO>) api.curveGetGaugeWithdrawsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Gauges (historical) 🔥
     *
     * Gets gauges.
     */
    @isTest
    private static void curveGetGaugesHistoricalTest() {
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
            'address' => 'null',
            'pool' => 'null'
        };

        OASClient client;
        OASCurveApi api;
        List<OASCurveGaugeDTO> response;
        List<OASCurveGaugeDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveGaugeDTO>{OASCurveGaugeDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveGaugeDTO>{OASCurveGaugeDTO.getExample()};
        response = (List<OASCurveGaugeDTO>) api.curveGetGaugesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveGaugeDTO>{OASCurveGaugeDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveGaugeDTO>{OASCurveGaugeDTO.getExample()};
        response = (List<OASCurveGaugeDTO>) api.curveGetGaugesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveGaugeDTO>{OASCurveGaugeDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveGaugeDTO>{OASCurveGaugeDTO.getExample()};
        response = (List<OASCurveGaugeDTO>) api.curveGetGaugesHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * HourlyVolumes (historical) 🔥
     *
     * Gets hourlyvolumes.
     */
    @isTest
    private static void curveGetHourlyVolumesHistoricalTest() {
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
        OASCurveApi api;
        List<OASCurveHourlyVolumeDTO> response;
        List<OASCurveHourlyVolumeDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveHourlyVolumeDTO>{OASCurveHourlyVolumeDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveHourlyVolumeDTO>{OASCurveHourlyVolumeDTO.getExample()};
        response = (List<OASCurveHourlyVolumeDTO>) api.curveGetHourlyVolumesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveHourlyVolumeDTO>{OASCurveHourlyVolumeDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveHourlyVolumeDTO>{OASCurveHourlyVolumeDTO.getExample()};
        response = (List<OASCurveHourlyVolumeDTO>) api.curveGetHourlyVolumesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveHourlyVolumeDTO>{OASCurveHourlyVolumeDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveHourlyVolumeDTO>{OASCurveHourlyVolumeDTO.getExample()};
        response = (List<OASCurveHourlyVolumeDTO>) api.curveGetHourlyVolumesHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * LpTokens (historical) 🔥
     *
     * Gets lptokens.
     */
    @isTest
    private static void curveGetLpTokensHistoricalTest() {
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
            'address' => 'null',
            'name' => 'null',
            'symbol' => 'null',
            'pool' => 'null'
        };

        OASClient client;
        OASCurveApi api;
        List<OASCurveLpTokenDTO> response;
        List<OASCurveLpTokenDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveLpTokenDTO>{OASCurveLpTokenDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveLpTokenDTO>{OASCurveLpTokenDTO.getExample()};
        response = (List<OASCurveLpTokenDTO>) api.curveGetLpTokensHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveLpTokenDTO>{OASCurveLpTokenDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveLpTokenDTO>{OASCurveLpTokenDTO.getExample()};
        response = (List<OASCurveLpTokenDTO>) api.curveGetLpTokensHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveLpTokenDTO>{OASCurveLpTokenDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveLpTokenDTO>{OASCurveLpTokenDTO.getExample()};
        response = (List<OASCurveLpTokenDTO>) api.curveGetLpTokensHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Pools (historical) 🔥
     *
     * Gets pools.
     */
    @isTest
    private static void curveGetPoolsHistoricalTest() {
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
            'name' => 'null'
        };

        OASClient client;
        OASCurveApi api;
        List<OASCurvePoolDTO> response;
        List<OASCurvePoolDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurvePoolDTO>{OASCurvePoolDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurvePoolDTO>{OASCurvePoolDTO.getExample()};
        response = (List<OASCurvePoolDTO>) api.curveGetPoolsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurvePoolDTO>{OASCurvePoolDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurvePoolDTO>{OASCurvePoolDTO.getExample()};
        response = (List<OASCurvePoolDTO>) api.curveGetPoolsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurvePoolDTO>{OASCurvePoolDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurvePoolDTO>{OASCurvePoolDTO.getExample()};
        response = (List<OASCurvePoolDTO>) api.curveGetPoolsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * ProposalVotes (historical) 🔥
     *
     * Gets proposalvotes.
     */
    @isTest
    private static void curveGetProposalVotesHistoricalTest() {
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
        OASCurveApi api;
        List<OASCurveProposalVoteDTO> response;
        List<OASCurveProposalVoteDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveProposalVoteDTO>{OASCurveProposalVoteDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveProposalVoteDTO>{OASCurveProposalVoteDTO.getExample()};
        response = (List<OASCurveProposalVoteDTO>) api.curveGetProposalVotesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveProposalVoteDTO>{OASCurveProposalVoteDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveProposalVoteDTO>{OASCurveProposalVoteDTO.getExample()};
        response = (List<OASCurveProposalVoteDTO>) api.curveGetProposalVotesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveProposalVoteDTO>{OASCurveProposalVoteDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveProposalVoteDTO>{OASCurveProposalVoteDTO.getExample()};
        response = (List<OASCurveProposalVoteDTO>) api.curveGetProposalVotesHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Proposals (historical) 🔥
     *
     * Gets proposals.
     */
    @isTest
    private static void curveGetProposalsHistoricalTest() {
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
        OASCurveApi api;
        List<OASCurveProposalDTO> response;
        List<OASCurveProposalDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveProposalDTO>{OASCurveProposalDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveProposalDTO>{OASCurveProposalDTO.getExample()};
        response = (List<OASCurveProposalDTO>) api.curveGetProposalsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveProposalDTO>{OASCurveProposalDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveProposalDTO>{OASCurveProposalDTO.getExample()};
        response = (List<OASCurveProposalDTO>) api.curveGetProposalsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveProposalDTO>{OASCurveProposalDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveProposalDTO>{OASCurveProposalDTO.getExample()};
        response = (List<OASCurveProposalDTO>) api.curveGetProposalsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * RemoveLiquidityEvents (historical) 🔥
     *
     * Gets removeliquidityevents.
     */
    @isTest
    private static void curveGetRemoveLiquidityEventsHistoricalTest() {
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
        OASCurveApi api;
        List<OASCurveRemoveLiquidityEventDTO> response;
        List<OASCurveRemoveLiquidityEventDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveRemoveLiquidityEventDTO>{OASCurveRemoveLiquidityEventDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveRemoveLiquidityEventDTO>{OASCurveRemoveLiquidityEventDTO.getExample()};
        response = (List<OASCurveRemoveLiquidityEventDTO>) api.curveGetRemoveLiquidityEventsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveRemoveLiquidityEventDTO>{OASCurveRemoveLiquidityEventDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveRemoveLiquidityEventDTO>{OASCurveRemoveLiquidityEventDTO.getExample()};
        response = (List<OASCurveRemoveLiquidityEventDTO>) api.curveGetRemoveLiquidityEventsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveRemoveLiquidityEventDTO>{OASCurveRemoveLiquidityEventDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveRemoveLiquidityEventDTO>{OASCurveRemoveLiquidityEventDTO.getExample()};
        response = (List<OASCurveRemoveLiquidityEventDTO>) api.curveGetRemoveLiquidityEventsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * RemoveLiquidityOneEvents (historical) 🔥
     *
     * Gets removeliquidityoneevents.
     */
    @isTest
    private static void curveGetRemoveLiquidityOneEventsHistoricalTest() {
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
        OASCurveApi api;
        List<OASCurveRemoveLiquidityOneEventDTO> response;
        List<OASCurveRemoveLiquidityOneEventDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveRemoveLiquidityOneEventDTO>{OASCurveRemoveLiquidityOneEventDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveRemoveLiquidityOneEventDTO>{OASCurveRemoveLiquidityOneEventDTO.getExample()};
        response = (List<OASCurveRemoveLiquidityOneEventDTO>) api.curveGetRemoveLiquidityOneEventsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveRemoveLiquidityOneEventDTO>{OASCurveRemoveLiquidityOneEventDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveRemoveLiquidityOneEventDTO>{OASCurveRemoveLiquidityOneEventDTO.getExample()};
        response = (List<OASCurveRemoveLiquidityOneEventDTO>) api.curveGetRemoveLiquidityOneEventsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveRemoveLiquidityOneEventDTO>{OASCurveRemoveLiquidityOneEventDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveRemoveLiquidityOneEventDTO>{OASCurveRemoveLiquidityOneEventDTO.getExample()};
        response = (List<OASCurveRemoveLiquidityOneEventDTO>) api.curveGetRemoveLiquidityOneEventsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * SystemStates (historical) 🔥
     *
     * Gets systemstates.
     */
    @isTest
    private static void curveGetSystemStatesHistoricalTest() {
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
        OASCurveApi api;
        List<OASCurveSystemStateDTO> response;
        List<OASCurveSystemStateDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveSystemStateDTO>{OASCurveSystemStateDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveSystemStateDTO>{OASCurveSystemStateDTO.getExample()};
        response = (List<OASCurveSystemStateDTO>) api.curveGetSystemStatesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveSystemStateDTO>{OASCurveSystemStateDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveSystemStateDTO>{OASCurveSystemStateDTO.getExample()};
        response = (List<OASCurveSystemStateDTO>) api.curveGetSystemStatesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveSystemStateDTO>{OASCurveSystemStateDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveSystemStateDTO>{OASCurveSystemStateDTO.getExample()};
        response = (List<OASCurveSystemStateDTO>) api.curveGetSystemStatesHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Tokens (historical) 🔥
     *
     * Gets tokens.
     */
    @isTest
    private static void curveGetTokensHistoricalTest() {
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
            'address' => 'null',
            'name' => 'null',
            'symbol' => 'null'
        };

        OASClient client;
        OASCurveApi api;
        List<OASCurveTokenDTO> response;
        List<OASCurveTokenDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveTokenDTO>{OASCurveTokenDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveTokenDTO>{OASCurveTokenDTO.getExample()};
        response = (List<OASCurveTokenDTO>) api.curveGetTokensHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveTokenDTO>{OASCurveTokenDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveTokenDTO>{OASCurveTokenDTO.getExample()};
        response = (List<OASCurveTokenDTO>) api.curveGetTokensHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveTokenDTO>{OASCurveTokenDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveTokenDTO>{OASCurveTokenDTO.getExample()};
        response = (List<OASCurveTokenDTO>) api.curveGetTokensHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * TransferOwnershipEvents (historical) 🔥
     *
     * Gets transferownershipevents.
     */
    @isTest
    private static void curveGetTransferOwnershipEventsHistoricalTest() {
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
        OASCurveApi api;
        List<OASCurveTransferOwnershipEventDTO> response;
        List<OASCurveTransferOwnershipEventDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveTransferOwnershipEventDTO>{OASCurveTransferOwnershipEventDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveTransferOwnershipEventDTO>{OASCurveTransferOwnershipEventDTO.getExample()};
        response = (List<OASCurveTransferOwnershipEventDTO>) api.curveGetTransferOwnershipEventsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveTransferOwnershipEventDTO>{OASCurveTransferOwnershipEventDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveTransferOwnershipEventDTO>{OASCurveTransferOwnershipEventDTO.getExample()};
        response = (List<OASCurveTransferOwnershipEventDTO>) api.curveGetTransferOwnershipEventsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveTransferOwnershipEventDTO>{OASCurveTransferOwnershipEventDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveTransferOwnershipEventDTO>{OASCurveTransferOwnershipEventDTO.getExample()};
        response = (List<OASCurveTransferOwnershipEventDTO>) api.curveGetTransferOwnershipEventsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * UnderlyingCoins (historical) 🔥
     *
     * Gets underlyingcoins.
     */
    @isTest
    private static void curveGetUnderlyingCoinsHistoricalTest() {
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
        OASCurveApi api;
        List<OASCurveUnderlyingCoinDTO> response;
        List<OASCurveUnderlyingCoinDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveUnderlyingCoinDTO>{OASCurveUnderlyingCoinDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveUnderlyingCoinDTO>{OASCurveUnderlyingCoinDTO.getExample()};
        response = (List<OASCurveUnderlyingCoinDTO>) api.curveGetUnderlyingCoinsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveUnderlyingCoinDTO>{OASCurveUnderlyingCoinDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveUnderlyingCoinDTO>{OASCurveUnderlyingCoinDTO.getExample()};
        response = (List<OASCurveUnderlyingCoinDTO>) api.curveGetUnderlyingCoinsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveUnderlyingCoinDTO>{OASCurveUnderlyingCoinDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveUnderlyingCoinDTO>{OASCurveUnderlyingCoinDTO.getExample()};
        response = (List<OASCurveUnderlyingCoinDTO>) api.curveGetUnderlyingCoinsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * VotingApps (historical) 🔥
     *
     * Gets votingapps.
     */
    @isTest
    private static void curveGetVotingAppsHistoricalTest() {
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
            'address' => 'null'
        };

        OASClient client;
        OASCurveApi api;
        List<OASCurveVotingAppDTO> response;
        List<OASCurveVotingAppDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveVotingAppDTO>{OASCurveVotingAppDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveVotingAppDTO>{OASCurveVotingAppDTO.getExample()};
        response = (List<OASCurveVotingAppDTO>) api.curveGetVotingAppsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveVotingAppDTO>{OASCurveVotingAppDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveVotingAppDTO>{OASCurveVotingAppDTO.getExample()};
        response = (List<OASCurveVotingAppDTO>) api.curveGetVotingAppsHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveVotingAppDTO>{OASCurveVotingAppDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveVotingAppDTO>{OASCurveVotingAppDTO.getExample()};
        response = (List<OASCurveVotingAppDTO>) api.curveGetVotingAppsHistorical(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * WeeklyVolumes (historical) 🔥
     *
     * Gets weeklyvolumes.
     */
    @isTest
    private static void curveGetWeeklyVolumesHistoricalTest() {
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
        OASCurveApi api;
        List<OASCurveWeeklyVolumeDTO> response;
        List<OASCurveWeeklyVolumeDTO> expectedResponse;
        String js = '';

        api = new OASCurveApi(new OASClient());

        js = JSON.serialize(new List<OASCurveWeeklyVolumeDTO>{OASCurveWeeklyVolumeDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveWeeklyVolumeDTO>{OASCurveWeeklyVolumeDTO.getExample()};
        response = (List<OASCurveWeeklyVolumeDTO>) api.curveGetWeeklyVolumesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveWeeklyVolumeDTO>{OASCurveWeeklyVolumeDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveWeeklyVolumeDTO>{OASCurveWeeklyVolumeDTO.getExample()};
        response = (List<OASCurveWeeklyVolumeDTO>) api.curveGetWeeklyVolumesHistorical(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveWeeklyVolumeDTO>{OASCurveWeeklyVolumeDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveWeeklyVolumeDTO>{OASCurveWeeklyVolumeDTO.getExample()};
        response = (List<OASCurveWeeklyVolumeDTO>) api.curveGetWeeklyVolumesHistorical(params);
        System.assertEquals(expectedResponse, response);
    }
}