-module(openapi_api).

-export([ chains_chain_id_dapps_uniswapv3_bundle_current_get/1
        , chains_chain_id_dapps_uniswapv3_burns_current_get/1
        , chains_chain_id_dapps_uniswapv3_factory_current_get/1
        , chains_chain_id_dapps_uniswapv3_mints_current_get/1
        , chains_chain_id_dapps_uniswapv3_pools_current_get/1
        , chains_chain_id_dapps_uniswapv3_pools_day_data_current_get/1
        , chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get/1
        , chains_chain_id_dapps_uniswapv3_position_snapshots_current_get/1
        , chains_chain_id_dapps_uniswapv3_positions_current_get/1
        , chains_chain_id_dapps_uniswapv3_swaps_current_get/1
        , chains_chain_id_dapps_uniswapv3_ticks_current_get/1
        , chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get/1
        , chains_chain_id_dapps_uniswapv3_tokens_current_get/1
        , chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get/1
        , chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get/1
        , chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get/1
        ]).

-define(BASE_URL, "").

%% @doc GetBundles
%% 
-spec chains_chain_id_dapps_uniswapv3_bundle_current_get(binary()) ->
  openapi_utils:response().
chains_chain_id_dapps_uniswapv3_bundle_current_get(ChainId) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/chains/", ChainId, "/dapps/uniswapv3/bundle/current"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc GetBurns
%% 
-spec chains_chain_id_dapps_uniswapv3_burns_current_get(binary()) ->
  openapi_utils:response().
chains_chain_id_dapps_uniswapv3_burns_current_get(ChainId) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/chains/", ChainId, "/dapps/uniswapv3/burns/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc GetFactory
%% 
-spec chains_chain_id_dapps_uniswapv3_factory_current_get(binary()) ->
  openapi_utils:response().
chains_chain_id_dapps_uniswapv3_factory_current_get(ChainId) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/chains/", ChainId, "/dapps/uniswapv3/factory/current"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc GetMints
%% 
-spec chains_chain_id_dapps_uniswapv3_mints_current_get(binary()) ->
  openapi_utils:response().
chains_chain_id_dapps_uniswapv3_mints_current_get(ChainId) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/chains/", ChainId, "/dapps/uniswapv3/mints/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc GetPools
%% 
-spec chains_chain_id_dapps_uniswapv3_pools_current_get(binary()) ->
  openapi_utils:response().
chains_chain_id_dapps_uniswapv3_pools_current_get(ChainId) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/chains/", ChainId, "/dapps/uniswapv3/pools/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc GetPoolsDayData
%% 
-spec chains_chain_id_dapps_uniswapv3_pools_day_data_current_get(binary()) ->
  openapi_utils:response().
chains_chain_id_dapps_uniswapv3_pools_day_data_current_get(ChainId) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/chains/", ChainId, "/dapps/uniswapv3/poolsDayData/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc GetPoolsHourData
%% 
-spec chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get(binary()) ->
  openapi_utils:response().
chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get(ChainId) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/chains/", ChainId, "/dapps/uniswapv3/poolsHourData/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc GetPositionSnapshot
%% 
-spec chains_chain_id_dapps_uniswapv3_position_snapshots_current_get(binary()) ->
  openapi_utils:response().
chains_chain_id_dapps_uniswapv3_position_snapshots_current_get(ChainId) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/chains/", ChainId, "/dapps/uniswapv3/positionSnapshots/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc GetPositions
%% 
-spec chains_chain_id_dapps_uniswapv3_positions_current_get(binary()) ->
  openapi_utils:response().
chains_chain_id_dapps_uniswapv3_positions_current_get(ChainId) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/chains/", ChainId, "/dapps/uniswapv3/positions/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc GetSwaps
%% 
-spec chains_chain_id_dapps_uniswapv3_swaps_current_get(binary()) ->
  openapi_utils:response().
chains_chain_id_dapps_uniswapv3_swaps_current_get(ChainId) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/chains/", ChainId, "/dapps/uniswapv3/swaps/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc GetTicks
%% 
-spec chains_chain_id_dapps_uniswapv3_ticks_current_get(binary()) ->
  openapi_utils:response().
chains_chain_id_dapps_uniswapv3_ticks_current_get(ChainId) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/chains/", ChainId, "/dapps/uniswapv3/ticks/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc GetTicksDayData
%% 
-spec chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get(binary()) ->
  openapi_utils:response().
chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get(ChainId) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/chains/", ChainId, "/dapps/uniswapv3/ticksDayData/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc GetTokens
%% 
-spec chains_chain_id_dapps_uniswapv3_tokens_current_get(binary()) ->
  openapi_utils:response().
chains_chain_id_dapps_uniswapv3_tokens_current_get(ChainId) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/chains/", ChainId, "/dapps/uniswapv3/tokens/current"],
  QueryString = [<<"filter_token_id=">>, FilterTokenId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc GetTokensDayData
%% 
-spec chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get(binary()) ->
  openapi_utils:response().
chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get(ChainId) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/chains/", ChainId, "/dapps/uniswapv3/tokensDayData/current"],
  QueryString = [<<"filter_token_id=">>, FilterTokenId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc GetTokensHourData
%% 
-spec chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get(binary()) ->
  openapi_utils:response().
chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get(ChainId) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/chains/", ChainId, "/dapps/uniswapv3/tokensHourData/current"],
  QueryString = [<<"filter_token_id=">>, FilterTokenId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc GetUniswapDayData
%% 
-spec chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get(binary()) ->
  openapi_utils:response().
chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get(ChainId) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/chains/", ChainId, "/dapps/uniswapv3/uniswapDayData/current"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

