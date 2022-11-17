-module(openapi_api).

-export([ uniswap_v3_bundles_(current)/0
        , uniswap_v3_burns_(current)/0
        , uniswap_v3_factorys_(current)/0
        , uniswap_v3_get_bundles_(historical)/0
        , uniswap_v3_get_burns_(historical)/0
        , uniswap_v3_get_factorys_(historical)/0
        , uniswap_v3_get_mints_(historical)/0
        , uniswap_v3_get_pool_day_datas_(historical)/0
        , uniswap_v3_get_pool_hour_datas_(historical)/0
        , uniswap_v3_get_pools_(historical)/0
        , uniswap_v3_get_position_snapshots_(historical)/0
        , uniswap_v3_get_positions_(historical)/0
        , uniswap_v3_get_swaps_(historical)/0
        , uniswap_v3_get_tick_day_datas_(historical)/0
        , uniswap_v3_get_ticks_(historical)/0
        , uniswap_v3_get_token_hour_datas_(historical)/0
        , uniswap_v3_get_token_v3_day_datas_(historical)/0
        , uniswap_v3_get_tokens_(historical)/0
        , uniswap_v3_get_transactions_(historical)/0
        , uniswap_v3_get_uniswap_day_datas_(historical)/0
        , uniswap_v3_mints_(current)/0
        , uniswap_v3_pool_day_datas_(current)/0
        , uniswap_v3_pool_hour_datas_(current)/0
        , uniswap_v3_pools_(current)/0
        , uniswap_v3_position_snapshots_(current)/0
        , uniswap_v3_positions_(current)/0
        , uniswap_v3_swaps_(current)/0
        , uniswap_v3_tick_day_datas_(current)/0
        , uniswap_v3_ticks_(current)/0
        , uniswap_v3_token_hour_datas_(current)/0
        , uniswap_v3_token_v3_day_datas_(current)/0
        , uniswap_v3_tokens_(current)/0
        , uniswap_v3_transactions_(current)/0
        , uniswap_v3_uniswap_day_datas_(current)/0
        ]).

-define(BASE_URL, "").

%% @doc Bundles (current)
%% Gets bundles.
-spec uniswap_v3_bundles_(current)() ->
  openapi_utils:response().
uniswap_v3_bundles_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/bundles/current"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Burns (current)
%% Gets burns.
-spec uniswap_v3_burns_(current)() ->
  openapi_utils:response().
uniswap_v3_burns_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/burns/current"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Factorys (current)
%% Gets factorys.
-spec uniswap_v3_factorys_(current)() ->
  openapi_utils:response().
uniswap_v3_factorys_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/factorys/current"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Bundles (historical)
%% Gets bundles.
-spec uniswap_v3_get_bundles_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_bundles_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/bundles/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Burns (historical)
%% Gets burns.
-spec uniswap_v3_get_burns_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_burns_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/burns/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>, <<"pool=">>, Pool, <<"&">>, <<"token_0=">>, Token0, <<"&">>, <<"token_1=">>, Token1, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Factorys (historical)
%% Gets factorys.
-spec uniswap_v3_get_factorys_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_factorys_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/factorys/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Mints (historical)
%% Gets mints.
-spec uniswap_v3_get_mints_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_mints_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/mints/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>, <<"pool=">>, Pool, <<"&">>, <<"token_0=">>, Token0, <<"&">>, <<"token_1=">>, Token1, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc PoolDayDatas (historical)
%% Gets poolDayDatas.
-spec uniswap_v3_get_pool_day_datas_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_pool_day_datas_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/poolDayDatas/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>, <<"pool=">>, Pool, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc PoolHourDatas (historical)
%% Gets poolHourDatas.
-spec uniswap_v3_get_pool_hour_datas_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_pool_hour_datas_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/poolHourDatas/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>, <<"pool=">>, Pool, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Pools (historical)
%% Gets pools.
-spec uniswap_v3_get_pools_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_pools_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/pools/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>, <<"token_0=">>, Token0, <<"&">>, <<"token_1=">>, Token1, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc PositionSnapshots (historical)
%% Gets positionSnapshots.
-spec uniswap_v3_get_position_snapshots_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_position_snapshots_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/positionSnapshots/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>, <<"pool=">>, Pool, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Positions (historical)
%% Gets positions.
-spec uniswap_v3_get_positions_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_positions_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/positions/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>, <<"pool=">>, Pool, <<"&">>, <<"token_0=">>, Token0, <<"&">>, <<"token_1=">>, Token1, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Swaps (historical)
%% Gets swaps.
-spec uniswap_v3_get_swaps_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_swaps_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/swaps/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>, <<"pool=">>, Pool, <<"&">>, <<"token_0=">>, Token0, <<"&">>, <<"token_1=">>, Token1, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc TickDayDatas (historical)
%% Gets tickDayDatas.
-spec uniswap_v3_get_tick_day_datas_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_tick_day_datas_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/tickDayDatas/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>, <<"pool=">>, Pool, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Ticks (historical)
%% Gets ticks.
-spec uniswap_v3_get_ticks_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_ticks_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/ticks/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>, <<"pool=">>, Pool, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc TokenHourDatas (historical)
%% Gets tokenHourDatas.
-spec uniswap_v3_get_token_hour_datas_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_token_hour_datas_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/tokenHourDatas/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc TokenV3DayDatas (historical)
%% Gets tokenV3DayDatas.
-spec uniswap_v3_get_token_v3_day_datas_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_token_v3_day_datas_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/tokenV3DayDatas/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Tokens (historical)
%% Gets tokens.
-spec uniswap_v3_get_tokens_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_tokens_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/tokens/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>, <<"symbol=">>, Symbol, <<"&">>, <<"name=">>, Name, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Transactions (historical)
%% Gets transactions.
-spec uniswap_v3_get_transactions_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_transactions_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/transactions/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc UniswapDayDatas (historical)
%% Gets uniswapDayDatas.
-spec uniswap_v3_get_uniswap_day_datas_(historical)() ->
  openapi_utils:response().
uniswap_v3_get_uniswap_day_datas_(historical)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/uniswapDayDatas/historical"],
  QueryString = [<<"startBlock=">>, StartBlock, <<"&">>, <<"endBlock=">>, EndBlock, <<"&">>, <<"startDate=">>, StartDate, <<"&">>, <<"endDate=">>, EndDate, <<"&">>, <<"id=">>, Id, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc Mints (current)
%% Gets mints.
-spec uniswap_v3_mints_(current)() ->
  openapi_utils:response().
uniswap_v3_mints_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/mints/current"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc PoolDayDatas (current)
%% Gets poolDayDatas.
-spec uniswap_v3_pool_day_datas_(current)() ->
  openapi_utils:response().
uniswap_v3_pool_day_datas_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/poolDayDatas/current"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc PoolHourDatas (current)
%% Gets poolHourDatas.
-spec uniswap_v3_pool_hour_datas_(current)() ->
  openapi_utils:response().
uniswap_v3_pool_hour_datas_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/poolHourDatas/current"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Pools (current)
%% Gets pools.
-spec uniswap_v3_pools_(current)() ->
  openapi_utils:response().
uniswap_v3_pools_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/pools/current"],
  QueryString = [<<"id=">>, Id, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc PositionSnapshots (current)
%% Gets positionSnapshots.
-spec uniswap_v3_position_snapshots_(current)() ->
  openapi_utils:response().
uniswap_v3_position_snapshots_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/positionSnapshots/current"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Positions (current)
%% Gets positions.
-spec uniswap_v3_positions_(current)() ->
  openapi_utils:response().
uniswap_v3_positions_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/positions/current"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Swaps (current)
%% Gets swaps.
-spec uniswap_v3_swaps_(current)() ->
  openapi_utils:response().
uniswap_v3_swaps_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/swaps/current"],
  QueryString = [<<"pool=">>, Pool, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc TickDayDatas (current)
%% Gets tickDayDatas.
-spec uniswap_v3_tick_day_datas_(current)() ->
  openapi_utils:response().
uniswap_v3_tick_day_datas_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/tickDayDatas/current"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Ticks (current)
%% Gets ticks.
-spec uniswap_v3_ticks_(current)() ->
  openapi_utils:response().
uniswap_v3_ticks_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/ticks/current"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc TokenHourDatas (current)
%% Gets tokenHourDatas.
-spec uniswap_v3_token_hour_datas_(current)() ->
  openapi_utils:response().
uniswap_v3_token_hour_datas_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/tokenHourDatas/current"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc TokenV3DayDatas (current)
%% Gets tokenV3DayDatas.
-spec uniswap_v3_token_v3_day_datas_(current)() ->
  openapi_utils:response().
uniswap_v3_token_v3_day_datas_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/tokenV3DayDatas/current"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Tokens (current)
%% Gets tokens.
-spec uniswap_v3_tokens_(current)() ->
  openapi_utils:response().
uniswap_v3_tokens_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/tokens/current"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc Transactions (current)
%% Gets transactions.
-spec uniswap_v3_transactions_(current)() ->
  openapi_utils:response().
uniswap_v3_transactions_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/transactions/current"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc UniswapDayDatas (current)
%% Gets uniswapDayDatas.
-spec uniswap_v3_uniswap_day_datas_(current)() ->
  openapi_utils:response().
uniswap_v3_uniswap_day_datas_(current)() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/dapps/uniswapv3/uniswapDayDatas/current"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

