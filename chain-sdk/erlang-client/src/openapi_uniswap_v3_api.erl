-module(openapi_uniswap_v3_api).

-export([dapps_uniswapv3_bundle_current_get/1, dapps_uniswapv3_bundle_current_get/2,
         dapps_uniswapv3_bundles_historical_get/1, dapps_uniswapv3_bundles_historical_get/2,
         dapps_uniswapv3_burns_current_get/1, dapps_uniswapv3_burns_current_get/2,
         dapps_uniswapv3_burns_historical_get/1, dapps_uniswapv3_burns_historical_get/2,
         dapps_uniswapv3_day_data_historical_get/1, dapps_uniswapv3_day_data_historical_get/2,
         dapps_uniswapv3_factory_current_get/2, dapps_uniswapv3_factory_current_get/3,
         dapps_uniswapv3_factory_historical_get/1, dapps_uniswapv3_factory_historical_get/2,
         dapps_uniswapv3_mints_current_get/1, dapps_uniswapv3_mints_current_get/2,
         dapps_uniswapv3_mints_historical_get/1, dapps_uniswapv3_mints_historical_get/2,
         dapps_uniswapv3_poi_historical_get/1, dapps_uniswapv3_poi_historical_get/2,
         dapps_uniswapv3_pool_day_data_historical_get/1, dapps_uniswapv3_pool_day_data_historical_get/2,
         dapps_uniswapv3_pool_hour_data_historical_get/1, dapps_uniswapv3_pool_hour_data_historical_get/2,
         dapps_uniswapv3_pools_current_get/1, dapps_uniswapv3_pools_current_get/2,
         dapps_uniswapv3_pools_day_data_current_get/1, dapps_uniswapv3_pools_day_data_current_get/2,
         dapps_uniswapv3_pools_historical_get/1, dapps_uniswapv3_pools_historical_get/2,
         dapps_uniswapv3_pools_hour_data_current_get/1, dapps_uniswapv3_pools_hour_data_current_get/2,
         dapps_uniswapv3_position_snapshot_historical_get/1, dapps_uniswapv3_position_snapshot_historical_get/2,
         dapps_uniswapv3_position_snapshots_current_get/1, dapps_uniswapv3_position_snapshots_current_get/2,
         dapps_uniswapv3_positions_current_get/1, dapps_uniswapv3_positions_current_get/2,
         dapps_uniswapv3_positions_historical_get/1, dapps_uniswapv3_positions_historical_get/2,
         dapps_uniswapv3_swaps_current_get/1, dapps_uniswapv3_swaps_current_get/2,
         dapps_uniswapv3_swaps_historical_get/1, dapps_uniswapv3_swaps_historical_get/2,
         dapps_uniswapv3_tick_day_data_historical_get/1, dapps_uniswapv3_tick_day_data_historical_get/2,
         dapps_uniswapv3_ticks_current_get/1, dapps_uniswapv3_ticks_current_get/2,
         dapps_uniswapv3_ticks_day_data_current_get/1, dapps_uniswapv3_ticks_day_data_current_get/2,
         dapps_uniswapv3_ticks_historical_get/1, dapps_uniswapv3_ticks_historical_get/2,
         dapps_uniswapv3_token_day_data_historical_get/1, dapps_uniswapv3_token_day_data_historical_get/2,
         dapps_uniswapv3_token_hour_data_historical_get/1, dapps_uniswapv3_token_hour_data_historical_get/2,
         dapps_uniswapv3_tokens_current_get/1, dapps_uniswapv3_tokens_current_get/2,
         dapps_uniswapv3_tokens_day_data_current_get/1, dapps_uniswapv3_tokens_day_data_current_get/2,
         dapps_uniswapv3_tokens_historical_get/1, dapps_uniswapv3_tokens_historical_get/2,
         dapps_uniswapv3_tokens_hour_data_current_get/1, dapps_uniswapv3_tokens_hour_data_current_get/2,
         dapps_uniswapv3_transactions_historical_get/1, dapps_uniswapv3_transactions_historical_get/2,
         dapps_uniswapv3_uniswap_day_data_current_get/1, dapps_uniswapv3_uniswap_day_data_current_get/2]).

-define(BASE_URL, <<"">>).

%% @doc GetBundles
%% 
-spec dapps_uniswapv3_bundle_current_get(ctx:ctx()) -> {ok, [openapi_bundle_v3_dto:openapi_bundle_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_bundle_current_get(Ctx) ->
    dapps_uniswapv3_bundle_current_get(Ctx, #{}).

-spec dapps_uniswapv3_bundle_current_get(ctx:ctx(), maps:map()) -> {ok, [openapi_bundle_v3_dto:openapi_bundle_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_bundle_current_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/bundle/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv3_bundles_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_bundles_historical_get(Ctx) ->
    dapps_uniswapv3_bundles_historical_get(Ctx, #{}).

-spec dapps_uniswapv3_bundles_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_bundles_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/bundles/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetBurns
%% 
-spec dapps_uniswapv3_burns_current_get(ctx:ctx()) -> {ok, [openapi_burn_v3_dto:openapi_burn_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_burns_current_get(Ctx) ->
    dapps_uniswapv3_burns_current_get(Ctx, #{}).

-spec dapps_uniswapv3_burns_current_get(ctx:ctx(), maps:map()) -> {ok, [openapi_burn_v3_dto:openapi_burn_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_burns_current_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/burns/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_pool_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv3_burns_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_burns_historical_get(Ctx) ->
    dapps_uniswapv3_burns_historical_get(Ctx, #{}).

-spec dapps_uniswapv3_burns_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_burns_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/burns/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv3_day_data_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_day_data_historical_get(Ctx) ->
    dapps_uniswapv3_day_data_historical_get(Ctx, #{}).

-spec dapps_uniswapv3_day_data_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_day_data_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/dayData/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetFactory
%% 
-spec dapps_uniswapv3_factory_current_get(ctx:ctx(), binary()) -> {ok, [openapi_factory_v3_dto:openapi_factory_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_factory_current_get(Ctx, ChainId) ->
    dapps_uniswapv3_factory_current_get(Ctx, ChainId, #{}).

-spec dapps_uniswapv3_factory_current_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_factory_v3_dto:openapi_factory_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_factory_current_get(Ctx, ChainId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/factory/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv3_factory_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_factory_historical_get(Ctx) ->
    dapps_uniswapv3_factory_historical_get(Ctx, #{}).

-spec dapps_uniswapv3_factory_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_factory_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/factory/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetMints
%% 
-spec dapps_uniswapv3_mints_current_get(ctx:ctx()) -> {ok, [openapi_mint_v3_dto:openapi_mint_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_mints_current_get(Ctx) ->
    dapps_uniswapv3_mints_current_get(Ctx, #{}).

-spec dapps_uniswapv3_mints_current_get(ctx:ctx(), maps:map()) -> {ok, [openapi_mint_v3_dto:openapi_mint_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_mints_current_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/mints/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_pool_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv3_mints_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_mints_historical_get(Ctx) ->
    dapps_uniswapv3_mints_historical_get(Ctx, #{}).

-spec dapps_uniswapv3_mints_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_mints_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/mints/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv3_poi_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_poi_historical_get(Ctx) ->
    dapps_uniswapv3_poi_historical_get(Ctx, #{}).

-spec dapps_uniswapv3_poi_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_poi_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/poi/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv3_pool_day_data_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_pool_day_data_historical_get(Ctx) ->
    dapps_uniswapv3_pool_day_data_historical_get(Ctx, #{}).

-spec dapps_uniswapv3_pool_day_data_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_pool_day_data_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/poolDayData/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv3_pool_hour_data_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_pool_hour_data_historical_get(Ctx) ->
    dapps_uniswapv3_pool_hour_data_historical_get(Ctx, #{}).

-spec dapps_uniswapv3_pool_hour_data_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_pool_hour_data_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/poolHourData/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetPools
%% 
-spec dapps_uniswapv3_pools_current_get(ctx:ctx()) -> {ok, [openapi_pool_v3_dto:openapi_pool_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_pools_current_get(Ctx) ->
    dapps_uniswapv3_pools_current_get(Ctx, #{}).

-spec dapps_uniswapv3_pools_current_get(ctx:ctx(), maps:map()) -> {ok, [openapi_pool_v3_dto:openapi_pool_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_pools_current_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/pools/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_pool_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetPoolsDayData
%% 
-spec dapps_uniswapv3_pools_day_data_current_get(ctx:ctx()) -> {ok, [openapi_pool_day_data_v3_dto:openapi_pool_day_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_pools_day_data_current_get(Ctx) ->
    dapps_uniswapv3_pools_day_data_current_get(Ctx, #{}).

-spec dapps_uniswapv3_pools_day_data_current_get(ctx:ctx(), maps:map()) -> {ok, [openapi_pool_day_data_v3_dto:openapi_pool_day_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_pools_day_data_current_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/poolsDayData/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_pool_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv3_pools_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_pools_historical_get(Ctx) ->
    dapps_uniswapv3_pools_historical_get(Ctx, #{}).

-spec dapps_uniswapv3_pools_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_pools_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/pools/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetPoolsHourData
%% 
-spec dapps_uniswapv3_pools_hour_data_current_get(ctx:ctx()) -> {ok, [openapi_pool_hour_data_v3_dto:openapi_pool_hour_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_pools_hour_data_current_get(Ctx) ->
    dapps_uniswapv3_pools_hour_data_current_get(Ctx, #{}).

-spec dapps_uniswapv3_pools_hour_data_current_get(ctx:ctx(), maps:map()) -> {ok, [openapi_pool_hour_data_v3_dto:openapi_pool_hour_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_pools_hour_data_current_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/poolsHourData/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_pool_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv3_position_snapshot_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_position_snapshot_historical_get(Ctx) ->
    dapps_uniswapv3_position_snapshot_historical_get(Ctx, #{}).

-spec dapps_uniswapv3_position_snapshot_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_position_snapshot_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/positionSnapshot/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetPositionSnapshot
%% 
-spec dapps_uniswapv3_position_snapshots_current_get(ctx:ctx()) -> {ok, [openapi_position_snapshot_v3_dto:openapi_position_snapshot_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_position_snapshots_current_get(Ctx) ->
    dapps_uniswapv3_position_snapshots_current_get(Ctx, #{}).

-spec dapps_uniswapv3_position_snapshots_current_get(ctx:ctx(), maps:map()) -> {ok, [openapi_position_snapshot_v3_dto:openapi_position_snapshot_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_position_snapshots_current_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/positionSnapshots/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_pool_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetPositions
%% 
-spec dapps_uniswapv3_positions_current_get(ctx:ctx()) -> {ok, [openapi_position_v3_dto:openapi_position_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_positions_current_get(Ctx) ->
    dapps_uniswapv3_positions_current_get(Ctx, #{}).

-spec dapps_uniswapv3_positions_current_get(ctx:ctx(), maps:map()) -> {ok, [openapi_position_v3_dto:openapi_position_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_positions_current_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/positions/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_pool_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv3_positions_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_positions_historical_get(Ctx) ->
    dapps_uniswapv3_positions_historical_get(Ctx, #{}).

-spec dapps_uniswapv3_positions_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_positions_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/positions/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetSwaps
%% 
-spec dapps_uniswapv3_swaps_current_get(ctx:ctx()) -> {ok, [openapi_swap_v3_dto:openapi_swap_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_swaps_current_get(Ctx) ->
    dapps_uniswapv3_swaps_current_get(Ctx, #{}).

-spec dapps_uniswapv3_swaps_current_get(ctx:ctx(), maps:map()) -> {ok, [openapi_swap_v3_dto:openapi_swap_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_swaps_current_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/swaps/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_pool_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv3_swaps_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_swaps_historical_get(Ctx) ->
    dapps_uniswapv3_swaps_historical_get(Ctx, #{}).

-spec dapps_uniswapv3_swaps_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_swaps_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/swaps/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv3_tick_day_data_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_tick_day_data_historical_get(Ctx) ->
    dapps_uniswapv3_tick_day_data_historical_get(Ctx, #{}).

-spec dapps_uniswapv3_tick_day_data_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_tick_day_data_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/tickDayData/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetTicks
%% 
-spec dapps_uniswapv3_ticks_current_get(ctx:ctx()) -> {ok, [openapi_tick_v3_dto:openapi_tick_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_ticks_current_get(Ctx) ->
    dapps_uniswapv3_ticks_current_get(Ctx, #{}).

-spec dapps_uniswapv3_ticks_current_get(ctx:ctx(), maps:map()) -> {ok, [openapi_tick_v3_dto:openapi_tick_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_ticks_current_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/ticks/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_pool_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetTicksDayData
%% 
-spec dapps_uniswapv3_ticks_day_data_current_get(ctx:ctx()) -> {ok, [openapi_tick_day_data_v3_dto:openapi_tick_day_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_ticks_day_data_current_get(Ctx) ->
    dapps_uniswapv3_ticks_day_data_current_get(Ctx, #{}).

-spec dapps_uniswapv3_ticks_day_data_current_get(ctx:ctx(), maps:map()) -> {ok, [openapi_tick_day_data_v3_dto:openapi_tick_day_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_ticks_day_data_current_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/ticksDayData/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_pool_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv3_ticks_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_ticks_historical_get(Ctx) ->
    dapps_uniswapv3_ticks_historical_get(Ctx, #{}).

-spec dapps_uniswapv3_ticks_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_ticks_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/ticks/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv3_token_day_data_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_token_day_data_historical_get(Ctx) ->
    dapps_uniswapv3_token_day_data_historical_get(Ctx, #{}).

-spec dapps_uniswapv3_token_day_data_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_token_day_data_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/tokenDayData/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'tokenId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv3_token_hour_data_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_token_hour_data_historical_get(Ctx) ->
    dapps_uniswapv3_token_hour_data_historical_get(Ctx, #{}).

-spec dapps_uniswapv3_token_hour_data_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_token_hour_data_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/tokenHourData/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'tokenId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetTokens
%% 
-spec dapps_uniswapv3_tokens_current_get(ctx:ctx()) -> {ok, [openapi_token_v3_dto:openapi_token_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_tokens_current_get(Ctx) ->
    dapps_uniswapv3_tokens_current_get(Ctx, #{}).

-spec dapps_uniswapv3_tokens_current_get(ctx:ctx(), maps:map()) -> {ok, [openapi_token_v3_dto:openapi_token_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_tokens_current_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/tokens/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_token_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetTokensDayData
%% 
-spec dapps_uniswapv3_tokens_day_data_current_get(ctx:ctx()) -> {ok, [openapi_token_v3_day_data_dto:openapi_token_v3_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_tokens_day_data_current_get(Ctx) ->
    dapps_uniswapv3_tokens_day_data_current_get(Ctx, #{}).

-spec dapps_uniswapv3_tokens_day_data_current_get(ctx:ctx(), maps:map()) -> {ok, [openapi_token_v3_day_data_dto:openapi_token_v3_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_tokens_day_data_current_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/tokensDayData/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_token_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv3_tokens_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_tokens_historical_get(Ctx) ->
    dapps_uniswapv3_tokens_historical_get(Ctx, #{}).

-spec dapps_uniswapv3_tokens_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_tokens_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/tokens/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'tokenId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetTokensHourData
%% 
-spec dapps_uniswapv3_tokens_hour_data_current_get(ctx:ctx()) -> {ok, [openapi_token_hour_data_v3_dto:openapi_token_hour_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_tokens_hour_data_current_get(Ctx) ->
    dapps_uniswapv3_tokens_hour_data_current_get(Ctx, #{}).

-spec dapps_uniswapv3_tokens_hour_data_current_get(ctx:ctx(), maps:map()) -> {ok, [openapi_token_hour_data_v3_dto:openapi_token_hour_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_tokens_hour_data_current_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/tokensHourData/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_token_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec dapps_uniswapv3_transactions_historical_get(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_transactions_historical_get(Ctx) ->
    dapps_uniswapv3_transactions_historical_get(Ctx, #{}).

-spec dapps_uniswapv3_transactions_historical_get(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_transactions_historical_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/transactions/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetUniswapDayData
%% 
-spec dapps_uniswapv3_uniswap_day_data_current_get(ctx:ctx()) -> {ok, [openapi_uniswap_day_data_v3_dto:openapi_uniswap_day_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_uniswap_day_data_current_get(Ctx) ->
    dapps_uniswapv3_uniswap_day_data_current_get(Ctx, #{}).

-spec dapps_uniswapv3_uniswap_day_data_current_get(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_day_data_v3_dto:openapi_uniswap_day_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dapps_uniswapv3_uniswap_day_data_current_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/uniswapDayData/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


