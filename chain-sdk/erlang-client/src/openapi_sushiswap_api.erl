-module(openapi_sushiswap_api).

-export([sushiswap_bundles_(current)/1, sushiswap_bundles_(current)/2,
         sushiswap_burns_(current)/1, sushiswap_burns_(current)/2,
         sushiswap_day_datas_(current)/1, sushiswap_day_datas_(current)/2,
         sushiswap_factorys_(current)/1, sushiswap_factorys_(current)/2,
         sushiswap_get_bundles_(historical)/1, sushiswap_get_bundles_(historical)/2,
         sushiswap_get_burns_(historical)/1, sushiswap_get_burns_(historical)/2,
         sushiswap_get_day_datas_(historical)/1, sushiswap_get_day_datas_(historical)/2,
         sushiswap_get_factorys_(historical)/1, sushiswap_get_factorys_(historical)/2,
         sushiswap_get_hour_datas_(historical)/1, sushiswap_get_hour_datas_(historical)/2,
         sushiswap_get_liquidity_position_snapshots_(historical)/1, sushiswap_get_liquidity_position_snapshots_(historical)/2,
         sushiswap_get_liquidity_positions_(historical)/1, sushiswap_get_liquidity_positions_(historical)/2,
         sushiswap_get_mints_(historical)/1, sushiswap_get_mints_(historical)/2,
         sushiswap_get_pair_day_datas_(historical)/1, sushiswap_get_pair_day_datas_(historical)/2,
         sushiswap_get_pair_hour_datas_(historical)/1, sushiswap_get_pair_hour_datas_(historical)/2,
         sushiswap_get_pairs_(historical)/1, sushiswap_get_pairs_(historical)/2,
         sushiswap_get_swaps_(historical)/1, sushiswap_get_swaps_(historical)/2,
         sushiswap_get_token_day_datas_(historical)/1, sushiswap_get_token_day_datas_(historical)/2,
         sushiswap_get_tokens_(historical)/1, sushiswap_get_tokens_(historical)/2,
         sushiswap_get_transactions_(historical)/1, sushiswap_get_transactions_(historical)/2,
         sushiswap_get_users_(historical)/1, sushiswap_get_users_(historical)/2,
         sushiswap_hour_datas_(current)/1, sushiswap_hour_datas_(current)/2,
         sushiswap_liquidity_position_snapshots_(current)/1, sushiswap_liquidity_position_snapshots_(current)/2,
         sushiswap_liquidity_positions_(current)/1, sushiswap_liquidity_positions_(current)/2,
         sushiswap_mints_(current)/1, sushiswap_mints_(current)/2,
         sushiswap_pair_day_datas_(current)/1, sushiswap_pair_day_datas_(current)/2,
         sushiswap_pair_hour_datas_(current)/1, sushiswap_pair_hour_datas_(current)/2,
         sushiswap_pairs_(current)/1, sushiswap_pairs_(current)/2,
         sushiswap_swaps_(current)/1, sushiswap_swaps_(current)/2,
         sushiswap_token_day_datas_(current)/1, sushiswap_token_day_datas_(current)/2,
         sushiswap_tokens_(current)/1, sushiswap_tokens_(current)/2,
         sushiswap_transactions_(current)/1, sushiswap_transactions_(current)/2,
         sushiswap_users_(current)/1, sushiswap_users_(current)/2]).

-define(BASE_URL, <<"">>).

%% @doc Bundles (current)
%% Gets bundles.
-spec sushiswap_bundles_(current)(ctx:ctx()) -> {ok, [openapi_sushiswap_bundle_dto:openapi_sushiswap_bundle_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_bundles_(current)(Ctx) ->
    sushiswap_bundles_(current)(Ctx, #{}).

-spec sushiswap_bundles_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_bundle_dto:openapi_sushiswap_bundle_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_bundles_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/bundles/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Burns (current)
%% Gets burns.
-spec sushiswap_burns_(current)(ctx:ctx()) -> {ok, [openapi_sushiswap_burn_dto:openapi_sushiswap_burn_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_burns_(current)(Ctx) ->
    sushiswap_burns_(current)(Ctx, #{}).

-spec sushiswap_burns_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_burn_dto:openapi_sushiswap_burn_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_burns_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/burns/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc DayDatas (current)
%% Gets dayDatas.
-spec sushiswap_day_datas_(current)(ctx:ctx()) -> {ok, [openapi_sushiswap_day_data_dto:openapi_sushiswap_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_day_datas_(current)(Ctx) ->
    sushiswap_day_datas_(current)(Ctx, #{}).

-spec sushiswap_day_datas_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_day_data_dto:openapi_sushiswap_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_day_datas_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/dayDatas/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Factorys (current)
%% Gets factorys.
-spec sushiswap_factorys_(current)(ctx:ctx()) -> {ok, [openapi_sushiswap_factory_dto:openapi_sushiswap_factory_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_factorys_(current)(Ctx) ->
    sushiswap_factorys_(current)(Ctx, #{}).

-spec sushiswap_factorys_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_factory_dto:openapi_sushiswap_factory_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_factorys_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/factorys/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Bundles (historical) 🔥
%% Gets bundles.
-spec sushiswap_get_bundles_(historical)(ctx:ctx()) -> {ok, [openapi_sushiswap_bundle_dto:openapi_sushiswap_bundle_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_bundles_(historical)(Ctx) ->
    sushiswap_get_bundles_(historical)(Ctx, #{}).

-spec sushiswap_get_bundles_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_bundle_dto:openapi_sushiswap_bundle_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_bundles_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/bundles/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Burns (historical) 🔥
%% Gets burns.
-spec sushiswap_get_burns_(historical)(ctx:ctx()) -> {ok, [openapi_sushiswap_burn_dto:openapi_sushiswap_burn_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_burns_(historical)(Ctx) ->
    sushiswap_get_burns_(historical)(Ctx, #{}).

-spec sushiswap_get_burns_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_burn_dto:openapi_sushiswap_burn_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_burns_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/burns/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pair'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc DayDatas (historical) 🔥
%% Gets dayDatas.
-spec sushiswap_get_day_datas_(historical)(ctx:ctx()) -> {ok, [openapi_sushiswap_day_data_dto:openapi_sushiswap_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_day_datas_(historical)(Ctx) ->
    sushiswap_get_day_datas_(historical)(Ctx, #{}).

-spec sushiswap_get_day_datas_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_day_data_dto:openapi_sushiswap_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_day_datas_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/dayDatas/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Factorys (historical) 🔥
%% Gets factorys.
-spec sushiswap_get_factorys_(historical)(ctx:ctx()) -> {ok, [openapi_sushiswap_factory_dto:openapi_sushiswap_factory_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_factorys_(historical)(Ctx) ->
    sushiswap_get_factorys_(historical)(Ctx, #{}).

-spec sushiswap_get_factorys_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_factory_dto:openapi_sushiswap_factory_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_factorys_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/factorys/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc HourDatas (historical) 🔥
%% Gets hourDatas.
-spec sushiswap_get_hour_datas_(historical)(ctx:ctx()) -> {ok, [openapi_sushiswap_hour_data_dto:openapi_sushiswap_hour_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_hour_datas_(historical)(Ctx) ->
    sushiswap_get_hour_datas_(historical)(Ctx, #{}).

-spec sushiswap_get_hour_datas_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_hour_data_dto:openapi_sushiswap_hour_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_hour_datas_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/hourDatas/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc LiquidityPositionSnapshots (historical) 🔥
%% Gets liquidityPositionSnapshots.
-spec sushiswap_get_liquidity_position_snapshots_(historical)(ctx:ctx()) -> {ok, [openapi_sushiswap_liquidity_position_snapshot_dto:openapi_sushiswap_liquidity_position_snapshot_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_liquidity_position_snapshots_(historical)(Ctx) ->
    sushiswap_get_liquidity_position_snapshots_(historical)(Ctx, #{}).

-spec sushiswap_get_liquidity_position_snapshots_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_liquidity_position_snapshot_dto:openapi_sushiswap_liquidity_position_snapshot_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_liquidity_position_snapshots_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/liquidityPositionSnapshots/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'user', 'pair'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc LiquidityPositions (historical) 🔥
%% Gets liquidityPositions.
-spec sushiswap_get_liquidity_positions_(historical)(ctx:ctx()) -> {ok, [openapi_sushiswap_liquidity_position_dto:openapi_sushiswap_liquidity_position_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_liquidity_positions_(historical)(Ctx) ->
    sushiswap_get_liquidity_positions_(historical)(Ctx, #{}).

-spec sushiswap_get_liquidity_positions_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_liquidity_position_dto:openapi_sushiswap_liquidity_position_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_liquidity_positions_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/liquidityPositions/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'user', 'pair'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Mints (historical) 🔥
%% Gets mints.
-spec sushiswap_get_mints_(historical)(ctx:ctx()) -> {ok, [openapi_sushiswap_mint_dto:openapi_sushiswap_mint_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_mints_(historical)(Ctx) ->
    sushiswap_get_mints_(historical)(Ctx, #{}).

-spec sushiswap_get_mints_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_mint_dto:openapi_sushiswap_mint_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_mints_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/mints/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pair'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc PairDayDatas (historical) 🔥
%% Gets pairDayDatas.
-spec sushiswap_get_pair_day_datas_(historical)(ctx:ctx()) -> {ok, [openapi_sushiswap_pair_day_data_dto:openapi_sushiswap_pair_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_pair_day_datas_(historical)(Ctx) ->
    sushiswap_get_pair_day_datas_(historical)(Ctx, #{}).

-spec sushiswap_get_pair_day_datas_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_pair_day_data_dto:openapi_sushiswap_pair_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_pair_day_datas_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/pairDayDatas/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pair', 'token_0', 'token_1'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc PairHourDatas (historical) 🔥
%% Gets pairHourDatas.
-spec sushiswap_get_pair_hour_datas_(historical)(ctx:ctx()) -> {ok, [openapi_sushiswap_pair_hour_data_dto:openapi_sushiswap_pair_hour_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_pair_hour_datas_(historical)(Ctx) ->
    sushiswap_get_pair_hour_datas_(historical)(Ctx, #{}).

-spec sushiswap_get_pair_hour_datas_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_pair_hour_data_dto:openapi_sushiswap_pair_hour_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_pair_hour_datas_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/pairHourDatas/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pair'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Pairs (historical) 🔥
%% Gets pairs.
-spec sushiswap_get_pairs_(historical)(ctx:ctx()) -> {ok, [openapi_sushiswap_pair_dto:openapi_sushiswap_pair_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_pairs_(historical)(Ctx) ->
    sushiswap_get_pairs_(historical)(Ctx, #{}).

-spec sushiswap_get_pairs_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_pair_dto:openapi_sushiswap_pair_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_pairs_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/pairs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'name', 'token_0', 'token_1'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Swaps (historical) 🔥
%% Gets swaps.
-spec sushiswap_get_swaps_(historical)(ctx:ctx()) -> {ok, [openapi_sushiswap_swap_dto:openapi_sushiswap_swap_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_swaps_(historical)(Ctx) ->
    sushiswap_get_swaps_(historical)(Ctx, #{}).

-spec sushiswap_get_swaps_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_swap_dto:openapi_sushiswap_swap_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_swaps_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/swaps/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pair'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc TokenDayDatas (historical) 🔥
%% Gets tokenDayDatas.
-spec sushiswap_get_token_day_datas_(historical)(ctx:ctx()) -> {ok, [openapi_sushiswap_token_day_data_dto:openapi_sushiswap_token_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_token_day_datas_(historical)(Ctx) ->
    sushiswap_get_token_day_datas_(historical)(Ctx, #{}).

-spec sushiswap_get_token_day_datas_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_token_day_data_dto:openapi_sushiswap_token_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_token_day_datas_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/tokenDayDatas/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Tokens (historical) 🔥
%% Gets tokens.
-spec sushiswap_get_tokens_(historical)(ctx:ctx()) -> {ok, [openapi_sushiswap_token_dto:openapi_sushiswap_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_tokens_(historical)(Ctx) ->
    sushiswap_get_tokens_(historical)(Ctx, #{}).

-spec sushiswap_get_tokens_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_token_dto:openapi_sushiswap_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_tokens_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/tokens/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'symbol', 'name'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Transactions (historical) 🔥
%% Gets transactions.
-spec sushiswap_get_transactions_(historical)(ctx:ctx()) -> {ok, [openapi_sushiswap_transaction_dto:openapi_sushiswap_transaction_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_transactions_(historical)(Ctx) ->
    sushiswap_get_transactions_(historical)(Ctx, #{}).

-spec sushiswap_get_transactions_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_transaction_dto:openapi_sushiswap_transaction_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_transactions_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/transactions/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Users (historical) 🔥
%% Gets users.
-spec sushiswap_get_users_(historical)(ctx:ctx()) -> {ok, [openapi_sushiswap_user_dto:openapi_sushiswap_user_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_users_(historical)(Ctx) ->
    sushiswap_get_users_(historical)(Ctx, #{}).

-spec sushiswap_get_users_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_user_dto:openapi_sushiswap_user_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_users_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/users/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc HourDatas (current)
%% Gets hourDatas.
-spec sushiswap_hour_datas_(current)(ctx:ctx()) -> {ok, [openapi_sushiswap_hour_data_dto:openapi_sushiswap_hour_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_hour_datas_(current)(Ctx) ->
    sushiswap_hour_datas_(current)(Ctx, #{}).

-spec sushiswap_hour_datas_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_hour_data_dto:openapi_sushiswap_hour_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_hour_datas_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/hourDatas/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc LiquidityPositionSnapshots (current)
%% Gets liquidityPositionSnapshots.
-spec sushiswap_liquidity_position_snapshots_(current)(ctx:ctx()) -> {ok, [openapi_sushiswap_liquidity_position_snapshot_dto:openapi_sushiswap_liquidity_position_snapshot_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_liquidity_position_snapshots_(current)(Ctx) ->
    sushiswap_liquidity_position_snapshots_(current)(Ctx, #{}).

-spec sushiswap_liquidity_position_snapshots_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_liquidity_position_snapshot_dto:openapi_sushiswap_liquidity_position_snapshot_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_liquidity_position_snapshots_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/liquidityPositionSnapshots/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc LiquidityPositions (current)
%% Gets liquidityPositions.
-spec sushiswap_liquidity_positions_(current)(ctx:ctx()) -> {ok, [openapi_sushiswap_liquidity_position_dto:openapi_sushiswap_liquidity_position_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_liquidity_positions_(current)(Ctx) ->
    sushiswap_liquidity_positions_(current)(Ctx, #{}).

-spec sushiswap_liquidity_positions_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_liquidity_position_dto:openapi_sushiswap_liquidity_position_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_liquidity_positions_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/liquidityPositions/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Mints (current)
%% Gets mints.
-spec sushiswap_mints_(current)(ctx:ctx()) -> {ok, [openapi_sushiswap_mint_dto:openapi_sushiswap_mint_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_mints_(current)(Ctx) ->
    sushiswap_mints_(current)(Ctx, #{}).

-spec sushiswap_mints_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_mint_dto:openapi_sushiswap_mint_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_mints_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/mints/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc PairDayDatas (current)
%% Gets pairDayDatas.
-spec sushiswap_pair_day_datas_(current)(ctx:ctx()) -> {ok, [openapi_sushiswap_pair_day_data_dto:openapi_sushiswap_pair_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_pair_day_datas_(current)(Ctx) ->
    sushiswap_pair_day_datas_(current)(Ctx, #{}).

-spec sushiswap_pair_day_datas_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_pair_day_data_dto:openapi_sushiswap_pair_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_pair_day_datas_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/pairDayDatas/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc PairHourDatas (current)
%% Gets pairHourDatas.
-spec sushiswap_pair_hour_datas_(current)(ctx:ctx()) -> {ok, [openapi_sushiswap_pair_hour_data_dto:openapi_sushiswap_pair_hour_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_pair_hour_datas_(current)(Ctx) ->
    sushiswap_pair_hour_datas_(current)(Ctx, #{}).

-spec sushiswap_pair_hour_datas_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_pair_hour_data_dto:openapi_sushiswap_pair_hour_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_pair_hour_datas_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/pairHourDatas/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Pairs (current)
%% Gets pairs.
-spec sushiswap_pairs_(current)(ctx:ctx()) -> {ok, [openapi_sushiswap_pair_dto:openapi_sushiswap_pair_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_pairs_(current)(Ctx) ->
    sushiswap_pairs_(current)(Ctx, #{}).

-spec sushiswap_pairs_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_pair_dto:openapi_sushiswap_pair_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_pairs_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/pairs/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Swaps (current)
%% Gets swaps.
-spec sushiswap_swaps_(current)(ctx:ctx()) -> {ok, [openapi_sushiswap_swap_dto:openapi_sushiswap_swap_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_swaps_(current)(Ctx) ->
    sushiswap_swaps_(current)(Ctx, #{}).

-spec sushiswap_swaps_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_swap_dto:openapi_sushiswap_swap_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_swaps_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/swaps/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['pair'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc TokenDayDatas (current)
%% Gets tokenDayDatas.
-spec sushiswap_token_day_datas_(current)(ctx:ctx()) -> {ok, [openapi_sushiswap_token_day_data_dto:openapi_sushiswap_token_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_token_day_datas_(current)(Ctx) ->
    sushiswap_token_day_datas_(current)(Ctx, #{}).

-spec sushiswap_token_day_datas_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_token_day_data_dto:openapi_sushiswap_token_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_token_day_datas_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/tokenDayDatas/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Tokens (current)
%% Gets tokens.
-spec sushiswap_tokens_(current)(ctx:ctx()) -> {ok, [openapi_sushiswap_token_dto:openapi_sushiswap_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_tokens_(current)(Ctx) ->
    sushiswap_tokens_(current)(Ctx, #{}).

-spec sushiswap_tokens_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_token_dto:openapi_sushiswap_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_tokens_(current)(Ctx, Optional) ->
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

%% @doc Transactions (current)
%% Gets transactions.
-spec sushiswap_transactions_(current)(ctx:ctx()) -> {ok, [openapi_sushiswap_transaction_dto:openapi_sushiswap_transaction_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_transactions_(current)(Ctx) ->
    sushiswap_transactions_(current)(Ctx, #{}).

-spec sushiswap_transactions_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_transaction_dto:openapi_sushiswap_transaction_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_transactions_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/transactions/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Users (current)
%% Gets users.
-spec sushiswap_users_(current)(ctx:ctx()) -> {ok, [openapi_sushiswap_user_dto:openapi_sushiswap_user_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_users_(current)(Ctx) ->
    sushiswap_users_(current)(Ctx, #{}).

-spec sushiswap_users_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_user_dto:openapi_sushiswap_user_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_users_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/users/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


