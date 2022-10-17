@isTest
private class OASUniswapV2ApiTest {
    /**
     * GetPools
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsUniswapv2PoolsCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null'
        };

        OASClient client;
        OASUniswapV2Api api;
        List<OASPairV2DTO> response;
        List<OASPairV2DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASPairV2DTO>{OASPairV2DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPairV2DTO>{OASPairV2DTO.getExample()};
        response = (List<OASPairV2DTO>) api.chainsChainIdDappsUniswapv2PoolsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASPairV2DTO>{OASPairV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASPairV2DTO>{OASPairV2DTO.getExample()};
        response = (List<OASPairV2DTO>) api.chainsChainIdDappsUniswapv2PoolsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASPairV2DTO>{OASPairV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASPairV2DTO>{OASPairV2DTO.getExample()};
        response = (List<OASPairV2DTO>) api.chainsChainIdDappsUniswapv2PoolsCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetSwaps
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsUniswapv2SwapsCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null'
        };

        OASClient client;
        OASUniswapV2Api api;
        List<OASSwapV2DTO> response;
        List<OASSwapV2DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASSwapV2DTO>{OASSwapV2DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSwapV2DTO>{OASSwapV2DTO.getExample()};
        response = (List<OASSwapV2DTO>) api.chainsChainIdDappsUniswapv2SwapsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSwapV2DTO>{OASSwapV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSwapV2DTO>{OASSwapV2DTO.getExample()};
        response = (List<OASSwapV2DTO>) api.chainsChainIdDappsUniswapv2SwapsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSwapV2DTO>{OASSwapV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSwapV2DTO>{OASSwapV2DTO.getExample()};
        response = (List<OASSwapV2DTO>) api.chainsChainIdDappsUniswapv2SwapsCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetTokens
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsUniswapv2TokensCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null'
        };

        OASClient client;
        OASUniswapV2Api api;
        List<OASTokenV2DTO> response;
        List<OASTokenV2DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASTokenV2DTO>{OASTokenV2DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASTokenV2DTO>{OASTokenV2DTO.getExample()};
        response = (List<OASTokenV2DTO>) api.chainsChainIdDappsUniswapv2TokensCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASTokenV2DTO>{OASTokenV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASTokenV2DTO>{OASTokenV2DTO.getExample()};
        response = (List<OASTokenV2DTO>) api.chainsChainIdDappsUniswapv2TokensCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASTokenV2DTO>{OASTokenV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASTokenV2DTO>{OASTokenV2DTO.getExample()};
        response = (List<OASTokenV2DTO>) api.chainsChainIdDappsUniswapv2TokensCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }
}