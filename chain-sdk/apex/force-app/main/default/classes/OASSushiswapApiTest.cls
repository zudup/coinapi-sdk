@isTest
private class OASSushiswapApiTest {
    /**
     * Exchanges (current) 🔥
     *
     * Gets exchanges.
     */
    @isTest
    private static void curveGetExchangesCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASSushiswapApi api;
        List<OASCurveExchangeDTO> response;
        List<OASCurveExchangeDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASCurveExchangeDTO>{OASCurveExchangeDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveExchangeDTO>{OASCurveExchangeDTO.getExample()};
        response = (List<OASCurveExchangeDTO>) api.curveGetExchangesCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveExchangeDTO>{OASCurveExchangeDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASCurveExchangeDTO>{OASCurveExchangeDTO.getExample()};
        response = (List<OASCurveExchangeDTO>) api.curveGetExchangesCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASCurveExchangeDTO>{OASCurveExchangeDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASCurveExchangeDTO>{OASCurveExchangeDTO.getExample()};
        response = (List<OASCurveExchangeDTO>) api.curveGetExchangesCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Trades (current) 🔥
     *
     * Gets trades.
     */
    @isTest
    private static void dexGetTradesCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASSushiswapApi api;
        List<OASDexTradeDTO> response;
        List<OASDexTradeDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASDexTradeDTO>{OASDexTradeDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDexTradeDTO>{OASDexTradeDTO.getExample()};
        response = (List<OASDexTradeDTO>) api.dexGetTradesCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASDexTradeDTO>{OASDexTradeDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASDexTradeDTO>{OASDexTradeDTO.getExample()};
        response = (List<OASDexTradeDTO>) api.dexGetTradesCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASDexTradeDTO>{OASDexTradeDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASDexTradeDTO>{OASDexTradeDTO.getExample()};
        response = (List<OASDexTradeDTO>) api.dexGetTradesCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Pools (current) 🔥
     *
     * Gets pools.
     */
    @isTest
    private static void sushiswapGetPoolsCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASSushiswapApi api;
        List<OASSushiswapPairDTO> response;
        List<OASSushiswapPairDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapPairDTO>{OASSushiswapPairDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapPairDTO>{OASSushiswapPairDTO.getExample()};
        response = (List<OASSushiswapPairDTO>) api.sushiswapGetPoolsCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapPairDTO>{OASSushiswapPairDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapPairDTO>{OASSushiswapPairDTO.getExample()};
        response = (List<OASSushiswapPairDTO>) api.sushiswapGetPoolsCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapPairDTO>{OASSushiswapPairDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapPairDTO>{OASSushiswapPairDTO.getExample()};
        response = (List<OASSushiswapPairDTO>) api.sushiswapGetPoolsCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Swaps (current) 🔥
     *
     * Gets swaps.
     */
    @isTest
    private static void sushiswapGetSwapsCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASSushiswapApi api;
        List<OASSushiswapSwapDTO> response;
        List<OASSushiswapSwapDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapSwapDTO>{OASSushiswapSwapDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapSwapDTO>{OASSushiswapSwapDTO.getExample()};
        response = (List<OASSushiswapSwapDTO>) api.sushiswapGetSwapsCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapSwapDTO>{OASSushiswapSwapDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapSwapDTO>{OASSushiswapSwapDTO.getExample()};
        response = (List<OASSushiswapSwapDTO>) api.sushiswapGetSwapsCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapSwapDTO>{OASSushiswapSwapDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapSwapDTO>{OASSushiswapSwapDTO.getExample()};
        response = (List<OASSushiswapSwapDTO>) api.sushiswapGetSwapsCurrent();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Tokens (current) 🔥
     *
     * Gets tokens.
     */
    @isTest
    private static void sushiswapGetTokensCurrentTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASSushiswapApi api;
        List<OASSushiswapTokenDTO> response;
        List<OASSushiswapTokenDTO> expectedResponse;
        String js = '';

        api = new OASSushiswapApi(new OASClient());

        js = JSON.serialize(new List<OASSushiswapTokenDTO>{OASSushiswapTokenDTO.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapTokenDTO>{OASSushiswapTokenDTO.getExample()};
        response = (List<OASSushiswapTokenDTO>) api.sushiswapGetTokensCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapTokenDTO>{OASSushiswapTokenDTO.getExample()});
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapTokenDTO>{OASSushiswapTokenDTO.getExample()};
        response = (List<OASSushiswapTokenDTO>) api.sushiswapGetTokensCurrent();
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASSushiswapTokenDTO>{OASSushiswapTokenDTO.getExample()});
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = new List<OASSushiswapTokenDTO>{OASSushiswapTokenDTO.getExample()};
        response = (List<OASSushiswapTokenDTO>) api.sushiswapGetTokensCurrent();
        System.assertEquals(expectedResponse, response);
    }
}