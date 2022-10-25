-module(openapi_api).

-export([ chains_chain_id_dapps_dex_withdraw_request_historical_get/1
        ]).

-define(BASE_URL, "").

%% @doc 
%% 
-spec chains_chain_id_dapps_dex_withdraw_request_historical_get(binary()) ->
  openapi_utils:response().
chains_chain_id_dapps_dex_withdraw_request_historical_get(ChainId) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/chains/", ChainId, "/dapps/dex/withdrawRequest/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"tokenId=">>, TokenId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

