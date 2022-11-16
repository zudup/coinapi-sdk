-module(openapi_uniswap_v3_api).

-export([uniswap_v3_get_bundles_(current)/1, uniswap_v3_get_bundles_(current)/2,
         uniswap_v3_get_burns_(current)/1, uniswap_v3_get_burns_(current)/2,
         uniswap_v3_get_day_data_(current)/1, uniswap_v3_get_day_data_(current)/2,
         uniswap_v3_get_factory_(current)/1, uniswap_v3_get_factory_(current)/2,
         uniswap_v3_get_mints_(current)/1, uniswap_v3_get_mints_(current)/2,
         uniswap_v3_get_pools_(current)/1, uniswap_v3_get_pools_(current)/2,
         uniswap_v3_get_pools_day_data_(current)/1, uniswap_v3_get_pools_day_data_(current)/2,
         uniswap_v3_get_pools_hour_data_(current)/1, uniswap_v3_get_pools_hour_data_(current)/2,
         uniswap_v3_get_positions_(current)/1, uniswap_v3_get_positions_(current)/2,
         uniswap_v3_get_positions_snapshots_(current)/1, uniswap_v3_get_positions_snapshots_(current)/2,
         uniswap_v3_get_swaps_(current)/1, uniswap_v3_get_swaps_(current)/2,
         uniswap_v3_get_ticks_(current)/1, uniswap_v3_get_ticks_(current)/2,
         uniswap_v3_get_ticks_day_data_(current)/1, uniswap_v3_get_ticks_day_data_(current)/2,
         uniswap_v3_get_tokens_(current)/1, uniswap_v3_get_tokens_(current)/2,
         uniswap_v3_get_tokens_day_data_(current)/1, uniswap_v3_get_tokens_day_data_(current)/2,
         uniswap_v3_get_tokens_hour_data_(current)/1, uniswap_v3_get_tokens_hour_data_(current)/2]).

-define(BASE_URL, <<"">>).

%% @doc Bundles (current)
%% Gets bundles.
-spec uniswap_v3_get_bundles_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_bundle_v3_dto:openapi_uniswap_v3_bundle_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_bundles_(current)(Ctx) ->
    uniswap_v3_get_bundles_(current)(Ctx, #{}).

-spec uniswap_v3_get_bundles_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_bundle_v3_dto:openapi_uniswap_v3_bundle_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_bundles_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/bundles/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Burns (current)
%% Gets burns.
-spec uniswap_v3_get_burns_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_burn_v3_dto:openapi_uniswap_v3_burn_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_burns_(current)(Ctx) ->
    uniswap_v3_get_burns_(current)(Ctx, #{}).

-spec uniswap_v3_get_burns_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_burn_v3_dto:openapi_uniswap_v3_burn_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_burns_(current)(Ctx, Optional) ->
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

%% @doc DayData (current)
%% Gets uniswapv3 day data.
-spec uniswap_v3_get_day_data_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_uniswap_day_data_v3_dto:openapi_uniswap_v3_uniswap_day_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_day_data_(current)(Ctx) ->
    uniswap_v3_get_day_data_(current)(Ctx, #{}).

-spec uniswap_v3_get_day_data_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_uniswap_day_data_v3_dto:openapi_uniswap_v3_uniswap_day_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_day_data_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/dayData/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Factory (current)
%% Gets factory.
-spec uniswap_v3_get_factory_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_factory_v3_dto:openapi_uniswap_v3_factory_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_factory_(current)(Ctx) ->
    uniswap_v3_get_factory_(current)(Ctx, #{}).

-spec uniswap_v3_get_factory_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_factory_v3_dto:openapi_uniswap_v3_factory_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_factory_(current)(Ctx, Optional) ->
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

%% @doc Mints (current)
%% Gets mints.
-spec uniswap_v3_get_mints_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_mint_v3_dto:openapi_uniswap_v3_mint_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_mints_(current)(Ctx) ->
    uniswap_v3_get_mints_(current)(Ctx, #{}).

-spec uniswap_v3_get_mints_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_mint_v3_dto:openapi_uniswap_v3_mint_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_mints_(current)(Ctx, Optional) ->
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

%% @doc Pools (current) 🔥
%% Gets pools.
-spec uniswap_v3_get_pools_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_pool_v3_dto:openapi_uniswap_v3_pool_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_pools_(current)(Ctx) ->
    uniswap_v3_get_pools_(current)(Ctx, #{}).

-spec uniswap_v3_get_pools_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_pool_v3_dto:openapi_uniswap_v3_pool_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_pools_(current)(Ctx, Optional) ->
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

%% @doc PoolsDayData (current)
%% Gets pools day data.
-spec uniswap_v3_get_pools_day_data_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_pool_day_data_v3_dto:openapi_uniswap_v3_pool_day_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_pools_day_data_(current)(Ctx) ->
    uniswap_v3_get_pools_day_data_(current)(Ctx, #{}).

-spec uniswap_v3_get_pools_day_data_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_pool_day_data_v3_dto:openapi_uniswap_v3_pool_day_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_pools_day_data_(current)(Ctx, Optional) ->
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

%% @doc PoolsHourData (current)
%% Gets pools hour data.
-spec uniswap_v3_get_pools_hour_data_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_pool_hour_data_v3_dto:openapi_uniswap_v3_pool_hour_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_pools_hour_data_(current)(Ctx) ->
    uniswap_v3_get_pools_hour_data_(current)(Ctx, #{}).

-spec uniswap_v3_get_pools_hour_data_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_pool_hour_data_v3_dto:openapi_uniswap_v3_pool_hour_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_pools_hour_data_(current)(Ctx, Optional) ->
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

%% @doc Positions (current)
%% Gets positions.
-spec uniswap_v3_get_positions_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_position_v3_dto:openapi_uniswap_v3_position_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_positions_(current)(Ctx) ->
    uniswap_v3_get_positions_(current)(Ctx, #{}).

-spec uniswap_v3_get_positions_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_position_v3_dto:openapi_uniswap_v3_position_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_positions_(current)(Ctx, Optional) ->
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

%% @doc PositionsSnapshots (current)
%% Gets positions snapshots.
-spec uniswap_v3_get_positions_snapshots_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_position_snapshot_v3_dto:openapi_uniswap_v3_position_snapshot_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_positions_snapshots_(current)(Ctx) ->
    uniswap_v3_get_positions_snapshots_(current)(Ctx, #{}).

-spec uniswap_v3_get_positions_snapshots_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_position_snapshot_v3_dto:openapi_uniswap_v3_position_snapshot_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_positions_snapshots_(current)(Ctx, Optional) ->
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

%% @doc Swaps (current) 🔥
%% Gets swaps.
-spec uniswap_v3_get_swaps_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_swap_v3_dto:openapi_uniswap_v3_swap_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_swaps_(current)(Ctx) ->
    uniswap_v3_get_swaps_(current)(Ctx, #{}).

-spec uniswap_v3_get_swaps_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_swap_v3_dto:openapi_uniswap_v3_swap_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_swaps_(current)(Ctx, Optional) ->
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

%% @doc Ticks (current)
%% Gets ticks.
-spec uniswap_v3_get_ticks_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_tick_v3_dto:openapi_uniswap_v3_tick_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_ticks_(current)(Ctx) ->
    uniswap_v3_get_ticks_(current)(Ctx, #{}).

-spec uniswap_v3_get_ticks_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_tick_v3_dto:openapi_uniswap_v3_tick_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_ticks_(current)(Ctx, Optional) ->
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

%% @doc TicksDayData (current)
%% Gets ticks day data.
-spec uniswap_v3_get_ticks_day_data_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_tick_day_data_v3_dto:openapi_uniswap_v3_tick_day_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_ticks_day_data_(current)(Ctx) ->
    uniswap_v3_get_ticks_day_data_(current)(Ctx, #{}).

-spec uniswap_v3_get_ticks_day_data_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_tick_day_data_v3_dto:openapi_uniswap_v3_tick_day_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_ticks_day_data_(current)(Ctx, Optional) ->
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

%% @doc Tokens (current) 🔥
%% Gets tokens.
-spec uniswap_v3_get_tokens_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_token_v3_dto:openapi_uniswap_v3_token_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_tokens_(current)(Ctx) ->
    uniswap_v3_get_tokens_(current)(Ctx, #{}).

-spec uniswap_v3_get_tokens_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_token_v3_dto:openapi_uniswap_v3_token_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_tokens_(current)(Ctx, Optional) ->
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

%% @doc TokensDayData (current)
%% Gets tokens day data.
-spec uniswap_v3_get_tokens_day_data_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_token_v3_day_data_dto:openapi_uniswap_v3_token_v3_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_tokens_day_data_(current)(Ctx) ->
    uniswap_v3_get_tokens_day_data_(current)(Ctx, #{}).

-spec uniswap_v3_get_tokens_day_data_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_token_v3_day_data_dto:openapi_uniswap_v3_token_v3_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_tokens_day_data_(current)(Ctx, Optional) ->
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

%% @doc TokensHourData (current)
%% Gets tokens hour data.
-spec uniswap_v3_get_tokens_hour_data_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_token_hour_data_v3_dto:openapi_uniswap_v3_token_hour_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_tokens_hour_data_(current)(Ctx) ->
    uniswap_v3_get_tokens_hour_data_(current)(Ctx, #{}).

-spec uniswap_v3_get_tokens_hour_data_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_token_hour_data_v3_dto:openapi_uniswap_v3_token_hour_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_tokens_hour_data_(current)(Ctx, Optional) ->
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


