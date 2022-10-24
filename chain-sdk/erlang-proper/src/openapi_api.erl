-module(openapi_api).

-export([ chains_chain_id_dapps_sushiswap_users_historical_get/1
        , chains_chain_id_dapps_uniswapv2_users_historical_get/1
        ]).

-define(BASE_URL, "").

%% @doc 
%% 
-spec chains_chain_id_dapps_sushiswap_users_historical_get(binary()) ->
  openapi_utils:response().
chains_chain_id_dapps_sushiswap_users_historical_get(ChainId) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/chains/", ChainId, "/dapps/sushiswap/users/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec chains_chain_id_dapps_uniswapv2_users_historical_get(binary()) ->
  openapi_utils:response().
chains_chain_id_dapps_uniswapv2_users_historical_get(ChainId) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/chains/", ChainId, "/dapps/uniswapv2/users/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

