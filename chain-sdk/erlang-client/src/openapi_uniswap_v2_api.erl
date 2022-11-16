-module(openapi_uniswap_v2_api).

-export([uniswap_v2_get_bundle_v2s_(historical)/1, uniswap_v2_get_bundle_v2s_(historical)/2,
         uniswap_v2_get_burn_v2s_(historical)/1, uniswap_v2_get_burn_v2s_(historical)/2,
         uniswap_v2_get_liquidity_position_snapshot_v2s_(historical)/1, uniswap_v2_get_liquidity_position_snapshot_v2s_(historical)/2,
         uniswap_v2_get_liquidity_position_v2s_(historical)/1, uniswap_v2_get_liquidity_position_v2s_(historical)/2,
         uniswap_v2_get_mint_v2s_(historical)/1, uniswap_v2_get_mint_v2s_(historical)/2,
         uniswap_v2_get_pair_day_data_v2s_(historical)/1, uniswap_v2_get_pair_day_data_v2s_(historical)/2,
         uniswap_v2_get_pair_hour_data_v2s_(historical)/1, uniswap_v2_get_pair_hour_data_v2s_(historical)/2,
         uniswap_v2_get_pair_v2s_(historical)/1, uniswap_v2_get_pair_v2s_(historical)/2,
         uniswap_v2_get_pools_(current)/1, uniswap_v2_get_pools_(current)/2,
         uniswap_v2_get_swap_v2s_(historical)/1, uniswap_v2_get_swap_v2s_(historical)/2,
         uniswap_v2_get_swaps_(current)/1, uniswap_v2_get_swaps_(current)/2,
         uniswap_v2_get_token_day_data_v2s_(historical)/1, uniswap_v2_get_token_day_data_v2s_(historical)/2,
         uniswap_v2_get_token_v2s_(historical)/1, uniswap_v2_get_token_v2s_(historical)/2,
         uniswap_v2_get_tokens_(current)/1, uniswap_v2_get_tokens_(current)/2,
         uniswap_v2_get_transaction_v2s_(historical)/1, uniswap_v2_get_transaction_v2s_(historical)/2,
         uniswap_v2_get_uniswap_day_data_v2s_(historical)/1, uniswap_v2_get_uniswap_day_data_v2s_(historical)/2,
         uniswap_v2_get_uniswap_factory_v2s_(historical)/1, uniswap_v2_get_uniswap_factory_v2s_(historical)/2,
         uniswap_v2_get_user_v2s_(historical)/1, uniswap_v2_get_user_v2s_(historical)/2]).

-define(BASE_URL, <<"">>).

%% @doc BundleV2s (historical) 🔥
%% Gets bundlev2s.
-spec uniswap_v2_get_bundle_v2s_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_bundle_v2_dto:openapi_uniswap_v2_bundle_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_bundle_v2s_(historical)(Ctx) ->
    uniswap_v2_get_bundle_v2s_(historical)(Ctx, #{}).

-spec uniswap_v2_get_bundle_v2s_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_bundle_v2_dto:openapi_uniswap_v2_bundle_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_bundle_v2s_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/bundlev2s/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc BurnV2s (historical) 🔥
%% Gets burnv2s.
-spec uniswap_v2_get_burn_v2s_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_burn_v2_dto:openapi_uniswap_v2_burn_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_burn_v2s_(historical)(Ctx) ->
    uniswap_v2_get_burn_v2s_(historical)(Ctx, #{}).

-spec uniswap_v2_get_burn_v2s_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_burn_v2_dto:openapi_uniswap_v2_burn_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_burn_v2s_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/burnv2s/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pair'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc LiquidityPositionSnapshotV2s (historical) 🔥
%% Gets liquiditypositionsnapshotv2s.
-spec uniswap_v2_get_liquidity_position_snapshot_v2s_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_liquidity_position_snapshot_v2_dto:openapi_uniswap_v2_liquidity_position_snapshot_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_liquidity_position_snapshot_v2s_(historical)(Ctx) ->
    uniswap_v2_get_liquidity_position_snapshot_v2s_(historical)(Ctx, #{}).

-spec uniswap_v2_get_liquidity_position_snapshot_v2s_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_liquidity_position_snapshot_v2_dto:openapi_uniswap_v2_liquidity_position_snapshot_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_liquidity_position_snapshot_v2s_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/liquiditypositionsnapshotv2s/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'user', 'pair'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc LiquidityPositionV2s (historical) 🔥
%% Gets liquiditypositionv2s.
-spec uniswap_v2_get_liquidity_position_v2s_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_liquidity_position_v2_dto:openapi_uniswap_v2_liquidity_position_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_liquidity_position_v2s_(historical)(Ctx) ->
    uniswap_v2_get_liquidity_position_v2s_(historical)(Ctx, #{}).

-spec uniswap_v2_get_liquidity_position_v2s_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_liquidity_position_v2_dto:openapi_uniswap_v2_liquidity_position_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_liquidity_position_v2s_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/liquiditypositionv2s/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'user', 'pair'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc MintV2s (historical) 🔥
%% Gets mintv2s.
-spec uniswap_v2_get_mint_v2s_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_mint_v2_dto:openapi_uniswap_v2_mint_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_mint_v2s_(historical)(Ctx) ->
    uniswap_v2_get_mint_v2s_(historical)(Ctx, #{}).

-spec uniswap_v2_get_mint_v2s_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_mint_v2_dto:openapi_uniswap_v2_mint_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_mint_v2s_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/mintv2s/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pair'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc PairDayDataV2s (historical) 🔥
%% Gets pairdaydatav2s.
-spec uniswap_v2_get_pair_day_data_v2s_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_pair_day_data_v2_dto:openapi_uniswap_v2_pair_day_data_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_pair_day_data_v2s_(historical)(Ctx) ->
    uniswap_v2_get_pair_day_data_v2s_(historical)(Ctx, #{}).

-spec uniswap_v2_get_pair_day_data_v2s_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_pair_day_data_v2_dto:openapi_uniswap_v2_pair_day_data_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_pair_day_data_v2s_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/pairdaydatav2s/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'token_0', 'token_1'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc PairHourDataV2s (historical) 🔥
%% Gets pairhourdatav2s.
-spec uniswap_v2_get_pair_hour_data_v2s_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_pair_hour_data_v2_dto:openapi_uniswap_v2_pair_hour_data_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_pair_hour_data_v2s_(historical)(Ctx) ->
    uniswap_v2_get_pair_hour_data_v2s_(historical)(Ctx, #{}).

-spec uniswap_v2_get_pair_hour_data_v2s_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_pair_hour_data_v2_dto:openapi_uniswap_v2_pair_hour_data_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_pair_hour_data_v2s_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/pairhourdatav2s/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pair'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc PairV2s (historical) 🔥
%% Gets pairv2s.
-spec uniswap_v2_get_pair_v2s_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_pair_v2_dto:openapi_uniswap_v2_pair_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_pair_v2s_(historical)(Ctx) ->
    uniswap_v2_get_pair_v2s_(historical)(Ctx, #{}).

-spec uniswap_v2_get_pair_v2s_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_pair_v2_dto:openapi_uniswap_v2_pair_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_pair_v2s_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/pairv2s/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'token_0', 'token_1'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Pools (current) 🔥
%% Gets pools.
-spec uniswap_v2_get_pools_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_pair_v2_dto:openapi_uniswap_v2_pair_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_pools_(current)(Ctx) ->
    uniswap_v2_get_pools_(current)(Ctx, #{}).

-spec uniswap_v2_get_pools_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_pair_v2_dto:openapi_uniswap_v2_pair_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_pools_(current)(Ctx, Optional) ->
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

%% @doc SwapV2s (historical) 🔥
%% Gets swapv2s.
-spec uniswap_v2_get_swap_v2s_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_swap_v2_dto:openapi_uniswap_v2_swap_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_swap_v2s_(historical)(Ctx) ->
    uniswap_v2_get_swap_v2s_(historical)(Ctx, #{}).

-spec uniswap_v2_get_swap_v2s_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_swap_v2_dto:openapi_uniswap_v2_swap_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_swap_v2s_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/swapv2s/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pair'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Swaps (current) 🔥
%% Gets swaps.
-spec uniswap_v2_get_swaps_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_swap_v2_dto:openapi_uniswap_v2_swap_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_swaps_(current)(Ctx) ->
    uniswap_v2_get_swaps_(current)(Ctx, #{}).

-spec uniswap_v2_get_swaps_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_swap_v2_dto:openapi_uniswap_v2_swap_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_swaps_(current)(Ctx, Optional) ->
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

%% @doc TokenDayDataV2s (historical) 🔥
%% Gets tokendaydatav2s.
-spec uniswap_v2_get_token_day_data_v2s_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_token_day_data_v2_dto:openapi_uniswap_v2_token_day_data_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_token_day_data_v2s_(historical)(Ctx) ->
    uniswap_v2_get_token_day_data_v2s_(historical)(Ctx, #{}).

-spec uniswap_v2_get_token_day_data_v2s_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_token_day_data_v2_dto:openapi_uniswap_v2_token_day_data_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_token_day_data_v2s_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/tokendaydatav2s/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc TokenV2s (historical) 🔥
%% Gets tokenv2s.
-spec uniswap_v2_get_token_v2s_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_token_v2_dto:openapi_uniswap_v2_token_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_token_v2s_(historical)(Ctx) ->
    uniswap_v2_get_token_v2s_(historical)(Ctx, #{}).

-spec uniswap_v2_get_token_v2s_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_token_v2_dto:openapi_uniswap_v2_token_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_token_v2s_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/tokenv2s/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'symbol', 'name'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Tokens (current) 🔥
%% Gets tokens.
-spec uniswap_v2_get_tokens_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_token_v2_dto:openapi_uniswap_v2_token_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_tokens_(current)(Ctx) ->
    uniswap_v2_get_tokens_(current)(Ctx, #{}).

-spec uniswap_v2_get_tokens_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_token_v2_dto:openapi_uniswap_v2_token_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_tokens_(current)(Ctx, Optional) ->
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

%% @doc TransactionV2s (historical) 🔥
%% Gets transactionv2s.
-spec uniswap_v2_get_transaction_v2s_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_transaction_v2_dto:openapi_uniswap_v2_transaction_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_transaction_v2s_(historical)(Ctx) ->
    uniswap_v2_get_transaction_v2s_(historical)(Ctx, #{}).

-spec uniswap_v2_get_transaction_v2s_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_transaction_v2_dto:openapi_uniswap_v2_transaction_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_transaction_v2s_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/transactionv2s/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc UniswapDayDataV2s (historical) 🔥
%% Gets uniswapdaydatav2s.
-spec uniswap_v2_get_uniswap_day_data_v2s_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_uniswap_day_data_v2_dto:openapi_uniswap_v2_uniswap_day_data_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_uniswap_day_data_v2s_(historical)(Ctx) ->
    uniswap_v2_get_uniswap_day_data_v2s_(historical)(Ctx, #{}).

-spec uniswap_v2_get_uniswap_day_data_v2s_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_uniswap_day_data_v2_dto:openapi_uniswap_v2_uniswap_day_data_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_uniswap_day_data_v2s_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/uniswapdaydatav2s/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc UniswapFactoryV2s (historical) 🔥
%% Gets uniswapfactoryv2s.
-spec uniswap_v2_get_uniswap_factory_v2s_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_uniswap_factory_v2_dto:openapi_uniswap_v2_uniswap_factory_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_uniswap_factory_v2s_(historical)(Ctx) ->
    uniswap_v2_get_uniswap_factory_v2s_(historical)(Ctx, #{}).

-spec uniswap_v2_get_uniswap_factory_v2s_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_uniswap_factory_v2_dto:openapi_uniswap_v2_uniswap_factory_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_uniswap_factory_v2s_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/uniswapfactoryv2s/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc UserV2s (historical) 🔥
%% Gets userv2s.
-spec uniswap_v2_get_user_v2s_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_user_v2_dto:openapi_uniswap_v2_user_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_user_v2s_(historical)(Ctx) ->
    uniswap_v2_get_user_v2s_(historical)(Ctx, #{}).

-spec uniswap_v2_get_user_v2s_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_user_v2_dto:openapi_uniswap_v2_user_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_user_v2s_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/userv2s/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


