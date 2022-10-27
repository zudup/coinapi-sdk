-module(openapi_api).

-export([ dapps_uniswapv3_bundle_current_get/0
        , dapps_uniswapv3_bundles_historical_get/0
        , dapps_uniswapv3_burns_current_get/0
        , dapps_uniswapv3_burns_historical_get/0
        , dapps_uniswapv3_day_data_historical_get/0
        , dapps_uniswapv3_factory_current_get/1
        , dapps_uniswapv3_factory_historical_get/0
        , dapps_uniswapv3_mints_current_get/0
        , dapps_uniswapv3_mints_historical_get/0
        , dapps_uniswapv3_poi_historical_get/0
        , dapps_uniswapv3_pool_day_data_historical_get/0
        , dapps_uniswapv3_pool_hour_data_historical_get/0
        , dapps_uniswapv3_pools_current_get/0
        , dapps_uniswapv3_pools_day_data_current_get/0
        , dapps_uniswapv3_pools_historical_get/0
        , dapps_uniswapv3_pools_hour_data_current_get/0
        , dapps_uniswapv3_position_snapshot_historical_get/0
        , dapps_uniswapv3_position_snapshots_current_get/0
        , dapps_uniswapv3_positions_current_get/0
        , dapps_uniswapv3_positions_historical_get/0
        , dapps_uniswapv3_swaps_current_get/0
        , dapps_uniswapv3_swaps_historical_get/0
        , dapps_uniswapv3_tick_day_data_historical_get/0
        , dapps_uniswapv3_ticks_current_get/0
        , dapps_uniswapv3_ticks_day_data_current_get/0
        , dapps_uniswapv3_ticks_historical_get/0
        , dapps_uniswapv3_token_day_data_historical_get/0
        , dapps_uniswapv3_token_hour_data_historical_get/0
        , dapps_uniswapv3_tokens_current_get/0
        , dapps_uniswapv3_tokens_day_data_current_get/0
        , dapps_uniswapv3_tokens_historical_get/0
        , dapps_uniswapv3_tokens_hour_data_current_get/0
        , dapps_uniswapv3_transactions_historical_get/0
        , dapps_uniswapv3_uniswap_day_data_current_get/0
        ]).

-define(BASE_URL, "").

%% @doc GetBundles
%% 
-spec dapps_uniswapv3_bundle_current_get() ->
  openapi_utils:response().
dapps_uniswapv3_bundle_current_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/bundle/current"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc 
%% 
-spec dapps_uniswapv3_bundles_historical_get() ->
  openapi_utils:response().
dapps_uniswapv3_bundles_historical_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/bundles/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc GetBurns
%% 
-spec dapps_uniswapv3_burns_current_get() ->
  openapi_utils:response().
dapps_uniswapv3_burns_current_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/burns/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec dapps_uniswapv3_burns_historical_get() ->
  openapi_utils:response().
dapps_uniswapv3_burns_historical_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/burns/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec dapps_uniswapv3_day_data_historical_get() ->
  openapi_utils:response().
dapps_uniswapv3_day_data_historical_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/dayData/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc GetFactory
%% 
-spec dapps_uniswapv3_factory_current_get(binary()) ->
  openapi_utils:response().
dapps_uniswapv3_factory_current_get(ChainId) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/factory/current"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc 
%% 
-spec dapps_uniswapv3_factory_historical_get() ->
  openapi_utils:response().
dapps_uniswapv3_factory_historical_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/factory/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc GetMints
%% 
-spec dapps_uniswapv3_mints_current_get() ->
  openapi_utils:response().
dapps_uniswapv3_mints_current_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/mints/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec dapps_uniswapv3_mints_historical_get() ->
  openapi_utils:response().
dapps_uniswapv3_mints_historical_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/mints/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec dapps_uniswapv3_poi_historical_get() ->
  openapi_utils:response().
dapps_uniswapv3_poi_historical_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/poi/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec dapps_uniswapv3_pool_day_data_historical_get() ->
  openapi_utils:response().
dapps_uniswapv3_pool_day_data_historical_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/poolDayData/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec dapps_uniswapv3_pool_hour_data_historical_get() ->
  openapi_utils:response().
dapps_uniswapv3_pool_hour_data_historical_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/poolHourData/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc GetPools
%% 
-spec dapps_uniswapv3_pools_current_get() ->
  openapi_utils:response().
dapps_uniswapv3_pools_current_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/pools/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc GetPoolsDayData
%% 
-spec dapps_uniswapv3_pools_day_data_current_get() ->
  openapi_utils:response().
dapps_uniswapv3_pools_day_data_current_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/poolsDayData/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec dapps_uniswapv3_pools_historical_get() ->
  openapi_utils:response().
dapps_uniswapv3_pools_historical_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/pools/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc GetPoolsHourData
%% 
-spec dapps_uniswapv3_pools_hour_data_current_get() ->
  openapi_utils:response().
dapps_uniswapv3_pools_hour_data_current_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/poolsHourData/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec dapps_uniswapv3_position_snapshot_historical_get() ->
  openapi_utils:response().
dapps_uniswapv3_position_snapshot_historical_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/positionSnapshot/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc GetPositionSnapshot
%% 
-spec dapps_uniswapv3_position_snapshots_current_get() ->
  openapi_utils:response().
dapps_uniswapv3_position_snapshots_current_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/positionSnapshots/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc GetPositions
%% 
-spec dapps_uniswapv3_positions_current_get() ->
  openapi_utils:response().
dapps_uniswapv3_positions_current_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/positions/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec dapps_uniswapv3_positions_historical_get() ->
  openapi_utils:response().
dapps_uniswapv3_positions_historical_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/positions/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc GetSwaps
%% 
-spec dapps_uniswapv3_swaps_current_get() ->
  openapi_utils:response().
dapps_uniswapv3_swaps_current_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/swaps/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec dapps_uniswapv3_swaps_historical_get() ->
  openapi_utils:response().
dapps_uniswapv3_swaps_historical_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/swaps/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec dapps_uniswapv3_tick_day_data_historical_get() ->
  openapi_utils:response().
dapps_uniswapv3_tick_day_data_historical_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/tickDayData/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc GetTicks
%% 
-spec dapps_uniswapv3_ticks_current_get() ->
  openapi_utils:response().
dapps_uniswapv3_ticks_current_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/ticks/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc GetTicksDayData
%% 
-spec dapps_uniswapv3_ticks_day_data_current_get() ->
  openapi_utils:response().
dapps_uniswapv3_ticks_day_data_current_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/ticksDayData/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec dapps_uniswapv3_ticks_historical_get() ->
  openapi_utils:response().
dapps_uniswapv3_ticks_historical_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/ticks/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec dapps_uniswapv3_token_day_data_historical_get() ->
  openapi_utils:response().
dapps_uniswapv3_token_day_data_historical_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/tokenDayData/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"tokenId=">>, TokenId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec dapps_uniswapv3_token_hour_data_historical_get() ->
  openapi_utils:response().
dapps_uniswapv3_token_hour_data_historical_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/tokenHourData/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"tokenId=">>, TokenId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc GetTokens
%% 
-spec dapps_uniswapv3_tokens_current_get() ->
  openapi_utils:response().
dapps_uniswapv3_tokens_current_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/tokens/current"],
  QueryString = [<<"filter_token_id=">>, FilterTokenId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc GetTokensDayData
%% 
-spec dapps_uniswapv3_tokens_day_data_current_get() ->
  openapi_utils:response().
dapps_uniswapv3_tokens_day_data_current_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/tokensDayData/current"],
  QueryString = [<<"filter_token_id=">>, FilterTokenId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec dapps_uniswapv3_tokens_historical_get() ->
  openapi_utils:response().
dapps_uniswapv3_tokens_historical_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/tokens/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"tokenId=">>, TokenId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc GetTokensHourData
%% 
-spec dapps_uniswapv3_tokens_hour_data_current_get() ->
  openapi_utils:response().
dapps_uniswapv3_tokens_hour_data_current_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/tokensHourData/current"],
  QueryString = [<<"filter_token_id=">>, FilterTokenId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% 
-spec dapps_uniswapv3_transactions_historical_get() ->
  openapi_utils:response().
dapps_uniswapv3_transactions_historical_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/transactions/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc GetUniswapDayData
%% 
-spec dapps_uniswapv3_uniswap_day_data_current_get() ->
  openapi_utils:response().
dapps_uniswapv3_uniswap_day_data_current_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/uniswapDayData/current"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

