@isTest
private class OASUniswapV3ApiTest {
    /**
     * GetBundles
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsUniswapv3BundleCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASBundleV3DTO> response;
        List<OASBundleV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASBundleV3DTO>{OASBundleV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASBundleV3DTO>{OASBundleV3DTO.getExample()};
        response = (List<OASBundleV3DTO>) api.chainsChainIdDappsUniswapv3BundleCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASBundleV3DTO>{OASBundleV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASBundleV3DTO>{OASBundleV3DTO.getExample()};
        response = (List<OASBundleV3DTO>) api.chainsChainIdDappsUniswapv3BundleCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASBundleV3DTO>{OASBundleV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASBundleV3DTO>{OASBundleV3DTO.getExample()};
        response = (List<OASBundleV3DTO>) api.chainsChainIdDappsUniswapv3BundleCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetBurns
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsUniswapv3BurnsCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null',
            'filterPoolId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASBurnV3DTO> response;
        List<OASBurnV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASBurnV3DTO>{OASBurnV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASBurnV3DTO>{OASBurnV3DTO.getExample()};
        response = (List<OASBurnV3DTO>) api.chainsChainIdDappsUniswapv3BurnsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASBurnV3DTO>{OASBurnV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASBurnV3DTO>{OASBurnV3DTO.getExample()};
        response = (List<OASBurnV3DTO>) api.chainsChainIdDappsUniswapv3BurnsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASBurnV3DTO>{OASBurnV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASBurnV3DTO>{OASBurnV3DTO.getExample()};
        response = (List<OASBurnV3DTO>) api.chainsChainIdDappsUniswapv3BurnsCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetFactory
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsUniswapv3FactoryCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASFactoryV3DTO> response;
        List<OASFactoryV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASFactoryV3DTO>{OASFactoryV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASFactoryV3DTO>{OASFactoryV3DTO.getExample()};
        response = (List<OASFactoryV3DTO>) api.chainsChainIdDappsUniswapv3FactoryCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASFactoryV3DTO>{OASFactoryV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASFactoryV3DTO>{OASFactoryV3DTO.getExample()};
        response = (List<OASFactoryV3DTO>) api.chainsChainIdDappsUniswapv3FactoryCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASFactoryV3DTO>{OASFactoryV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASFactoryV3DTO>{OASFactoryV3DTO.getExample()};
        response = (List<OASFactoryV3DTO>) api.chainsChainIdDappsUniswapv3FactoryCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetMints
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsUniswapv3MintsCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null',
            'filterPoolId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASMintV3DTO> response;
        List<OASMintV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASMintV3DTO>{OASMintV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASMintV3DTO>{OASMintV3DTO.getExample()};
        response = (List<OASMintV3DTO>) api.chainsChainIdDappsUniswapv3MintsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASMintV3DTO>{OASMintV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASMintV3DTO>{OASMintV3DTO.getExample()};
        response = (List<OASMintV3DTO>) api.chainsChainIdDappsUniswapv3MintsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASMintV3DTO>{OASMintV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASMintV3DTO>{OASMintV3DTO.getExample()};
        response = (List<OASMintV3DTO>) api.chainsChainIdDappsUniswapv3MintsCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetPools
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsUniswapv3PoolsCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null',
            'filterPoolId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASPoolV3DTO> response;
        List<OASPoolV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASPoolV3DTO>{OASPoolV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPoolV3DTO>{OASPoolV3DTO.getExample()};
        response = (List<OASPoolV3DTO>) api.chainsChainIdDappsUniswapv3PoolsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASPoolV3DTO>{OASPoolV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASPoolV3DTO>{OASPoolV3DTO.getExample()};
        response = (List<OASPoolV3DTO>) api.chainsChainIdDappsUniswapv3PoolsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASPoolV3DTO>{OASPoolV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASPoolV3DTO>{OASPoolV3DTO.getExample()};
        response = (List<OASPoolV3DTO>) api.chainsChainIdDappsUniswapv3PoolsCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetPoolsDayData
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsUniswapv3PoolsDayDataCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null',
            'filterPoolId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASPoolDayDataV3DTO> response;
        List<OASPoolDayDataV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASPoolDayDataV3DTO>{OASPoolDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPoolDayDataV3DTO>{OASPoolDayDataV3DTO.getExample()};
        response = (List<OASPoolDayDataV3DTO>) api.chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASPoolDayDataV3DTO>{OASPoolDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASPoolDayDataV3DTO>{OASPoolDayDataV3DTO.getExample()};
        response = (List<OASPoolDayDataV3DTO>) api.chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASPoolDayDataV3DTO>{OASPoolDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASPoolDayDataV3DTO>{OASPoolDayDataV3DTO.getExample()};
        response = (List<OASPoolDayDataV3DTO>) api.chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetPoolsHourData
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsUniswapv3PoolsHourDataCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null',
            'filterPoolId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASPoolHourDataV3DTO> response;
        List<OASPoolHourDataV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASPoolHourDataV3DTO>{OASPoolHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPoolHourDataV3DTO>{OASPoolHourDataV3DTO.getExample()};
        response = (List<OASPoolHourDataV3DTO>) api.chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASPoolHourDataV3DTO>{OASPoolHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASPoolHourDataV3DTO>{OASPoolHourDataV3DTO.getExample()};
        response = (List<OASPoolHourDataV3DTO>) api.chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASPoolHourDataV3DTO>{OASPoolHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASPoolHourDataV3DTO>{OASPoolHourDataV3DTO.getExample()};
        response = (List<OASPoolHourDataV3DTO>) api.chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetPositionSnapshot
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null',
            'filterPoolId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASPositionSnapshotV3DTO> response;
        List<OASPositionSnapshotV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASPositionSnapshotV3DTO>{OASPositionSnapshotV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPositionSnapshotV3DTO>{OASPositionSnapshotV3DTO.getExample()};
        response = (List<OASPositionSnapshotV3DTO>) api.chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASPositionSnapshotV3DTO>{OASPositionSnapshotV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASPositionSnapshotV3DTO>{OASPositionSnapshotV3DTO.getExample()};
        response = (List<OASPositionSnapshotV3DTO>) api.chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASPositionSnapshotV3DTO>{OASPositionSnapshotV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASPositionSnapshotV3DTO>{OASPositionSnapshotV3DTO.getExample()};
        response = (List<OASPositionSnapshotV3DTO>) api.chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetPositions
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsUniswapv3PositionsCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null',
            'filterPoolId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASPositionV3DTO> response;
        List<OASPositionV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASPositionV3DTO>{OASPositionV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPositionV3DTO>{OASPositionV3DTO.getExample()};
        response = (List<OASPositionV3DTO>) api.chainsChainIdDappsUniswapv3PositionsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASPositionV3DTO>{OASPositionV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASPositionV3DTO>{OASPositionV3DTO.getExample()};
        response = (List<OASPositionV3DTO>) api.chainsChainIdDappsUniswapv3PositionsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASPositionV3DTO>{OASPositionV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASPositionV3DTO>{OASPositionV3DTO.getExample()};
        response = (List<OASPositionV3DTO>) api.chainsChainIdDappsUniswapv3PositionsCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetSwaps
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsUniswapv3SwapsCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null',
            'filterPoolId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASSwapV3DTO> response;
        List<OASSwapV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASSwapV3DTO>{OASSwapV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSwapV3DTO>{OASSwapV3DTO.getExample()};
        response = (List<OASSwapV3DTO>) api.chainsChainIdDappsUniswapv3SwapsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSwapV3DTO>{OASSwapV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSwapV3DTO>{OASSwapV3DTO.getExample()};
        response = (List<OASSwapV3DTO>) api.chainsChainIdDappsUniswapv3SwapsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSwapV3DTO>{OASSwapV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSwapV3DTO>{OASSwapV3DTO.getExample()};
        response = (List<OASSwapV3DTO>) api.chainsChainIdDappsUniswapv3SwapsCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetTicks
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsUniswapv3TicksCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null',
            'filterPoolId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASTickV3DTO> response;
        List<OASTickV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASTickV3DTO>{OASTickV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASTickV3DTO>{OASTickV3DTO.getExample()};
        response = (List<OASTickV3DTO>) api.chainsChainIdDappsUniswapv3TicksCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASTickV3DTO>{OASTickV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASTickV3DTO>{OASTickV3DTO.getExample()};
        response = (List<OASTickV3DTO>) api.chainsChainIdDappsUniswapv3TicksCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASTickV3DTO>{OASTickV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASTickV3DTO>{OASTickV3DTO.getExample()};
        response = (List<OASTickV3DTO>) api.chainsChainIdDappsUniswapv3TicksCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetTicksDayData
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsUniswapv3TicksDayDataCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null',
            'filterPoolId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASTickDayDataV3DTO> response;
        List<OASTickDayDataV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASTickDayDataV3DTO>{OASTickDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASTickDayDataV3DTO>{OASTickDayDataV3DTO.getExample()};
        response = (List<OASTickDayDataV3DTO>) api.chainsChainIdDappsUniswapv3TicksDayDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASTickDayDataV3DTO>{OASTickDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASTickDayDataV3DTO>{OASTickDayDataV3DTO.getExample()};
        response = (List<OASTickDayDataV3DTO>) api.chainsChainIdDappsUniswapv3TicksDayDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASTickDayDataV3DTO>{OASTickDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASTickDayDataV3DTO>{OASTickDayDataV3DTO.getExample()};
        response = (List<OASTickDayDataV3DTO>) api.chainsChainIdDappsUniswapv3TicksDayDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetTokens
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsUniswapv3TokensCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null',
            'filterTokenId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASTokenV3DTO> response;
        List<OASTokenV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASTokenV3DTO>{OASTokenV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASTokenV3DTO>{OASTokenV3DTO.getExample()};
        response = (List<OASTokenV3DTO>) api.chainsChainIdDappsUniswapv3TokensCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASTokenV3DTO>{OASTokenV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASTokenV3DTO>{OASTokenV3DTO.getExample()};
        response = (List<OASTokenV3DTO>) api.chainsChainIdDappsUniswapv3TokensCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASTokenV3DTO>{OASTokenV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASTokenV3DTO>{OASTokenV3DTO.getExample()};
        response = (List<OASTokenV3DTO>) api.chainsChainIdDappsUniswapv3TokensCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetTokensDayData
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsUniswapv3TokensDayDataCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null',
            'filterTokenId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASTokenV3DayDataDTO> response;
        List<OASTokenV3DayDataDTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASTokenV3DayDataDTO>{OASTokenV3DayDataDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASTokenV3DayDataDTO>{OASTokenV3DayDataDTO.getExample()};
        response = (List<OASTokenV3DayDataDTO>) api.chainsChainIdDappsUniswapv3TokensDayDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASTokenV3DayDataDTO>{OASTokenV3DayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASTokenV3DayDataDTO>{OASTokenV3DayDataDTO.getExample()};
        response = (List<OASTokenV3DayDataDTO>) api.chainsChainIdDappsUniswapv3TokensDayDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASTokenV3DayDataDTO>{OASTokenV3DayDataDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASTokenV3DayDataDTO>{OASTokenV3DayDataDTO.getExample()};
        response = (List<OASTokenV3DayDataDTO>) api.chainsChainIdDappsUniswapv3TokensDayDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetTokensHourData
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsUniswapv3TokensHourDataCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null',
            'filterTokenId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASTokenHourDataV3DTO> response;
        List<OASTokenHourDataV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASTokenHourDataV3DTO>{OASTokenHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASTokenHourDataV3DTO>{OASTokenHourDataV3DTO.getExample()};
        response = (List<OASTokenHourDataV3DTO>) api.chainsChainIdDappsUniswapv3TokensHourDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASTokenHourDataV3DTO>{OASTokenHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASTokenHourDataV3DTO>{OASTokenHourDataV3DTO.getExample()};
        response = (List<OASTokenHourDataV3DTO>) api.chainsChainIdDappsUniswapv3TokensHourDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASTokenHourDataV3DTO>{OASTokenHourDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASTokenHourDataV3DTO>{OASTokenHourDataV3DTO.getExample()};
        response = (List<OASTokenHourDataV3DTO>) api.chainsChainIdDappsUniswapv3TokensHourDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetUniswapDayData
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsUniswapv3UniswapDayDataCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null'
        };

        OASClient client;
        OASUniswapV3Api api;
        List<OASUniswapDayDataV3DTO> response;
        List<OASUniswapDayDataV3DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV3Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapDayDataV3DTO>{OASUniswapDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapDayDataV3DTO>{OASUniswapDayDataV3DTO.getExample()};
        response = (List<OASUniswapDayDataV3DTO>) api.chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapDayDataV3DTO>{OASUniswapDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapDayDataV3DTO>{OASUniswapDayDataV3DTO.getExample()};
        response = (List<OASUniswapDayDataV3DTO>) api.chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapDayDataV3DTO>{OASUniswapDayDataV3DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapDayDataV3DTO>{OASUniswapDayDataV3DTO.getExample()};
        response = (List<OASUniswapDayDataV3DTO>) api.chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }
}