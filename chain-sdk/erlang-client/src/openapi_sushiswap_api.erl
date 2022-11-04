-module(openapi_sushiswap_api).

-export([dapps_sushiswap_bundles_historical_get/1, dapps_sushiswap_bundles_historical_get/2,
         dapps_sushiswap_burns_historical_get/1, dapps_sushiswap_burns_historical_get/2,
         dapps_sushiswap_day_data_historical_get/1, dapps_sushiswap_day_data_historical_get/2,
         dapps_sushiswap_factory_historical_get/1, dapps_sushiswap_factory_historical_get/2,
         dapps_sushiswap_hour_data_historical_get/1, dapps_sushiswap_hour_data_historical_get/2,
         dapps_sushiswap_liquidity_position_historical_get/1, dapps_sushiswap_liquidity_position_historical_get/2,
         dapps_sushiswap_liquidity_position_snapshots_historical_get/1, dapps_sushiswap_liquidity_position_snapshots_historical_get/2,
         dapps_sushiswap_mints_historical_get/1, dapps_sushiswap_mints_historical_get/2,
         dapps_sushiswap_pool_day_data_historical_get/1, dapps_sushiswap_pool_day_data_historical_get/2,
         dapps_sushiswap_pool_hour_data_historical_get/1, dapps_sushiswap_pool_hour_data_historical_get/2,
         dapps_sushiswap_pools_current_get/1, dapps_sushiswap_pools_current_get/2,
         dapps_sushiswap_pools_historical_get/1, dapps_sushiswap_pools_historical_get/2,
         dapps_sushiswap_swaps_current_get/1, dapps_sushiswap_swaps_current_get/2,
         dapps_sushiswap_swaps_historical_get/1, dapps_sushiswap_swaps_historical_get/2,
         dapps_sushiswap_token_day_data_historical_get/1, dapps_sushiswap_token_day_data_historical_get/2,
         dapps_sushiswap_tokens_current_get/1, dapps_sushiswap_tokens_current_get/2,
         dapps_sushiswap_tokens_historical_get/1, dapps_sushiswap_tokens_historical_get/2,
         dapps_sushiswap_transactions_historical_get/1, dapps_sushiswap_transactions_historical_get/2,
         dapps_sushiswap_users_historical_get/1, dapps_sushiswap_users_historical_get/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec dapps_sushiswap_bundles_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_bundles_historical_get(Ctx) ->
    dapps_sushiswap_bundles_historical_get(Ctx, #{}).

-spec dapps_sushiswap_bundles_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_bundles_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/bundles/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_sushiswap_burns_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_burns_historical_get(Ctx) ->
    dapps_sushiswap_burns_historical_get(Ctx, #{}).

-spec dapps_sushiswap_burns_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_burns_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/burns/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_sushiswap_day_data_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_day_data_historical_get(Ctx) ->
    dapps_sushiswap_day_data_historical_get(Ctx, #{}).

-spec dapps_sushiswap_day_data_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_day_data_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/dayData/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_sushiswap_factory_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_factory_historical_get(Ctx) ->
    dapps_sushiswap_factory_historical_get(Ctx, #{}).

-spec dapps_sushiswap_factory_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_factory_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/factory/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_sushiswap_hour_data_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_hour_data_historical_get(Ctx) ->
    dapps_sushiswap_hour_data_historical_get(Ctx, #{}).

-spec dapps_sushiswap_hour_data_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_hour_data_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/hourData/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_sushiswap_liquidity_position_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_liquidity_position_historical_get(Ctx) ->
    dapps_sushiswap_liquidity_position_historical_get(Ctx, #{}).

-spec dapps_sushiswap_liquidity_position_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_liquidity_position_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/liquidityPosition/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_sushiswap_liquidity_position_snapshots_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_liquidity_position_snapshots_historical_get(Ctx) ->
    dapps_sushiswap_liquidity_position_snapshots_historical_get(Ctx, #{}).

-spec dapps_sushiswap_liquidity_position_snapshots_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_liquidity_position_snapshots_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/liquidityPositionSnapshots/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_sushiswap_mints_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_mints_historical_get(Ctx) ->
    dapps_sushiswap_mints_historical_get(Ctx, #{}).

-spec dapps_sushiswap_mints_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_mints_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/mints/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_sushiswap_pool_day_data_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_pool_day_data_historical_get(Ctx) ->
    dapps_sushiswap_pool_day_data_historical_get(Ctx, #{}).

-spec dapps_sushiswap_pool_day_data_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_pool_day_data_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/poolDayData/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_sushiswap_pool_hour_data_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_pool_hour_data_historical_get(Ctx) ->
    dapps_sushiswap_pool_hour_data_historical_get(Ctx, #{}).

-spec dapps_sushiswap_pool_hour_data_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_pool_hour_data_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/poolHourData/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetPools
%% Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
-spec dapps_sushiswap_pools_current_get(ctx:ctx()) -> {ok, [openapi_pair_dto:openapi_pair_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_pools_current_get(Ctx) ->
    dapps_sushiswap_pools_current_get(Ctx, #{}).

-spec dapps_sushiswap_pools_current_get(ctx:ctx(), maps:map()) -> {ok, [openapi_pair_dto:openapi_pair_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_pools_current_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/pools/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetPools
%% 
-spec dapps_sushiswap_pools_historical_get(ctx:ctx()) -> {ok, [openapi_pair_dto:openapi_pair_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_pools_historical_get(Ctx) ->
    dapps_sushiswap_pools_historical_get(Ctx, #{}).

-spec dapps_sushiswap_pools_historical_get(ctx:ctx(), maps:map()) -> {ok, [openapi_pair_dto:openapi_pair_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_pools_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/pools/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetSwaps
%% 
-spec dapps_sushiswap_swaps_current_get(ctx:ctx()) -> {ok, [openapi_swap_dto:openapi_swap_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_swaps_current_get(Ctx) ->
    dapps_sushiswap_swaps_current_get(Ctx, #{}).

-spec dapps_sushiswap_swaps_current_get(ctx:ctx(), maps:map()) -> {ok, [openapi_swap_dto:openapi_swap_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_swaps_current_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/swaps/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetSwaps
%% 
-spec dapps_sushiswap_swaps_historical_get(ctx:ctx()) -> {ok, [openapi_swap_dto:openapi_swap_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_swaps_historical_get(Ctx) ->
    dapps_sushiswap_swaps_historical_get(Ctx, #{}).

-spec dapps_sushiswap_swaps_historical_get(ctx:ctx(), maps:map()) -> {ok, [openapi_swap_dto:openapi_swap_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_swaps_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/swaps/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_sushiswap_token_day_data_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_token_day_data_historical_get(Ctx) ->
    dapps_sushiswap_token_day_data_historical_get(Ctx, #{}).

-spec dapps_sushiswap_token_day_data_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_token_day_data_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/tokenDayData/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'tokenId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetTokens
%% 
-spec dapps_sushiswap_tokens_current_get(ctx:ctx()) -> {ok, [openapi_token_dto:openapi_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_tokens_current_get(Ctx) ->
    dapps_sushiswap_tokens_current_get(Ctx, #{}).

-spec dapps_sushiswap_tokens_current_get(ctx:ctx(), maps:map()) -> {ok, [openapi_token_dto:openapi_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_tokens_current_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/tokens/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetTokens
%% 
-spec dapps_sushiswap_tokens_historical_get(ctx:ctx()) -> {ok, [openapi_token_dto:openapi_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_tokens_historical_get(Ctx) ->
    dapps_sushiswap_tokens_historical_get(Ctx, #{}).

-spec dapps_sushiswap_tokens_historical_get(ctx:ctx(), maps:map()) -> {ok, [openapi_token_dto:openapi_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_tokens_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/tokens/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'tokenId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_sushiswap_transactions_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_transactions_historical_get(Ctx) ->
    dapps_sushiswap_transactions_historical_get(Ctx, #{}).

-spec dapps_sushiswap_transactions_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_transactions_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/transactions/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_sushiswap_users_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_users_historical_get(Ctx) ->
    dapps_sushiswap_users_historical_get(Ctx, #{}).

-spec dapps_sushiswap_users_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_sushiswap_users_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/users/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


