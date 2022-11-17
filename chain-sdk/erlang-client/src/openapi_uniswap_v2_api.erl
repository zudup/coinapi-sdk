-module(openapi_uniswap_v2_api).

-export([uniswap_v2_bundles_(current)/1, uniswap_v2_bundles_(current)/2,
         uniswap_v2_burns_(current)/1, uniswap_v2_burns_(current)/2,
         uniswap_v2_get_bundles_(historical)/1, uniswap_v2_get_bundles_(historical)/2,
         uniswap_v2_get_burns_(historical)/1, uniswap_v2_get_burns_(historical)/2,
         uniswap_v2_get_liquidity_position_snapshots_(historical)/1, uniswap_v2_get_liquidity_position_snapshots_(historical)/2,
         uniswap_v2_get_liquidity_positions_(historical)/1, uniswap_v2_get_liquidity_positions_(historical)/2,
         uniswap_v2_get_mints_(historical)/1, uniswap_v2_get_mints_(historical)/2,
         uniswap_v2_get_pair_day_datas_(historical)/1, uniswap_v2_get_pair_day_datas_(historical)/2,
         uniswap_v2_get_pair_hour_datas_(historical)/1, uniswap_v2_get_pair_hour_datas_(historical)/2,
         uniswap_v2_get_pairs_(historical)/1, uniswap_v2_get_pairs_(historical)/2,
         uniswap_v2_get_swaps_(historical)/1, uniswap_v2_get_swaps_(historical)/2,
         uniswap_v2_get_token_day_datas_(historical)/1, uniswap_v2_get_token_day_datas_(historical)/2,
         uniswap_v2_get_tokens_(historical)/1, uniswap_v2_get_tokens_(historical)/2,
         uniswap_v2_get_transactions_(historical)/1, uniswap_v2_get_transactions_(historical)/2,
         uniswap_v2_get_uniswap_day_datas_(historical)/1, uniswap_v2_get_uniswap_day_datas_(historical)/2,
         uniswap_v2_get_uniswap_factorys_(historical)/1, uniswap_v2_get_uniswap_factorys_(historical)/2,
         uniswap_v2_get_users_(historical)/1, uniswap_v2_get_users_(historical)/2,
         uniswap_v2_liquidity_position_snapshots_(current)/1, uniswap_v2_liquidity_position_snapshots_(current)/2,
         uniswap_v2_liquidity_positions_(current)/1, uniswap_v2_liquidity_positions_(current)/2,
         uniswap_v2_mints_(current)/1, uniswap_v2_mints_(current)/2,
         uniswap_v2_pair_day_datas_(current)/1, uniswap_v2_pair_day_datas_(current)/2,
         uniswap_v2_pair_hour_datas_(current)/1, uniswap_v2_pair_hour_datas_(current)/2,
         uniswap_v2_pairs_(current)/1, uniswap_v2_pairs_(current)/2,
         uniswap_v2_swaps_(current)/1, uniswap_v2_swaps_(current)/2,
         uniswap_v2_token_day_datas_(current)/1, uniswap_v2_token_day_datas_(current)/2,
         uniswap_v2_tokens_(current)/1, uniswap_v2_tokens_(current)/2,
         uniswap_v2_transactions_(current)/1, uniswap_v2_transactions_(current)/2,
         uniswap_v2_uniswap_day_datas_(current)/1, uniswap_v2_uniswap_day_datas_(current)/2,
         uniswap_v2_uniswap_factorys_(current)/1, uniswap_v2_uniswap_factorys_(current)/2,
         uniswap_v2_users_(current)/1, uniswap_v2_users_(current)/2]).

-define(BASE_URL, <<"">>).

%% @doc Bundles (current)
%% Gets bundles.
-spec uniswap_v2_bundles_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_bundle_dto:openapi_uniswap_v2_bundle_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_bundles_(current)(Ctx) ->
    uniswap_v2_bundles_(current)(Ctx, #{}).

-spec uniswap_v2_bundles_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_bundle_dto:openapi_uniswap_v2_bundle_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_bundles_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/bundles/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Burns (current)
%% Gets burns.
-spec uniswap_v2_burns_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_burn_dto:openapi_uniswap_v2_burn_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_burns_(current)(Ctx) ->
    uniswap_v2_burns_(current)(Ctx, #{}).

-spec uniswap_v2_burns_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_burn_dto:openapi_uniswap_v2_burn_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_burns_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/burns/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Bundles (historical)
%% Gets bundles.
-spec uniswap_v2_get_bundles_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_bundle_dto:openapi_uniswap_v2_bundle_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_bundles_(historical)(Ctx) ->
    uniswap_v2_get_bundles_(historical)(Ctx, #{}).

-spec uniswap_v2_get_bundles_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_bundle_dto:openapi_uniswap_v2_bundle_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_bundles_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/bundles/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Burns (historical)
%% Gets burns.
-spec uniswap_v2_get_burns_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_burn_dto:openapi_uniswap_v2_burn_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_burns_(historical)(Ctx) ->
    uniswap_v2_get_burns_(historical)(Ctx, #{}).

-spec uniswap_v2_get_burns_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_burn_dto:openapi_uniswap_v2_burn_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_burns_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/burns/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pair'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc LiquidityPositionSnapshots (historical)
%% Gets liquidityPositionSnapshots.
-spec uniswap_v2_get_liquidity_position_snapshots_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_liquidity_position_snapshot_dto:openapi_uniswap_v2_liquidity_position_snapshot_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_liquidity_position_snapshots_(historical)(Ctx) ->
    uniswap_v2_get_liquidity_position_snapshots_(historical)(Ctx, #{}).

-spec uniswap_v2_get_liquidity_position_snapshots_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_liquidity_position_snapshot_dto:openapi_uniswap_v2_liquidity_position_snapshot_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_liquidity_position_snapshots_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/liquidityPositionSnapshots/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'user', 'pair'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc LiquidityPositions (historical)
%% Gets liquidityPositions.
-spec uniswap_v2_get_liquidity_positions_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_liquidity_position_dto:openapi_uniswap_v2_liquidity_position_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_liquidity_positions_(historical)(Ctx) ->
    uniswap_v2_get_liquidity_positions_(historical)(Ctx, #{}).

-spec uniswap_v2_get_liquidity_positions_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_liquidity_position_dto:openapi_uniswap_v2_liquidity_position_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_liquidity_positions_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/liquidityPositions/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'user', 'pair'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Mints (historical)
%% Gets mints.
-spec uniswap_v2_get_mints_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_mint_dto:openapi_uniswap_v2_mint_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_mints_(historical)(Ctx) ->
    uniswap_v2_get_mints_(historical)(Ctx, #{}).

-spec uniswap_v2_get_mints_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_mint_dto:openapi_uniswap_v2_mint_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_mints_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/mints/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pair'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc PairDayDatas (historical)
%% Gets pairDayDatas.
-spec uniswap_v2_get_pair_day_datas_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_pair_day_data_dto:openapi_uniswap_v2_pair_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_pair_day_datas_(historical)(Ctx) ->
    uniswap_v2_get_pair_day_datas_(historical)(Ctx, #{}).

-spec uniswap_v2_get_pair_day_datas_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_pair_day_data_dto:openapi_uniswap_v2_pair_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_pair_day_datas_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/pairDayDatas/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'token_0', 'token_1'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc PairHourDatas (historical)
%% Gets pairHourDatas.
-spec uniswap_v2_get_pair_hour_datas_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_pair_hour_data_dto:openapi_uniswap_v2_pair_hour_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_pair_hour_datas_(historical)(Ctx) ->
    uniswap_v2_get_pair_hour_datas_(historical)(Ctx, #{}).

-spec uniswap_v2_get_pair_hour_datas_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_pair_hour_data_dto:openapi_uniswap_v2_pair_hour_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_pair_hour_datas_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/pairHourDatas/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pair'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Pairs (historical)
%% Gets pairs.
-spec uniswap_v2_get_pairs_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_pair_dto:openapi_uniswap_v2_pair_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_pairs_(historical)(Ctx) ->
    uniswap_v2_get_pairs_(historical)(Ctx, #{}).

-spec uniswap_v2_get_pairs_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_pair_dto:openapi_uniswap_v2_pair_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_pairs_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/pairs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'token_0', 'token_1'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Swaps (historical)
%% Gets swaps.
-spec uniswap_v2_get_swaps_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_swap_dto:openapi_uniswap_v2_swap_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_swaps_(historical)(Ctx) ->
    uniswap_v2_get_swaps_(historical)(Ctx, #{}).

-spec uniswap_v2_get_swaps_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_swap_dto:openapi_uniswap_v2_swap_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_swaps_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/swaps/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pair'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc TokenDayDatas (historical)
%% Gets tokenDayDatas.
-spec uniswap_v2_get_token_day_datas_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_token_day_data_dto:openapi_uniswap_v2_token_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_token_day_datas_(historical)(Ctx) ->
    uniswap_v2_get_token_day_datas_(historical)(Ctx, #{}).

-spec uniswap_v2_get_token_day_datas_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_token_day_data_dto:openapi_uniswap_v2_token_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_token_day_datas_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/tokenDayDatas/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Tokens (historical)
%% Gets tokens.
-spec uniswap_v2_get_tokens_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_token_dto:openapi_uniswap_v2_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_tokens_(historical)(Ctx) ->
    uniswap_v2_get_tokens_(historical)(Ctx, #{}).

-spec uniswap_v2_get_tokens_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_token_dto:openapi_uniswap_v2_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_tokens_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/tokens/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'symbol', 'name'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Transactions (historical)
%% Gets transactions.
-spec uniswap_v2_get_transactions_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_transaction_dto:openapi_uniswap_v2_transaction_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_transactions_(historical)(Ctx) ->
    uniswap_v2_get_transactions_(historical)(Ctx, #{}).

-spec uniswap_v2_get_transactions_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_transaction_dto:openapi_uniswap_v2_transaction_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_transactions_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/transactions/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc UniswapDayDatas (historical)
%% Gets uniswapDayDatas.
-spec uniswap_v2_get_uniswap_day_datas_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_uniswap_day_data_dto:openapi_uniswap_v2_uniswap_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_uniswap_day_datas_(historical)(Ctx) ->
    uniswap_v2_get_uniswap_day_datas_(historical)(Ctx, #{}).

-spec uniswap_v2_get_uniswap_day_datas_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_uniswap_day_data_dto:openapi_uniswap_v2_uniswap_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_uniswap_day_datas_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/uniswapDayDatas/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc UniswapFactorys (historical)
%% Gets uniswapFactorys.
-spec uniswap_v2_get_uniswap_factorys_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_uniswap_factory_dto:openapi_uniswap_v2_uniswap_factory_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_uniswap_factorys_(historical)(Ctx) ->
    uniswap_v2_get_uniswap_factorys_(historical)(Ctx, #{}).

-spec uniswap_v2_get_uniswap_factorys_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_uniswap_factory_dto:openapi_uniswap_v2_uniswap_factory_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_uniswap_factorys_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/uniswapFactorys/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Users (historical)
%% Gets users.
-spec uniswap_v2_get_users_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_user_dto:openapi_uniswap_v2_user_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_users_(historical)(Ctx) ->
    uniswap_v2_get_users_(historical)(Ctx, #{}).

-spec uniswap_v2_get_users_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_user_dto:openapi_uniswap_v2_user_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_users_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/users/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc LiquidityPositionSnapshots (current)
%% Gets liquidityPositionSnapshots.
-spec uniswap_v2_liquidity_position_snapshots_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_liquidity_position_snapshot_dto:openapi_uniswap_v2_liquidity_position_snapshot_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_liquidity_position_snapshots_(current)(Ctx) ->
    uniswap_v2_liquidity_position_snapshots_(current)(Ctx, #{}).

-spec uniswap_v2_liquidity_position_snapshots_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_liquidity_position_snapshot_dto:openapi_uniswap_v2_liquidity_position_snapshot_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_liquidity_position_snapshots_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/liquidityPositionSnapshots/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc LiquidityPositions (current)
%% Gets liquidityPositions.
-spec uniswap_v2_liquidity_positions_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_liquidity_position_dto:openapi_uniswap_v2_liquidity_position_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_liquidity_positions_(current)(Ctx) ->
    uniswap_v2_liquidity_positions_(current)(Ctx, #{}).

-spec uniswap_v2_liquidity_positions_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_liquidity_position_dto:openapi_uniswap_v2_liquidity_position_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_liquidity_positions_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/liquidityPositions/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Mints (current)
%% Gets mints.
-spec uniswap_v2_mints_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_mint_dto:openapi_uniswap_v2_mint_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_mints_(current)(Ctx) ->
    uniswap_v2_mints_(current)(Ctx, #{}).

-spec uniswap_v2_mints_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_mint_dto:openapi_uniswap_v2_mint_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_mints_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/mints/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc PairDayDatas (current)
%% Gets pairDayDatas.
-spec uniswap_v2_pair_day_datas_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_pair_day_data_dto:openapi_uniswap_v2_pair_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_pair_day_datas_(current)(Ctx) ->
    uniswap_v2_pair_day_datas_(current)(Ctx, #{}).

-spec uniswap_v2_pair_day_datas_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_pair_day_data_dto:openapi_uniswap_v2_pair_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_pair_day_datas_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/pairDayDatas/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc PairHourDatas (current)
%% Gets pairHourDatas.
-spec uniswap_v2_pair_hour_datas_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_pair_hour_data_dto:openapi_uniswap_v2_pair_hour_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_pair_hour_datas_(current)(Ctx) ->
    uniswap_v2_pair_hour_datas_(current)(Ctx, #{}).

-spec uniswap_v2_pair_hour_datas_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_pair_hour_data_dto:openapi_uniswap_v2_pair_hour_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_pair_hour_datas_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/pairHourDatas/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Pairs (current)
%% Gets pairs.
-spec uniswap_v2_pairs_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_pair_dto:openapi_uniswap_v2_pair_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_pairs_(current)(Ctx) ->
    uniswap_v2_pairs_(current)(Ctx, #{}).

-spec uniswap_v2_pairs_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_pair_dto:openapi_uniswap_v2_pair_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_pairs_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/pairs/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Swaps (current)
%% Gets swaps.
-spec uniswap_v2_swaps_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_swap_dto:openapi_uniswap_v2_swap_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_swaps_(current)(Ctx) ->
    uniswap_v2_swaps_(current)(Ctx, #{}).

-spec uniswap_v2_swaps_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_swap_dto:openapi_uniswap_v2_swap_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_swaps_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/swaps/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['pair'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc TokenDayDatas (current)
%% Gets tokenDayDatas.
-spec uniswap_v2_token_day_datas_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_token_day_data_dto:openapi_uniswap_v2_token_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_token_day_datas_(current)(Ctx) ->
    uniswap_v2_token_day_datas_(current)(Ctx, #{}).

-spec uniswap_v2_token_day_datas_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_token_day_data_dto:openapi_uniswap_v2_token_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_token_day_datas_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/tokenDayDatas/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Tokens (current)
%% Gets tokens.
-spec uniswap_v2_tokens_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_token_dto:openapi_uniswap_v2_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_tokens_(current)(Ctx) ->
    uniswap_v2_tokens_(current)(Ctx, #{}).

-spec uniswap_v2_tokens_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_token_dto:openapi_uniswap_v2_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_tokens_(current)(Ctx, Optional) ->
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

%% @doc Transactions (current)
%% Gets transactions.
-spec uniswap_v2_transactions_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_transaction_dto:openapi_uniswap_v2_transaction_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_transactions_(current)(Ctx) ->
    uniswap_v2_transactions_(current)(Ctx, #{}).

-spec uniswap_v2_transactions_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_transaction_dto:openapi_uniswap_v2_transaction_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_transactions_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/transactions/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc UniswapDayDatas (current)
%% Gets uniswapDayDatas.
-spec uniswap_v2_uniswap_day_datas_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_uniswap_day_data_dto:openapi_uniswap_v2_uniswap_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_uniswap_day_datas_(current)(Ctx) ->
    uniswap_v2_uniswap_day_datas_(current)(Ctx, #{}).

-spec uniswap_v2_uniswap_day_datas_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_uniswap_day_data_dto:openapi_uniswap_v2_uniswap_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_uniswap_day_datas_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/uniswapDayDatas/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc UniswapFactorys (current)
%% Gets uniswapFactorys.
-spec uniswap_v2_uniswap_factorys_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_uniswap_factory_dto:openapi_uniswap_v2_uniswap_factory_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_uniswap_factorys_(current)(Ctx) ->
    uniswap_v2_uniswap_factorys_(current)(Ctx, #{}).

-spec uniswap_v2_uniswap_factorys_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_uniswap_factory_dto:openapi_uniswap_v2_uniswap_factory_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_uniswap_factorys_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/uniswapFactorys/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Users (current)
%% Gets users.
-spec uniswap_v2_users_(current)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_user_dto:openapi_uniswap_v2_user_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_users_(current)(Ctx) ->
    uniswap_v2_users_(current)(Ctx, #{}).

-spec uniswap_v2_users_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_user_dto:openapi_uniswap_v2_user_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_users_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/users/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


