@isTest
private class OASUniswapV2ApiTest {
    /**
     * Pools (current) 🔥
     *
     * Gets pools.
     */
    @isTest
    private static void uniswapV2GetPoolsCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'filterPoolId' => 'null'
        };

        OASClient client;
        OASUniswapV2Api api;
        List<OASUniswapV2PairV2DTO> response;
        List<OASUniswapV2PairV2DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2PairV2DTO>{OASUniswapV2PairV2DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairV2DTO>{OASUniswapV2PairV2DTO.getExample()};
        response = (List<OASUniswapV2PairV2DTO>) api.uniswapV2GetPoolsCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairV2DTO>{OASUniswapV2PairV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairV2DTO>{OASUniswapV2PairV2DTO.getExample()};
        response = (List<OASUniswapV2PairV2DTO>) api.uniswapV2GetPoolsCurrent(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2PairV2DTO>{OASUniswapV2PairV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2PairV2DTO>{OASUniswapV2PairV2DTO.getExample()};
        response = (List<OASUniswapV2PairV2DTO>) api.uniswapV2GetPoolsCurrent(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Swaps (current) 🔥
     *
     * Gets swaps.
     */
    @isTest
    private static void uniswapV2GetSwapsCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV2Api api;
        List<OASUniswapV2SwapV2DTO> response;
        List<OASUniswapV2SwapV2DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2SwapV2DTO>{OASUniswapV2SwapV2DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2SwapV2DTO>{OASUniswapV2SwapV2DTO.getExample()};
        response = (List<OASUniswapV2SwapV2DTO>) api.uniswapV2GetSwapsCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2SwapV2DTO>{OASUniswapV2SwapV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2SwapV2DTO>{OASUniswapV2SwapV2DTO.getExample()};
        response = (List<OASUniswapV2SwapV2DTO>) api.uniswapV2GetSwapsCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2SwapV2DTO>{OASUniswapV2SwapV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2SwapV2DTO>{OASUniswapV2SwapV2DTO.getExample()};
        response = (List<OASUniswapV2SwapV2DTO>) api.uniswapV2GetSwapsCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Tokens (current) 🔥
     *
     * Gets tokens.
     */
    @isTest
    private static void uniswapV2GetTokensCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUniswapV2Api api;
        List<OASUniswapV2TokenV2DTO> response;
        List<OASUniswapV2TokenV2DTO> expectedResponse;
        String js = '';

        api = new OASUniswapV2Api(new OASClient());

        js = JSON.serialize(new List<OASUniswapV2TokenV2DTO>{OASUniswapV2TokenV2DTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenV2DTO>{OASUniswapV2TokenV2DTO.getExample()};
        response = (List<OASUniswapV2TokenV2DTO>) api.uniswapV2GetTokensCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TokenV2DTO>{OASUniswapV2TokenV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenV2DTO>{OASUniswapV2TokenV2DTO.getExample()};
        response = (List<OASUniswapV2TokenV2DTO>) api.uniswapV2GetTokensCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASUniswapV2TokenV2DTO>{OASUniswapV2TokenV2DTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASUniswapV2TokenV2DTO>{OASUniswapV2TokenV2DTO.getExample()};
        response = (List<OASUniswapV2TokenV2DTO>) api.uniswapV2GetTokensCurrent();
        System.assertEquals(expectedResponse, response);
    }
}