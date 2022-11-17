-module(openapi_uniswap_v3_api).

-export([uniswap_v3_bundles_(current)/1, uniswap_v3_bundles_(current)/2,
         uniswap_v3_burns_(current)/1, uniswap_v3_burns_(current)/2,
         uniswap_v3_factorys_(current)/1, uniswap_v3_factorys_(current)/2,
         uniswap_v3_get_bundles_(historical)/1, uniswap_v3_get_bundles_(historical)/2,
         uniswap_v3_get_burns_(historical)/1, uniswap_v3_get_burns_(historical)/2,
         uniswap_v3_get_factorys_(historical)/1, uniswap_v3_get_factorys_(historical)/2,
         uniswap_v3_get_mints_(historical)/1, uniswap_v3_get_mints_(historical)/2,
         uniswap_v3_get_pool_day_datas_(historical)/1, uniswap_v3_get_pool_day_datas_(historical)/2,
         uniswap_v3_get_pool_hour_datas_(historical)/1, uniswap_v3_get_pool_hour_datas_(historical)/2,
         uniswap_v3_get_pools_(historical)/1, uniswap_v3_get_pools_(historical)/2,
         uniswap_v3_get_position_snapshots_(historical)/1, uniswap_v3_get_position_snapshots_(historical)/2,
         uniswap_v3_get_positions_(historical)/1, uniswap_v3_get_positions_(historical)/2,
         uniswap_v3_get_swaps_(historical)/1, uniswap_v3_get_swaps_(historical)/2,
         uniswap_v3_get_tick_day_datas_(historical)/1, uniswap_v3_get_tick_day_datas_(historical)/2,
         uniswap_v3_get_ticks_(historical)/1, uniswap_v3_get_ticks_(historical)/2,
         uniswap_v3_get_token_hour_datas_(historical)/1, uniswap_v3_get_token_hour_datas_(historical)/2,
         uniswap_v3_get_token_v3_day_datas_(historical)/1, uniswap_v3_get_token_v3_day_datas_(historical)/2,
         uniswap_v3_get_tokens_(historical)/1, uniswap_v3_get_tokens_(historical)/2,
         uniswap_v3_get_transactions_(historical)/1, uniswap_v3_get_transactions_(historical)/2,
         uniswap_v3_get_uniswap_day_datas_(historical)/1, uniswap_v3_get_uniswap_day_datas_(historical)/2,
         uniswap_v3_mints_(current)/1, uniswap_v3_mints_(current)/2,
         uniswap_v3_pool_day_datas_(current)/1, uniswap_v3_pool_day_datas_(current)/2,
         uniswap_v3_pool_hour_datas_(current)/1, uniswap_v3_pool_hour_datas_(current)/2,
         uniswap_v3_pools_(current)/1, uniswap_v3_pools_(current)/2,
         uniswap_v3_position_snapshots_(current)/1, uniswap_v3_position_snapshots_(current)/2,
         uniswap_v3_positions_(current)/1, uniswap_v3_positions_(current)/2,
         uniswap_v3_swaps_(current)/1, uniswap_v3_swaps_(current)/2,
         uniswap_v3_tick_day_datas_(current)/1, uniswap_v3_tick_day_datas_(current)/2,
         uniswap_v3_ticks_(current)/1, uniswap_v3_ticks_(current)/2,
         uniswap_v3_token_hour_datas_(current)/1, uniswap_v3_token_hour_datas_(current)/2,
         uniswap_v3_token_v3_day_datas_(current)/1, uniswap_v3_token_v3_day_datas_(current)/2,
         uniswap_v3_tokens_(current)/1, uniswap_v3_tokens_(current)/2,
         uniswap_v3_transactions_(current)/1, uniswap_v3_transactions_(current)/2,
         uniswap_v3_uniswap_day_datas_(current)/1, uniswap_v3_uniswap_day_datas_(current)/2]).

-define(BASE_URL, <<"">>).

%% @doc Bundles (current)
%% Gets bundles.
-spec uniswap_v3_bundles_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_bundle_dto:openapi_uniswap_v3_bundle_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_bundles_(current)(Ctx) ->
    uniswap_v3_bundles_(current)(Ctx, #{}).

-spec uniswap_v3_bundles_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_bundle_dto:openapi_uniswap_v3_bundle_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_bundles_(current)(Ctx, Optional) ->
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
-spec uniswap_v3_burns_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_burn_dto:openapi_uniswap_v3_burn_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_burns_(current)(Ctx) ->
    uniswap_v3_burns_(current)(Ctx, #{}).

-spec uniswap_v3_burns_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_burn_dto:openapi_uniswap_v3_burn_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_burns_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/burns/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Factorys (current)
%% Gets factorys.
-spec uniswap_v3_factorys_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_factory_dto:openapi_uniswap_v3_factory_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_factorys_(current)(Ctx) ->
    uniswap_v3_factorys_(current)(Ctx, #{}).

-spec uniswap_v3_factorys_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_factory_dto:openapi_uniswap_v3_factory_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_factorys_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/factorys/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Bundles (historical)
%% Gets bundles.
-spec uniswap_v3_get_bundles_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_bundle_dto:openapi_uniswap_v3_bundle_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_bundles_(historical)(Ctx) ->
    uniswap_v3_get_bundles_(historical)(Ctx, #{}).

-spec uniswap_v3_get_bundles_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_bundle_dto:openapi_uniswap_v3_bundle_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_bundles_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/bundles/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Burns (historical)
%% Gets burns.
-spec uniswap_v3_get_burns_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_burn_dto:openapi_uniswap_v3_burn_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_burns_(historical)(Ctx) ->
    uniswap_v3_get_burns_(historical)(Ctx, #{}).

-spec uniswap_v3_get_burns_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_burn_dto:openapi_uniswap_v3_burn_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_burns_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/burns/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool', 'token_0', 'token_1'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Factorys (historical)
%% Gets factorys.
-spec uniswap_v3_get_factorys_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_factory_dto:openapi_uniswap_v3_factory_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_factorys_(historical)(Ctx) ->
    uniswap_v3_get_factorys_(historical)(Ctx, #{}).

-spec uniswap_v3_get_factorys_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_factory_dto:openapi_uniswap_v3_factory_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_factorys_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/factorys/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Mints (historical)
%% Gets mints.
-spec uniswap_v3_get_mints_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_mint_dto:openapi_uniswap_v3_mint_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_mints_(historical)(Ctx) ->
    uniswap_v3_get_mints_(historical)(Ctx, #{}).

-spec uniswap_v3_get_mints_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_mint_dto:openapi_uniswap_v3_mint_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_mints_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/mints/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool', 'token_0', 'token_1'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc PoolDayDatas (historical)
%% Gets poolDayDatas.
-spec uniswap_v3_get_pool_day_datas_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_pool_day_data_dto:openapi_uniswap_v3_pool_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_pool_day_datas_(historical)(Ctx) ->
    uniswap_v3_get_pool_day_datas_(historical)(Ctx, #{}).

-spec uniswap_v3_get_pool_day_datas_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_pool_day_data_dto:openapi_uniswap_v3_pool_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_pool_day_datas_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/poolDayDatas/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc PoolHourDatas (historical)
%% Gets poolHourDatas.
-spec uniswap_v3_get_pool_hour_datas_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_pool_hour_data_dto:openapi_uniswap_v3_pool_hour_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_pool_hour_datas_(historical)(Ctx) ->
    uniswap_v3_get_pool_hour_datas_(historical)(Ctx, #{}).

-spec uniswap_v3_get_pool_hour_datas_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_pool_hour_data_dto:openapi_uniswap_v3_pool_hour_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_pool_hour_datas_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/poolHourDatas/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Pools (historical)
%% Gets pools.
-spec uniswap_v3_get_pools_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_pool_dto:openapi_uniswap_v3_pool_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_pools_(historical)(Ctx) ->
    uniswap_v3_get_pools_(historical)(Ctx, #{}).

-spec uniswap_v3_get_pools_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_pool_dto:openapi_uniswap_v3_pool_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_pools_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/pools/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'token_0', 'token_1'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc PositionSnapshots (historical)
%% Gets positionSnapshots.
-spec uniswap_v3_get_position_snapshots_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_position_snapshot_dto:openapi_uniswap_v3_position_snapshot_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_position_snapshots_(historical)(Ctx) ->
    uniswap_v3_get_position_snapshots_(historical)(Ctx, #{}).

-spec uniswap_v3_get_position_snapshots_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_position_snapshot_dto:openapi_uniswap_v3_position_snapshot_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_position_snapshots_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/positionSnapshots/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Positions (historical)
%% Gets positions.
-spec uniswap_v3_get_positions_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_position_dto:openapi_uniswap_v3_position_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_positions_(historical)(Ctx) ->
    uniswap_v3_get_positions_(historical)(Ctx, #{}).

-spec uniswap_v3_get_positions_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_position_dto:openapi_uniswap_v3_position_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_positions_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/positions/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool', 'token_0', 'token_1'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Swaps (historical)
%% Gets swaps.
-spec uniswap_v3_get_swaps_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_swap_dto:openapi_uniswap_v3_swap_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_swaps_(historical)(Ctx) ->
    uniswap_v3_get_swaps_(historical)(Ctx, #{}).

-spec uniswap_v3_get_swaps_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_swap_dto:openapi_uniswap_v3_swap_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_swaps_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/swaps/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool', 'token_0', 'token_1'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc TickDayDatas (historical)
%% Gets tickDayDatas.
-spec uniswap_v3_get_tick_day_datas_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_tick_day_data_dto:openapi_uniswap_v3_tick_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_tick_day_datas_(historical)(Ctx) ->
    uniswap_v3_get_tick_day_datas_(historical)(Ctx, #{}).

-spec uniswap_v3_get_tick_day_datas_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_tick_day_data_dto:openapi_uniswap_v3_tick_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_tick_day_datas_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/tickDayDatas/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Ticks (historical)
%% Gets ticks.
-spec uniswap_v3_get_ticks_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_tick_dto:openapi_uniswap_v3_tick_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_ticks_(historical)(Ctx) ->
    uniswap_v3_get_ticks_(historical)(Ctx, #{}).

-spec uniswap_v3_get_ticks_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_tick_dto:openapi_uniswap_v3_tick_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_ticks_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/ticks/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc TokenHourDatas (historical)
%% Gets tokenHourDatas.
-spec uniswap_v3_get_token_hour_datas_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_token_hour_data_dto:openapi_uniswap_v3_token_hour_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_token_hour_datas_(historical)(Ctx) ->
    uniswap_v3_get_token_hour_datas_(historical)(Ctx, #{}).

-spec uniswap_v3_get_token_hour_datas_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_token_hour_data_dto:openapi_uniswap_v3_token_hour_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_token_hour_datas_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/tokenHourDatas/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc TokenV3DayDatas (historical)
%% Gets tokenV3DayDatas.
-spec uniswap_v3_get_token_v3_day_datas_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_token_v3_day_data_dto:openapi_uniswap_v3_token_v3_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_token_v3_day_datas_(historical)(Ctx) ->
    uniswap_v3_get_token_v3_day_datas_(historical)(Ctx, #{}).

-spec uniswap_v3_get_token_v3_day_datas_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_token_v3_day_data_dto:openapi_uniswap_v3_token_v3_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_token_v3_day_datas_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/tokenV3DayDatas/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Tokens (historical)
%% Gets tokens.
-spec uniswap_v3_get_tokens_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_token_dto:openapi_uniswap_v3_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_tokens_(historical)(Ctx) ->
    uniswap_v3_get_tokens_(historical)(Ctx, #{}).

-spec uniswap_v3_get_tokens_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_token_dto:openapi_uniswap_v3_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_tokens_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/tokens/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'symbol', 'name'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Transactions (historical)
%% Gets transactions.
-spec uniswap_v3_get_transactions_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_transaction_dto:openapi_uniswap_v3_transaction_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_transactions_(historical)(Ctx) ->
    uniswap_v3_get_transactions_(historical)(Ctx, #{}).

-spec uniswap_v3_get_transactions_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_transaction_dto:openapi_uniswap_v3_transaction_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_transactions_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/transactions/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc UniswapDayDatas (historical)
%% Gets uniswapDayDatas.
-spec uniswap_v3_get_uniswap_day_datas_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_uniswap_day_data_dto:openapi_uniswap_v3_uniswap_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_uniswap_day_datas_(historical)(Ctx) ->
    uniswap_v3_get_uniswap_day_datas_(historical)(Ctx, #{}).

-spec uniswap_v3_get_uniswap_day_datas_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_uniswap_day_data_dto:openapi_uniswap_v3_uniswap_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_get_uniswap_day_datas_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/uniswapDayDatas/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Mints (current)
%% Gets mints.
-spec uniswap_v3_mints_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_mint_dto:openapi_uniswap_v3_mint_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_mints_(current)(Ctx) ->
    uniswap_v3_mints_(current)(Ctx, #{}).

-spec uniswap_v3_mints_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_mint_dto:openapi_uniswap_v3_mint_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_mints_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/mints/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc PoolDayDatas (current)
%% Gets poolDayDatas.
-spec uniswap_v3_pool_day_datas_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_pool_day_data_dto:openapi_uniswap_v3_pool_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_pool_day_datas_(current)(Ctx) ->
    uniswap_v3_pool_day_datas_(current)(Ctx, #{}).

-spec uniswap_v3_pool_day_datas_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_pool_day_data_dto:openapi_uniswap_v3_pool_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_pool_day_datas_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/poolDayDatas/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc PoolHourDatas (current)
%% Gets poolHourDatas.
-spec uniswap_v3_pool_hour_datas_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_pool_hour_data_dto:openapi_uniswap_v3_pool_hour_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_pool_hour_datas_(current)(Ctx) ->
    uniswap_v3_pool_hour_datas_(current)(Ctx, #{}).

-spec uniswap_v3_pool_hour_datas_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_pool_hour_data_dto:openapi_uniswap_v3_pool_hour_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_pool_hour_datas_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/poolHourDatas/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Pools (current)
%% Gets pools.
-spec uniswap_v3_pools_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_pool_dto:openapi_uniswap_v3_pool_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_pools_(current)(Ctx) ->
    uniswap_v3_pools_(current)(Ctx, #{}).

-spec uniswap_v3_pools_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_pool_dto:openapi_uniswap_v3_pool_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_pools_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/pools/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc PositionSnapshots (current)
%% Gets positionSnapshots.
-spec uniswap_v3_position_snapshots_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_position_snapshot_dto:openapi_uniswap_v3_position_snapshot_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_position_snapshots_(current)(Ctx) ->
    uniswap_v3_position_snapshots_(current)(Ctx, #{}).

-spec uniswap_v3_position_snapshots_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_position_snapshot_dto:openapi_uniswap_v3_position_snapshot_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_position_snapshots_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/positionSnapshots/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Positions (current)
%% Gets positions.
-spec uniswap_v3_positions_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_position_dto:openapi_uniswap_v3_position_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_positions_(current)(Ctx) ->
    uniswap_v3_positions_(current)(Ctx, #{}).

-spec uniswap_v3_positions_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_position_dto:openapi_uniswap_v3_position_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_positions_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/positions/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Swaps (current)
%% Gets swaps.
-spec uniswap_v3_swaps_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_swap_dto:openapi_uniswap_v3_swap_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_swaps_(current)(Ctx) ->
    uniswap_v3_swaps_(current)(Ctx, #{}).

-spec uniswap_v3_swaps_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_swap_dto:openapi_uniswap_v3_swap_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_swaps_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/swaps/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc TickDayDatas (current)
%% Gets tickDayDatas.
-spec uniswap_v3_tick_day_datas_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_tick_day_data_dto:openapi_uniswap_v3_tick_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_tick_day_datas_(current)(Ctx) ->
    uniswap_v3_tick_day_datas_(current)(Ctx, #{}).

-spec uniswap_v3_tick_day_datas_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_tick_day_data_dto:openapi_uniswap_v3_tick_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_tick_day_datas_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/tickDayDatas/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Ticks (current)
%% Gets ticks.
-spec uniswap_v3_ticks_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_tick_dto:openapi_uniswap_v3_tick_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_ticks_(current)(Ctx) ->
    uniswap_v3_ticks_(current)(Ctx, #{}).

-spec uniswap_v3_ticks_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_tick_dto:openapi_uniswap_v3_tick_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_ticks_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/ticks/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc TokenHourDatas (current)
%% Gets tokenHourDatas.
-spec uniswap_v3_token_hour_datas_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_token_hour_data_dto:openapi_uniswap_v3_token_hour_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_token_hour_datas_(current)(Ctx) ->
    uniswap_v3_token_hour_datas_(current)(Ctx, #{}).

-spec uniswap_v3_token_hour_datas_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_token_hour_data_dto:openapi_uniswap_v3_token_hour_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_token_hour_datas_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/tokenHourDatas/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc TokenV3DayDatas (current)
%% Gets tokenV3DayDatas.
-spec uniswap_v3_token_v3_day_datas_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_token_v3_day_data_dto:openapi_uniswap_v3_token_v3_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_token_v3_day_datas_(current)(Ctx) ->
    uniswap_v3_token_v3_day_datas_(current)(Ctx, #{}).

-spec uniswap_v3_token_v3_day_datas_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_token_v3_day_data_dto:openapi_uniswap_v3_token_v3_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_token_v3_day_datas_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/tokenV3DayDatas/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Tokens (current)
%% Gets tokens.
-spec uniswap_v3_tokens_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_token_dto:openapi_uniswap_v3_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_tokens_(current)(Ctx) ->
    uniswap_v3_tokens_(current)(Ctx, #{}).

-spec uniswap_v3_tokens_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_token_dto:openapi_uniswap_v3_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_tokens_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/tokens/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Transactions (current)
%% Gets transactions.
-spec uniswap_v3_transactions_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_transaction_dto:openapi_uniswap_v3_transaction_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_transactions_(current)(Ctx) ->
    uniswap_v3_transactions_(current)(Ctx, #{}).

-spec uniswap_v3_transactions_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_transaction_dto:openapi_uniswap_v3_transaction_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_transactions_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/transactions/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc UniswapDayDatas (current)
%% Gets uniswapDayDatas.
-spec uniswap_v3_uniswap_day_datas_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v3_uniswap_day_data_dto:openapi_uniswap_v3_uniswap_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_uniswap_day_datas_(current)(Ctx) ->
    uniswap_v3_uniswap_day_datas_(current)(Ctx, #{}).

-spec uniswap_v3_uniswap_day_datas_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v3_uniswap_day_data_dto:openapi_uniswap_v3_uniswap_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v3_uniswap_day_datas_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv3/uniswapDayDatas/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


