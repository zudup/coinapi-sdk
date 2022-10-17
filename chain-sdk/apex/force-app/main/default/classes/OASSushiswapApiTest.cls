@isTest
private class OASSushiswapApiTest {
    /**
     * GetPools
     *
     * Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\&#39;s standard dummy text ever since the 1500s.
     */
    @isTest
    private static void chainsChainIdDappsSushiswapPoolsCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null'
        };

        OASClient client;
        OASSushiswapApi api;
        List<OASPairDTO> response;
        List<OASPairDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASPairDTO>{OASPairDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASPairDTO>{OASPairDTO.getExample()};
        response = (List<OASPairDTO>) api.chainsChainIdDappsSushiswapPoolsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASPairDTO>{OASPairDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASPairDTO>{OASPairDTO.getExample()};
        response = (List<OASPairDTO>) api.chainsChainIdDappsSushiswapPoolsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASPairDTO>{OASPairDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASPairDTO>{OASPairDTO.getExample()};
        response = (List<OASPairDTO>) api.chainsChainIdDappsSushiswapPoolsCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetSwaps
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsSushiswapSwapsCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null'
        };

        OASClient client;
        OASSushiswapApi api;
        List<OASSwapDTO> response;
        List<OASSwapDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSwapDTO>{OASSwapDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSwapDTO>{OASSwapDTO.getExample()};
        response = (List<OASSwapDTO>) api.chainsChainIdDappsSushiswapSwapsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSwapDTO>{OASSwapDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSwapDTO>{OASSwapDTO.getExample()};
        response = (List<OASSwapDTO>) api.chainsChainIdDappsSushiswapSwapsCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSwapDTO>{OASSwapDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSwapDTO>{OASSwapDTO.getExample()};
        response = (List<OASSwapDTO>) api.chainsChainIdDappsSushiswapSwapsCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * GetTokens
     *
     * 
     */
    @isTest
    private static void chainsChainIdDappsSushiswapTokensCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null'
        };

        OASClient client;
        OASSushiswapApi api;
        List<OASTokenDTO> response;
        List<OASTokenDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASTokenDTO>{OASTokenDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASTokenDTO>{OASTokenDTO.getExample()};
        response = (List<OASTokenDTO>) api.chainsChainIdDappsSushiswapTokensCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASTokenDTO>{OASTokenDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASTokenDTO>{OASTokenDTO.getExample()};
        response = (List<OASTokenDTO>) api.chainsChainIdDappsSushiswapTokensCurrentGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASTokenDTO>{OASTokenDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASTokenDTO>{OASTokenDTO.getExample()};
        response = (List<OASTokenDTO>) api.chainsChainIdDappsSushiswapTokensCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }
}