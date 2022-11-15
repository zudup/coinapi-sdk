-module(openapi_api).

-export([ uniswap_v3_get_bundle_v3_dtos_(historical)/0
        , uniswap_v3_get_bundles_(current)/0
        , uniswap_v3_get_bundles_(historical)/0
        , uniswap_v3_get_burn_v3_dtos_(historical)/0
        , uniswap_v3_get_burns_(current)/0
        , uniswap_v3_get_burns_(historical)/0
        , uniswap_v3_get_day_data_(current)/0
        , uniswap_v3_get_day_data_(historical)/0
        , uniswap_v3_get_factory_(current)/0
        , uniswap_v3_get_factory_(historical)/0
        , uniswap_v3_get_factory_v3_dtos_(historical)/0
        , uniswap_v3_get_mint_v3_dtos_(historical)/0
        , uniswap_v3_get_mints_(current)/0
        , uniswap_v3_get_mints_(historical)/0
        , uniswap_v3_get_pool_day_data_v3_dtos_(historical)/0
        , uniswap_v3_get_pool_hour_data_v3_dtos_(historical)/0
        , uniswap_v3_get_pool_v3_dtos_(historical)/0
        , uniswap_v3_get_pools_(current)/0
        , uniswap_v3_get_pools_(historical)/0
        , uniswap_v3_get_pools_day_data_(current)/0
        , uniswap_v3_get_pools_day_data_(historical)/0
        , uniswap_v3_get_pools_hour_data_(current)/0
        , uniswap_v3_get_pools_hour_data_(historical)/0
        , uniswap_v3_get_position_snapshot_v3_dtos_(historical)/0
        , uniswap_v3_get_position_v3_dtos_(historical)/0
        , uniswap_v3_get_positions_(current)/0
        , uniswap_v3_get_positions_(historical)/0
        , uniswap_v3_get_positions_snaphots_(historical)/0
        , uniswap_v3_get_positions_snapshots_(current)/0
        , uniswap_v3_get_swap_v3_dtos_(historical)/0
        , uniswap_v3_get_swaps_(current)/0
        , uniswap_v3_get_swaps_(historical)/0
        , uniswap_v3_get_tick_day_data_v3_dtos_(historical)/0
        , uniswap_v3_get_tick_v3_dtos_(historical)/0
        , uniswap_v3_get_ticks_(current)/0
        , uniswap_v3_get_ticks_(historical)/0
        , uniswap_v3_get_ticks_day_data_(current)/0
        , uniswap_v3_get_ticks_day_data_(historical)/0
        , uniswap_v3_get_token_hour_data_v3_dtos_(historical)/0
        , uniswap_v3_get_token_v3_day_data_dtos_(historical)/0
        , uniswap_v3_get_token_v3_dtos_(historical)/0
        , uniswap_v3_get_tokens_(current)/0
        , uniswap_v3_get_tokens_(historical)/0
        , uniswap_v3_get_tokens_day_data_(current)/0
        , uniswap_v3_get_tokens_day_data_(historical)/0
        , uniswap_v3_get_tokens_hour_data_(current)/0
        , uniswap_v3_get_tokens_hour_data_(historical)/0
        , uniswap_v3_get_transaction_v3_dtos_(historical)/0
        , uniswap_v3_get_transactions_(historical)/0
        , uniswap_v3_get_uniswap_day_data_v3_dtos_(historical)/0
        ]).

-define(BASE_URL, "").

%% @doc BundleV3DTOs (historical) 🔥
%% Gets BundleV3DTOs.
-spec uniswap_v3_get_bundle_v3_dtos_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_bundle_v3_dtos_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/BundleV3DTOs/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

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

%% @doc Bundles (historical)
%% Gets bundles.
-spec uniswap_v3_get_bundles_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_bundles_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/bundles/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc BurnV3DTOs (historical) 🔥
%% Gets BurnV3DTOs.
-spec uniswap_v3_get_burn_v3_dtos_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_burn_v3_dtos_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/BurnV3DTOs/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

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

%% @doc Burns (historical)
%% Gets burns.
-spec uniswap_v3_get_burns_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_burns_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/burns/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

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

%% @doc DayData (historical)
%% Gets uniswapv3 day data.
-spec uniswap_v3_get_day_data_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_day_data_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/dayData/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Factory (current)
%% Gets factory.
-spec uniswap_v3_get_factory_(current)() ->
  openapi_utils:response().
uniswap_v3_get_factory_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/factory/current"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Factory (historical)
%% Gets factory.
-spec uniswap_v3_get_factory_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_factory_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/factory/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc FactoryV3DTOs (historical) 🔥
%% Gets FactoryV3DTOs.
-spec uniswap_v3_get_factory_v3_dtos_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_factory_v3_dtos_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/FactoryV3DTOs/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc MintV3DTOs (historical) 🔥
%% Gets MintV3DTOs.
-spec uniswap_v3_get_mint_v3_dtos_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_mint_v3_dtos_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/MintV3DTOs/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

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

%% @doc Mints (historical)
%% Gets mints.
-spec uniswap_v3_get_mints_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_mints_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/mints/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc PoolDayDataV3DTOs (historical) 🔥
%% Gets PoolDayDataV3DTOs.
-spec uniswap_v3_get_pool_day_data_v3_dtos_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_pool_day_data_v3_dtos_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/PoolDayDataV3DTOs/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc PoolHourDataV3DTOs (historical) 🔥
%% Gets PoolHourDataV3DTOs.
-spec uniswap_v3_get_pool_hour_data_v3_dtos_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_pool_hour_data_v3_dtos_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/PoolHourDataV3DTOs/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc PoolV3DTOs (historical) 🔥
%% Gets PoolV3DTOs.
-spec uniswap_v3_get_pool_v3_dtos_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_pool_v3_dtos_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/PoolV3DTOs/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

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

%% @doc Pools (historical) 🔥
%% Gets pools.
-spec uniswap_v3_get_pools_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_pools_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/pools/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

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

%% @doc PoolsDayData (historical)
%% Gets pools day data.
-spec uniswap_v3_get_pools_day_data_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_pools_day_data_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/poolsDayData/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

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

%% @doc PoolsHourData (historical)
%% Gets pools hour data.
-spec uniswap_v3_get_pools_hour_data_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_pools_hour_data_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/poolsHourData/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc PositionSnapshotV3DTOs (historical) 🔥
%% Gets PositionSnapshotV3DTOs.
-spec uniswap_v3_get_position_snapshot_v3_dtos_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_position_snapshot_v3_dtos_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/PositionSnapshotV3DTOs/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc PositionV3DTOs (historical) 🔥
%% Gets PositionV3DTOs.
-spec uniswap_v3_get_position_v3_dtos_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_position_v3_dtos_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/PositionV3DTOs/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

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

%% @doc Positions (historical)
%% Gets positions.
-spec uniswap_v3_get_positions_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_positions_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/positions/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc PositionsSnaphots (historical)
%% Gets positions snapshots.
-spec uniswap_v3_get_positions_snaphots_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_positions_snaphots_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/positionsSnapshots/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

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

%% @doc SwapV3DTOs (historical) 🔥
%% Gets SwapV3DTOs.
-spec uniswap_v3_get_swap_v3_dtos_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_swap_v3_dtos_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/SwapV3DTOs/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

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

%% @doc Swaps (historical) 🔥
%% Gets swaps.
-spec uniswap_v3_get_swaps_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_swaps_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/swaps/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc TickDayDataV3DTOs (historical) 🔥
%% Gets TickDayDataV3DTOs.
-spec uniswap_v3_get_tick_day_data_v3_dtos_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_tick_day_data_v3_dtos_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/TickDayDataV3DTOs/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc TickV3DTOs (historical) 🔥
%% Gets TickV3DTOs.
-spec uniswap_v3_get_tick_v3_dtos_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_tick_v3_dtos_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/TickV3DTOs/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

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

%% @doc Ticks (historical)
%% Gets ticks.
-spec uniswap_v3_get_ticks_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_ticks_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/ticks/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

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

%% @doc TicksDayData (historical)
%% Gets ticks day data.
-spec uniswap_v3_get_ticks_day_data_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_ticks_day_data_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/ticksDayData/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc TokenHourDataV3DTOs (historical) 🔥
%% Gets TokenHourDataV3DTOs.
-spec uniswap_v3_get_token_hour_data_v3_dtos_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_token_hour_data_v3_dtos_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/TokenHourDataV3DTOs/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc TokenV3DayDataDTOs (historical) 🔥
%% Gets TokenV3DayDataDTOs.
-spec uniswap_v3_get_token_v3_day_data_dtos_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_token_v3_day_data_dtos_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/TokenV3DayDataDTOs/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc TokenV3DTOs (historical) 🔥
%% Gets TokenV3DTOs.
-spec uniswap_v3_get_token_v3_dtos_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_token_v3_dtos_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/TokenV3DTOs/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

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

%% @doc Tokens (historical) 🔥
%% Gets tokens.
-spec uniswap_v3_get_tokens_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_tokens_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/tokens/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"tokenId=">>, TokenId, <<"&">>],

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

%% @doc TokensDayData (historical)
%% Gets tokens day data.
-spec uniswap_v3_get_tokens_day_data_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_tokens_day_data_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/tokensDayData/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"tokenId=">>, TokenId, <<"&">>],

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

%% @doc TokensHourData (historical)
%% Gets tokens hour data.
-spec uniswap_v3_get_tokens_hour_data_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_tokens_hour_data_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/tokensHourData/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"tokenId=">>, TokenId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc TransactionV3DTOs (historical) 🔥
%% Gets TransactionV3DTOs.
-spec uniswap_v3_get_transaction_v3_dtos_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_transaction_v3_dtos_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/TransactionV3DTOs/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Transactions (historical)
%% Gets transactions.
-spec uniswap_v3_get_transactions_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_transactions_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/transactions/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc UniswapDayDataV3DTOs (historical) 🔥
%% Gets UniswapDayDataV3DTOs.
-spec uniswap_v3_get_uniswap_day_data_v3_dtos_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_uniswap_day_data_v3_dtos_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/UniswapDayDataV3DTOs/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"poolId=">>, PoolId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

