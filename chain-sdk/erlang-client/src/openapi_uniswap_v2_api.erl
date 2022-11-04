-module(openapi_uniswap_v2_api).

-export([dapps_uniswapv2_bundles_historical_get/1, dapps_uniswapv2_bundles_historical_get/2,
         dapps_uniswapv2_burns_historical_get/1, dapps_uniswapv2_burns_historical_get/2,
         dapps_uniswapv2_day_data_historical_get/1, dapps_uniswapv2_day_data_historical_get/2,
         dapps_uniswapv2_factory_historical_get/1, dapps_uniswapv2_factory_historical_get/2,
         dapps_uniswapv2_liquidity_position_historical_get/1, dapps_uniswapv2_liquidity_position_historical_get/2,
         dapps_uniswapv2_liquidity_position_snapshots_historical_get/1, dapps_uniswapv2_liquidity_position_snapshots_historical_get/2,
         dapps_uniswapv2_mints_historical_get/1, dapps_uniswapv2_mints_historical_get/2,
         dapps_uniswapv2_pool_day_data_historical_get/1, dapps_uniswapv2_pool_day_data_historical_get/2,
         dapps_uniswapv2_pool_hour_data_historical_get/1, dapps_uniswapv2_pool_hour_data_historical_get/2,
         dapps_uniswapv2_pools_current_get/1, dapps_uniswapv2_pools_current_get/2,
         dapps_uniswapv2_pools_historical_get/1, dapps_uniswapv2_pools_historical_get/2,
         dapps_uniswapv2_swaps_current_get/1, dapps_uniswapv2_swaps_current_get/2,
         dapps_uniswapv2_swaps_historical_get/1, dapps_uniswapv2_swaps_historical_get/2,
         dapps_uniswapv2_token_day_data_historical_get/1, dapps_uniswapv2_token_day_data_historical_get/2,
         dapps_uniswapv2_tokens_current_get/1, dapps_uniswapv2_tokens_current_get/2,
         dapps_uniswapv2_tokens_historical_get/1, dapps_uniswapv2_tokens_historical_get/2,
         dapps_uniswapv2_transactions_historical_get/1, dapps_uniswapv2_transactions_historical_get/2,
         dapps_uniswapv2_users_historical_get/1, dapps_uniswapv2_users_historical_get/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec dapps_uniswapv2_bundles_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_bundles_historical_get(Ctx) ->
    dapps_uniswapv2_bundles_historical_get(Ctx, #{}).

-spec dapps_uniswapv2_bundles_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_bundles_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/bundles/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv2_burns_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_burns_historical_get(Ctx) ->
    dapps_uniswapv2_burns_historical_get(Ctx, #{}).

-spec dapps_uniswapv2_burns_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_burns_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/burns/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv2_day_data_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_day_data_historical_get(Ctx) ->
    dapps_uniswapv2_day_data_historical_get(Ctx, #{}).

-spec dapps_uniswapv2_day_data_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_day_data_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/dayData/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv2_factory_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_factory_historical_get(Ctx) ->
    dapps_uniswapv2_factory_historical_get(Ctx, #{}).

-spec dapps_uniswapv2_factory_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_factory_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/factory/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv2_liquidity_position_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_liquidity_position_historical_get(Ctx) ->
    dapps_uniswapv2_liquidity_position_historical_get(Ctx, #{}).

-spec dapps_uniswapv2_liquidity_position_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_liquidity_position_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/liquidityPosition/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv2_liquidity_position_snapshots_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_liquidity_position_snapshots_historical_get(Ctx) ->
    dapps_uniswapv2_liquidity_position_snapshots_historical_get(Ctx, #{}).

-spec dapps_uniswapv2_liquidity_position_snapshots_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_liquidity_position_snapshots_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/liquidityPositionSnapshots/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv2_mints_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_mints_historical_get(Ctx) ->
    dapps_uniswapv2_mints_historical_get(Ctx, #{}).

-spec dapps_uniswapv2_mints_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_mints_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/mints/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv2_pool_day_data_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_pool_day_data_historical_get(Ctx) ->
    dapps_uniswapv2_pool_day_data_historical_get(Ctx, #{}).

-spec dapps_uniswapv2_pool_day_data_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_pool_day_data_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/poolDayData/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv2_pool_hour_data_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_pool_hour_data_historical_get(Ctx) ->
    dapps_uniswapv2_pool_hour_data_historical_get(Ctx, #{}).

-spec dapps_uniswapv2_pool_hour_data_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_pool_hour_data_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/poolHourData/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetPools
%% 
-spec dapps_uniswapv2_pools_current_get(ctx:ctx()) -> {ok, [openapi_pair_v2_dto:openapi_pair_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_pools_current_get(Ctx) ->
    dapps_uniswapv2_pools_current_get(Ctx, #{}).

-spec dapps_uniswapv2_pools_current_get(ctx:ctx(), maps:map()) -> {ok, [openapi_pair_v2_dto:openapi_pair_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_pools_current_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/pools/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_pool_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv2_pools_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_pools_historical_get(Ctx) ->
    dapps_uniswapv2_pools_historical_get(Ctx, #{}).

-spec dapps_uniswapv2_pools_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_pools_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/pools/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetSwaps
%% 
-spec dapps_uniswapv2_swaps_current_get(ctx:ctx()) -> {ok, [openapi_swap_v2_dto:openapi_swap_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_swaps_current_get(Ctx) ->
    dapps_uniswapv2_swaps_current_get(Ctx, #{}).

-spec dapps_uniswapv2_swaps_current_get(ctx:ctx(), maps:map()) -> {ok, [openapi_swap_v2_dto:openapi_swap_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_swaps_current_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/swaps/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv2_swaps_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_swaps_historical_get(Ctx) ->
    dapps_uniswapv2_swaps_historical_get(Ctx, #{}).

-spec dapps_uniswapv2_swaps_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_swaps_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/swaps/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv2_token_day_data_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_token_day_data_historical_get(Ctx) ->
    dapps_uniswapv2_token_day_data_historical_get(Ctx, #{}).

-spec dapps_uniswapv2_token_day_data_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_token_day_data_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/tokenDayData/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'tokenId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetTokens
%% 
-spec dapps_uniswapv2_tokens_current_get(ctx:ctx()) -> {ok, [openapi_token_v2_dto:openapi_token_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_tokens_current_get(Ctx) ->
    dapps_uniswapv2_tokens_current_get(Ctx, #{}).

-spec dapps_uniswapv2_tokens_current_get(ctx:ctx(), maps:map()) -> {ok, [openapi_token_v2_dto:openapi_token_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_tokens_current_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/tokens/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv2_tokens_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_tokens_historical_get(Ctx) ->
    dapps_uniswapv2_tokens_historical_get(Ctx, #{}).

-spec dapps_uniswapv2_tokens_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_tokens_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/tokens/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'tokenId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv2_transactions_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_transactions_historical_get(Ctx) ->
    dapps_uniswapv2_transactions_historical_get(Ctx, #{}).

-spec dapps_uniswapv2_transactions_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_transactions_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/transactions/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv2_users_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_users_historical_get(Ctx) ->
    dapps_uniswapv2_users_historical_get(Ctx, #{}).

-spec dapps_uniswapv2_users_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv2_users_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/users/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


