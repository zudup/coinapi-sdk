-module(openapi_api).

-export([ uniswap_v3_get_bundle_v3s_(historical)/0
        , uniswap_v3_get_bundles_(current)/0
        , uniswap_v3_get_burn_v3s_(historical)/0
        , uniswap_v3_get_burns_(current)/0
        , uniswap_v3_get_day_data_(current)/0
        , uniswap_v3_get_factory_(current)/0
        , uniswap_v3_get_factory_v3s_(historical)/0
        , uniswap_v3_get_mint_v3s_(historical)/0
        , uniswap_v3_get_mints_(current)/0
        , uniswap_v3_get_pool_day_data_v3s_(historical)/0
        , uniswap_v3_get_pool_hour_data_v3s_(historical)/0
        , uniswap_v3_get_pool_v3s_(historical)/0
        , uniswap_v3_get_pools_(current)/0
        , uniswap_v3_get_pools_day_data_(current)/0
        , uniswap_v3_get_pools_hour_data_(current)/0
        , uniswap_v3_get_position_snapshot_v3s_(historical)/0
        , uniswap_v3_get_position_v3s_(historical)/0
        , uniswap_v3_get_positions_(current)/0
        , uniswap_v3_get_positions_snapshots_(current)/0
        , uniswap_v3_get_swap_v3s_(historical)/0
        , uniswap_v3_get_swaps_(current)/0
        , uniswap_v3_get_tick_day_data_v3s_(historical)/0
        , uniswap_v3_get_tick_v3s_(historical)/0
        , uniswap_v3_get_ticks_(current)/0
        , uniswap_v3_get_ticks_day_data_(current)/0
        , uniswap_v3_get_token_hour_data_v3s_(historical)/0
        , uniswap_v3_get_token_v3_day_datas_(historical)/0
        , uniswap_v3_get_token_v3s_(historical)/0
        , uniswap_v3_get_tokens_(current)/0
        , uniswap_v3_get_tokens_day_data_(current)/0
        , uniswap_v3_get_tokens_hour_data_(current)/0
        , uniswap_v3_get_transaction_v3s_(historical)/0
        , uniswap_v3_get_uniswap_day_data_v3s_(historical)/0
        ]).

-define(BASE_URL, "").

%% @doc BundleV3s (historical) 🔥
%% Gets bundlev3s.
-spec uniswap_v3_get_bundle_v3s_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_bundle_v3s_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/bundlev3s/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Bundles (current)
%% Gets bundles.
-spec uniswap_v3_get_bundles_(current)() ->
  openapi_utils:response().
uniswap_v3_get_bundles_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/bundles/current"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc BurnV3s (historical) 🔥
%% Gets burnv3s.
-spec uniswap_v3_get_burn_v3s_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_burn_v3s_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/burnv3s/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>, <<"pool=">>, Pool, <<"&">>, <<"token_0=">>, Token0, <<"&">>, <<"token_1=">>, Token1, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Burns (current)
%% Gets burns.
-spec uniswap_v3_get_burns_(current)() ->
  openapi_utils:response().
uniswap_v3_get_burns_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/burns/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc DayData (current)
%% Gets uniswapv3 day data.
-spec uniswap_v3_get_day_data_(current)() ->
  openapi_utils:response().
uniswap_v3_get_day_data_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/dayData/current"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Factory (current)
%% Gets factory.
-spec uniswap_v3_get_factory_(current)() ->
  openapi_utils:response().
uniswap_v3_get_factory_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/factory/current"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc FactoryV3s (historical) 🔥
%% Gets factoryv3s.
-spec uniswap_v3_get_factory_v3s_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_factory_v3s_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/factoryv3s/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc MintV3s (historical) 🔥
%% Gets mintv3s.
-spec uniswap_v3_get_mint_v3s_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_mint_v3s_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/mintv3s/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>, <<"pool=">>, Pool, <<"&">>, <<"token_0=">>, Token0, <<"&">>, <<"token_1=">>, Token1, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Mints (current)
%% Gets mints.
-spec uniswap_v3_get_mints_(current)() ->
  openapi_utils:response().
uniswap_v3_get_mints_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/mints/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc PoolDayDataV3s (historical) 🔥
%% Gets pooldaydatav3s.
-spec uniswap_v3_get_pool_day_data_v3s_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_pool_day_data_v3s_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/pooldaydatav3s/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>, <<"pool=">>, Pool, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc PoolHourDataV3s (historical) 🔥
%% Gets poolhourdatav3s.
-spec uniswap_v3_get_pool_hour_data_v3s_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_pool_hour_data_v3s_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/poolhourdatav3s/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>, <<"pool=">>, Pool, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc PoolV3s (historical) 🔥
%% Gets poolv3s.
-spec uniswap_v3_get_pool_v3s_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_pool_v3s_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/poolv3s/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>, <<"token_0=">>, Token0, <<"&">>, <<"token_1=">>, Token1, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Pools (current) 🔥
%% Gets pools.
-spec uniswap_v3_get_pools_(current)() ->
  openapi_utils:response().
uniswap_v3_get_pools_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/pools/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc PoolsDayData (current)
%% Gets pools day data.
-spec uniswap_v3_get_pools_day_data_(current)() ->
  openapi_utils:response().
uniswap_v3_get_pools_day_data_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/poolsDayData/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc PoolsHourData (current)
%% Gets pools hour data.
-spec uniswap_v3_get_pools_hour_data_(current)() ->
  openapi_utils:response().
uniswap_v3_get_pools_hour_data_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/poolsHourData/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc PositionSnapshotV3s (historical) 🔥
%% Gets positionsnapshotv3s.
-spec uniswap_v3_get_position_snapshot_v3s_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_position_snapshot_v3s_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/positionsnapshotv3s/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>, <<"pool=">>, Pool, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc PositionV3s (historical) 🔥
%% Gets positionv3s.
-spec uniswap_v3_get_position_v3s_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_position_v3s_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/positionv3s/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>, <<"pool=">>, Pool, <<"&">>, <<"token_0=">>, Token0, <<"&">>, <<"token_1=">>, Token1, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Positions (current)
%% Gets positions.
-spec uniswap_v3_get_positions_(current)() ->
  openapi_utils:response().
uniswap_v3_get_positions_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/positions/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc PositionsSnapshots (current)
%% Gets positions snapshots.
-spec uniswap_v3_get_positions_snapshots_(current)() ->
  openapi_utils:response().
uniswap_v3_get_positions_snapshots_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/positionSnapshots/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc SwapV3s (historical) 🔥
%% Gets swapv3s.
-spec uniswap_v3_get_swap_v3s_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_swap_v3s_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/swapv3s/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>, <<"pool=">>, Pool, <<"&">>, <<"token_0=">>, Token0, <<"&">>, <<"token_1=">>, Token1, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Swaps (current) 🔥
%% Gets swaps.
-spec uniswap_v3_get_swaps_(current)() ->
  openapi_utils:response().
uniswap_v3_get_swaps_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/swaps/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc TickDayDataV3s (historical) 🔥
%% Gets tickdaydatav3s.
-spec uniswap_v3_get_tick_day_data_v3s_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_tick_day_data_v3s_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/tickdaydatav3s/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>, <<"pool=">>, Pool, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc TickV3s (historical) 🔥
%% Gets tickv3s.
-spec uniswap_v3_get_tick_v3s_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_tick_v3s_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/tickv3s/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>, <<"pool=">>, Pool, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Ticks (current)
%% Gets ticks.
-spec uniswap_v3_get_ticks_(current)() ->
  openapi_utils:response().
uniswap_v3_get_ticks_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/ticks/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc TicksDayData (current)
%% Gets ticks day data.
-spec uniswap_v3_get_ticks_day_data_(current)() ->
  openapi_utils:response().
uniswap_v3_get_ticks_day_data_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/ticksDayData/current"],
  QueryString = [<<"filter_pool_id=">>, FilterPoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc TokenHourDataV3s (historical) 🔥
%% Gets tokenhourdatav3s.
-spec uniswap_v3_get_token_hour_data_v3s_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_token_hour_data_v3s_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/tokenhourdatav3s/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc TokenV3DayDatas (historical) 🔥
%% Gets tokenv3daydatas.
-spec uniswap_v3_get_token_v3_day_datas_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_token_v3_day_datas_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/tokenv3daydatas/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc TokenV3s (historical) 🔥
%% Gets tokenv3s.
-spec uniswap_v3_get_token_v3s_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_token_v3s_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/tokenv3s/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>, <<"symbol=">>, Symbol, <<"&">>, <<"name=">>, Name, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Tokens (current) 🔥
%% Gets tokens.
-spec uniswap_v3_get_tokens_(current)() ->
  openapi_utils:response().
uniswap_v3_get_tokens_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/tokens/current"],
  QueryString = [<<"filter_token_id=">>, FilterTokenId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc TokensDayData (current)
%% Gets tokens day data.
-spec uniswap_v3_get_tokens_day_data_(current)() ->
  openapi_utils:response().
uniswap_v3_get_tokens_day_data_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/tokensDayData/current"],
  QueryString = [<<"filter_token_id=">>, FilterTokenId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc TokensHourData (current)
%% Gets tokens hour data.
-spec uniswap_v3_get_tokens_hour_data_(current)() ->
  openapi_utils:response().
uniswap_v3_get_tokens_hour_data_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/tokensHourData/current"],
  QueryString = [<<"filter_token_id=">>, FilterTokenId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc TransactionV3s (historical) 🔥
%% Gets transactionv3s.
-spec uniswap_v3_get_transaction_v3s_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_transaction_v3s_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/transactionv3s/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc UniswapDayDataV3s (historical) 🔥
%% Gets uniswapdaydatav3s.
-spec uniswap_v3_get_uniswap_day_data_v3s_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_uniswap_day_data_v3s_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/uniswapdaydatav3s/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

