-module(openapi_uniswap_v2_api).

-export([uniswap_v2_get_bundle_v2_dtos_(historical)/1, uniswap_v2_get_bundle_v2_dtos_(historical)/2,
         uniswap_v2_get_bundles_(historical)/1, uniswap_v2_get_bundles_(historical)/2,
         uniswap_v2_get_burn_v2_dtos_(historical)/1, uniswap_v2_get_burn_v2_dtos_(historical)/2,
         uniswap_v2_get_burns_(historical)/1, uniswap_v2_get_burns_(historical)/2,
         uniswap_v2_get_day_data_(historical)/1, uniswap_v2_get_day_data_(historical)/2,
         uniswap_v2_get_factory_(historical)/1, uniswap_v2_get_factory_(historical)/2,
         uniswap_v2_get_liquidity_position_snapshot_v2_dtos_(historical)/1, uniswap_v2_get_liquidity_position_snapshot_v2_dtos_(historical)/2,
         uniswap_v2_get_liquidity_position_v2_dtos_(historical)/1, uniswap_v2_get_liquidity_position_v2_dtos_(historical)/2,
         uniswap_v2_get_liquidity_positions_(historical)/1, uniswap_v2_get_liquidity_positions_(historical)/2,
         uniswap_v2_get_liquidity_positions_snapshots_(historical)/1, uniswap_v2_get_liquidity_positions_snapshots_(historical)/2,
         uniswap_v2_get_mint_v2_dtos_(historical)/1, uniswap_v2_get_mint_v2_dtos_(historical)/2,
         uniswap_v2_get_mints_(historical)/1, uniswap_v2_get_mints_(historical)/2,
         uniswap_v2_get_pair_day_data_v2_dtos_(historical)/1, uniswap_v2_get_pair_day_data_v2_dtos_(historical)/2,
         uniswap_v2_get_pair_hour_data_v2_dtos_(historical)/1, uniswap_v2_get_pair_hour_data_v2_dtos_(historical)/2,
         uniswap_v2_get_pair_v2_dtos_(historical)/1, uniswap_v2_get_pair_v2_dtos_(historical)/2,
         uniswap_v2_get_pools_(current)/1, uniswap_v2_get_pools_(current)/2,
         uniswap_v2_get_pools_(historical)/1, uniswap_v2_get_pools_(historical)/2,
         uniswap_v2_get_pools_day_data_(historical)/1, uniswap_v2_get_pools_day_data_(historical)/2,
         uniswap_v2_get_pools_hour_data_(historical)/1, uniswap_v2_get_pools_hour_data_(historical)/2,
         uniswap_v2_get_swap_v2_dtos_(historical)/1, uniswap_v2_get_swap_v2_dtos_(historical)/2,
         uniswap_v2_get_swaps_(current)/1, uniswap_v2_get_swaps_(current)/2,
         uniswap_v2_get_swaps_(historical)/1, uniswap_v2_get_swaps_(historical)/2,
         uniswap_v2_get_token_day_data_v2_dtos_(historical)/1, uniswap_v2_get_token_day_data_v2_dtos_(historical)/2,
         uniswap_v2_get_token_v2_dtos_(historical)/1, uniswap_v2_get_token_v2_dtos_(historical)/2,
         uniswap_v2_get_tokens_(current)/1, uniswap_v2_get_tokens_(current)/2,
         uniswap_v2_get_tokens_(historical)/1, uniswap_v2_get_tokens_(historical)/2,
         uniswap_v2_get_tokens_day_data_(historical)/1, uniswap_v2_get_tokens_day_data_(historical)/2,
         uniswap_v2_get_transaction_v2_dtos_(historical)/1, uniswap_v2_get_transaction_v2_dtos_(historical)/2,
         uniswap_v2_get_transactions_(historical)/1, uniswap_v2_get_transactions_(historical)/2,
         uniswap_v2_get_uniswap_day_data_v2_dtos_(historical)/1, uniswap_v2_get_uniswap_day_data_v2_dtos_(historical)/2,
         uniswap_v2_get_uniswap_factory_v2_dtos_(historical)/1, uniswap_v2_get_uniswap_factory_v2_dtos_(historical)/2,
         uniswap_v2_get_user_v2_dtos_(historical)/1, uniswap_v2_get_user_v2_dtos_(historical)/2,
         uniswap_v2_get_users_(historical)/1, uniswap_v2_get_users_(historical)/2]).

-define(BASE_URL, <<"">>).

%% @doc BundleV2DTOs (historical) 🔥
%% Gets BundleV2DTOs.
-spec uniswap_v2_get_bundle_v2_dtos_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_bundle_v2_dto:openapi_uniswap_v2_bundle_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_bundle_v2_dtos_(historical)(Ctx) ->
    uniswap_v2_get_bundle_v2_dtos_(historical)(Ctx, #{}).

-spec uniswap_v2_get_bundle_v2_dtos_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_bundle_v2_dto:openapi_uniswap_v2_bundle_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_bundle_v2_dtos_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/BundleV2DTOs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Bundles (historical)
%% Gets bundles.
-spec uniswap_v2_get_bundles_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_bundle_v2_dto:openapi_uniswap_v2_bundle_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_bundles_(historical)(Ctx) ->
    uniswap_v2_get_bundles_(historical)(Ctx, #{}).

-spec uniswap_v2_get_bundles_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_bundle_v2_dto:openapi_uniswap_v2_bundle_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_bundles_(historical)(Ctx, Optional) ->
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

%% @doc BurnV2DTOs (historical) 🔥
%% Gets BurnV2DTOs.
-spec uniswap_v2_get_burn_v2_dtos_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_burn_v2_dto:openapi_uniswap_v2_burn_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_burn_v2_dtos_(historical)(Ctx) ->
    uniswap_v2_get_burn_v2_dtos_(historical)(Ctx, #{}).

-spec uniswap_v2_get_burn_v2_dtos_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_burn_v2_dto:openapi_uniswap_v2_burn_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_burn_v2_dtos_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/BurnV2DTOs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Burns (historical)
%% Gets burns.
-spec uniswap_v2_get_burns_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_burn_v2_dto:openapi_uniswap_v2_burn_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_burns_(historical)(Ctx) ->
    uniswap_v2_get_burns_(historical)(Ctx, #{}).

-spec uniswap_v2_get_burns_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_burn_v2_dto:openapi_uniswap_v2_burn_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_burns_(historical)(Ctx, Optional) ->
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

%% @doc DayData (historical)
%% Gets uniswapv2 day data.
-spec uniswap_v2_get_day_data_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_uniswap_day_data_v2_dto:openapi_uniswap_v2_uniswap_day_data_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_day_data_(historical)(Ctx) ->
    uniswap_v2_get_day_data_(historical)(Ctx, #{}).

-spec uniswap_v2_get_day_data_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_uniswap_day_data_v2_dto:openapi_uniswap_v2_uniswap_day_data_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_day_data_(historical)(Ctx, Optional) ->
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

%% @doc Factory (historical)
%% Gets factory.
-spec uniswap_v2_get_factory_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_uniswap_factory_v2_dto:openapi_uniswap_v2_uniswap_factory_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_factory_(historical)(Ctx) ->
    uniswap_v2_get_factory_(historical)(Ctx, #{}).

-spec uniswap_v2_get_factory_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_uniswap_factory_v2_dto:openapi_uniswap_v2_uniswap_factory_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_factory_(historical)(Ctx, Optional) ->
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

%% @doc LiquidityPositionSnapshotV2DTOs (historical) 🔥
%% Gets LiquidityPositionSnapshotV2DTOs.
-spec uniswap_v2_get_liquidity_position_snapshot_v2_dtos_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_liquidity_position_snapshot_v2_dto:openapi_uniswap_v2_liquidity_position_snapshot_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_liquidity_position_snapshot_v2_dtos_(historical)(Ctx) ->
    uniswap_v2_get_liquidity_position_snapshot_v2_dtos_(historical)(Ctx, #{}).

-spec uniswap_v2_get_liquidity_position_snapshot_v2_dtos_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_liquidity_position_snapshot_v2_dto:openapi_uniswap_v2_liquidity_position_snapshot_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_liquidity_position_snapshot_v2_dtos_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/LiquidityPositionSnapshotV2DTOs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc LiquidityPositionV2DTOs (historical) 🔥
%% Gets LiquidityPositionV2DTOs.
-spec uniswap_v2_get_liquidity_position_v2_dtos_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_liquidity_position_v2_dto:openapi_uniswap_v2_liquidity_position_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_liquidity_position_v2_dtos_(historical)(Ctx) ->
    uniswap_v2_get_liquidity_position_v2_dtos_(historical)(Ctx, #{}).

-spec uniswap_v2_get_liquidity_position_v2_dtos_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_liquidity_position_v2_dto:openapi_uniswap_v2_liquidity_position_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_liquidity_position_v2_dtos_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/LiquidityPositionV2DTOs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc LiquidityPositions (historical)
%% Gets liquidity positions.
-spec uniswap_v2_get_liquidity_positions_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_liquidity_position_v2_dto:openapi_uniswap_v2_liquidity_position_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_liquidity_positions_(historical)(Ctx) ->
    uniswap_v2_get_liquidity_positions_(historical)(Ctx, #{}).

-spec uniswap_v2_get_liquidity_positions_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_liquidity_position_v2_dto:openapi_uniswap_v2_liquidity_position_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_liquidity_positions_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/liquidityPositions/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc LiquidityPositionsSnapshots (historical)
%% Gets liquidity positions snapshots.
-spec uniswap_v2_get_liquidity_positions_snapshots_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_liquidity_position_snapshot_v2_dto:openapi_uniswap_v2_liquidity_position_snapshot_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_liquidity_positions_snapshots_(historical)(Ctx) ->
    uniswap_v2_get_liquidity_positions_snapshots_(historical)(Ctx, #{}).

-spec uniswap_v2_get_liquidity_positions_snapshots_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_liquidity_position_snapshot_v2_dto:openapi_uniswap_v2_liquidity_position_snapshot_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_liquidity_positions_snapshots_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/liquidityPositionsSnapshots/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc MintV2DTOs (historical) 🔥
%% Gets MintV2DTOs.
-spec uniswap_v2_get_mint_v2_dtos_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_mint_v2_dto:openapi_uniswap_v2_mint_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_mint_v2_dtos_(historical)(Ctx) ->
    uniswap_v2_get_mint_v2_dtos_(historical)(Ctx, #{}).

-spec uniswap_v2_get_mint_v2_dtos_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_mint_v2_dto:openapi_uniswap_v2_mint_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_mint_v2_dtos_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/MintV2DTOs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Mints (historical)
%% Gets mints.
-spec uniswap_v2_get_mints_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_mint_v2_dto:openapi_uniswap_v2_mint_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_mints_(historical)(Ctx) ->
    uniswap_v2_get_mints_(historical)(Ctx, #{}).

-spec uniswap_v2_get_mints_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_mint_v2_dto:openapi_uniswap_v2_mint_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_mints_(historical)(Ctx, Optional) ->
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

%% @doc PairDayDataV2DTOs (historical) 🔥
%% Gets PairDayDataV2DTOs.
-spec uniswap_v2_get_pair_day_data_v2_dtos_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_pair_day_data_v2_dto:openapi_uniswap_v2_pair_day_data_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_pair_day_data_v2_dtos_(historical)(Ctx) ->
    uniswap_v2_get_pair_day_data_v2_dtos_(historical)(Ctx, #{}).

-spec uniswap_v2_get_pair_day_data_v2_dtos_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_pair_day_data_v2_dto:openapi_uniswap_v2_pair_day_data_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_pair_day_data_v2_dtos_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/PairDayDataV2DTOs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc PairHourDataV2DTOs (historical) 🔥
%% Gets PairHourDataV2DTOs.
-spec uniswap_v2_get_pair_hour_data_v2_dtos_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_pair_hour_data_v2_dto:openapi_uniswap_v2_pair_hour_data_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_pair_hour_data_v2_dtos_(historical)(Ctx) ->
    uniswap_v2_get_pair_hour_data_v2_dtos_(historical)(Ctx, #{}).

-spec uniswap_v2_get_pair_hour_data_v2_dtos_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_pair_hour_data_v2_dto:openapi_uniswap_v2_pair_hour_data_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_pair_hour_data_v2_dtos_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/PairHourDataV2DTOs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc PairV2DTOs (historical) 🔥
%% Gets PairV2DTOs.
-spec uniswap_v2_get_pair_v2_dtos_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_pair_v2_dto:openapi_uniswap_v2_pair_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_pair_v2_dtos_(historical)(Ctx) ->
    uniswap_v2_get_pair_v2_dtos_(historical)(Ctx, #{}).

-spec uniswap_v2_get_pair_v2_dtos_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_pair_v2_dto:openapi_uniswap_v2_pair_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_pair_v2_dtos_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/PairV2DTOs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
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

%% @doc Pools (historical) 🔥
%% Gets pools.
-spec uniswap_v2_get_pools_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_pair_v2_dto:openapi_uniswap_v2_pair_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_pools_(historical)(Ctx) ->
    uniswap_v2_get_pools_(historical)(Ctx, #{}).

-spec uniswap_v2_get_pools_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_pair_v2_dto:openapi_uniswap_v2_pair_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_pools_(historical)(Ctx, Optional) ->
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

%% @doc PoolsDayData (historical)
%% Gets pools day data.
-spec uniswap_v2_get_pools_day_data_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_pair_day_data_v2_dto:openapi_uniswap_v2_pair_day_data_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_pools_day_data_(historical)(Ctx) ->
    uniswap_v2_get_pools_day_data_(historical)(Ctx, #{}).

-spec uniswap_v2_get_pools_day_data_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_pair_day_data_v2_dto:openapi_uniswap_v2_pair_day_data_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_pools_day_data_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/poolsDayData/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc PoolsHourData (historical)
%% Gets pools tracked each our.
-spec uniswap_v2_get_pools_hour_data_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_pair_hour_data_v2_dto:openapi_uniswap_v2_pair_hour_data_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_pools_hour_data_(historical)(Ctx) ->
    uniswap_v2_get_pools_hour_data_(historical)(Ctx, #{}).

-spec uniswap_v2_get_pools_hour_data_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_pair_hour_data_v2_dto:openapi_uniswap_v2_pair_hour_data_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_pools_hour_data_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/poolsHourData/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc SwapV2DTOs (historical) 🔥
%% Gets SwapV2DTOs.
-spec uniswap_v2_get_swap_v2_dtos_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_swap_v2_dto:openapi_uniswap_v2_swap_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_swap_v2_dtos_(historical)(Ctx) ->
    uniswap_v2_get_swap_v2_dtos_(historical)(Ctx, #{}).

-spec uniswap_v2_get_swap_v2_dtos_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_swap_v2_dto:openapi_uniswap_v2_swap_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_swap_v2_dtos_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/SwapV2DTOs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
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

%% @doc Swaps (historical) 🔥
%% Gets swaps.
-spec uniswap_v2_get_swaps_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_swap_v2_dto:openapi_uniswap_v2_swap_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_swaps_(historical)(Ctx) ->
    uniswap_v2_get_swaps_(historical)(Ctx, #{}).

-spec uniswap_v2_get_swaps_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_swap_v2_dto:openapi_uniswap_v2_swap_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_swaps_(historical)(Ctx, Optional) ->
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

%% @doc TokenDayDataV2DTOs (historical) 🔥
%% Gets TokenDayDataV2DTOs.
-spec uniswap_v2_get_token_day_data_v2_dtos_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_token_day_data_v2_dto:openapi_uniswap_v2_token_day_data_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_token_day_data_v2_dtos_(historical)(Ctx) ->
    uniswap_v2_get_token_day_data_v2_dtos_(historical)(Ctx, #{}).

-spec uniswap_v2_get_token_day_data_v2_dtos_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_token_day_data_v2_dto:openapi_uniswap_v2_token_day_data_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_token_day_data_v2_dtos_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/TokenDayDataV2DTOs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc TokenV2DTOs (historical) 🔥
%% Gets TokenV2DTOs.
-spec uniswap_v2_get_token_v2_dtos_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_token_v2_dto:openapi_uniswap_v2_token_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_token_v2_dtos_(historical)(Ctx) ->
    uniswap_v2_get_token_v2_dtos_(historical)(Ctx, #{}).

-spec uniswap_v2_get_token_v2_dtos_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_token_v2_dto:openapi_uniswap_v2_token_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_token_v2_dtos_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/TokenV2DTOs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
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

%% @doc Tokens (historical) 🔥
%% Gets tokens.
-spec uniswap_v2_get_tokens_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_token_v2_dto:openapi_uniswap_v2_token_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_tokens_(historical)(Ctx) ->
    uniswap_v2_get_tokens_(historical)(Ctx, #{}).

-spec uniswap_v2_get_tokens_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_token_v2_dto:openapi_uniswap_v2_token_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_tokens_(historical)(Ctx, Optional) ->
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

%% @doc TokensDayData (historical)
%% Gets tokens day data.
-spec uniswap_v2_get_tokens_day_data_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_token_day_data_v2_dto:openapi_uniswap_v2_token_day_data_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_tokens_day_data_(historical)(Ctx) ->
    uniswap_v2_get_tokens_day_data_(historical)(Ctx, #{}).

-spec uniswap_v2_get_tokens_day_data_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_token_day_data_v2_dto:openapi_uniswap_v2_token_day_data_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_tokens_day_data_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/tokensDayData/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'tokenId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc TransactionV2DTOs (historical) 🔥
%% Gets TransactionV2DTOs.
-spec uniswap_v2_get_transaction_v2_dtos_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_transaction_v2_dto:openapi_uniswap_v2_transaction_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_transaction_v2_dtos_(historical)(Ctx) ->
    uniswap_v2_get_transaction_v2_dtos_(historical)(Ctx, #{}).

-spec uniswap_v2_get_transaction_v2_dtos_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_transaction_v2_dto:openapi_uniswap_v2_transaction_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_transaction_v2_dtos_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/TransactionV2DTOs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Transactions (historical)
%% Gets transactions.
-spec uniswap_v2_get_transactions_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_transaction_v2_dto:openapi_uniswap_v2_transaction_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_transactions_(historical)(Ctx) ->
    uniswap_v2_get_transactions_(historical)(Ctx, #{}).

-spec uniswap_v2_get_transactions_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_transaction_v2_dto:openapi_uniswap_v2_transaction_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_transactions_(historical)(Ctx, Optional) ->
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

%% @doc UniswapDayDataV2DTOs (historical) 🔥
%% Gets UniswapDayDataV2DTOs.
-spec uniswap_v2_get_uniswap_day_data_v2_dtos_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_uniswap_day_data_v2_dto:openapi_uniswap_v2_uniswap_day_data_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_uniswap_day_data_v2_dtos_(historical)(Ctx) ->
    uniswap_v2_get_uniswap_day_data_v2_dtos_(historical)(Ctx, #{}).

-spec uniswap_v2_get_uniswap_day_data_v2_dtos_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_uniswap_day_data_v2_dto:openapi_uniswap_v2_uniswap_day_data_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_uniswap_day_data_v2_dtos_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/UniswapDayDataV2DTOs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc UniswapFactoryV2DTOs (historical) 🔥
%% Gets UniswapFactoryV2DTOs.
-spec uniswap_v2_get_uniswap_factory_v2_dtos_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_uniswap_factory_v2_dto:openapi_uniswap_v2_uniswap_factory_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_uniswap_factory_v2_dtos_(historical)(Ctx) ->
    uniswap_v2_get_uniswap_factory_v2_dtos_(historical)(Ctx, #{}).

-spec uniswap_v2_get_uniswap_factory_v2_dtos_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_uniswap_factory_v2_dto:openapi_uniswap_v2_uniswap_factory_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_uniswap_factory_v2_dtos_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/UniswapFactoryV2DTOs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc UserV2DTOs (historical) 🔥
%% Gets UserV2DTOs.
-spec uniswap_v2_get_user_v2_dtos_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_user_v2_dto:openapi_uniswap_v2_user_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_user_v2_dtos_(historical)(Ctx) ->
    uniswap_v2_get_user_v2_dtos_(historical)(Ctx, #{}).

-spec uniswap_v2_get_user_v2_dtos_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_user_v2_dto:openapi_uniswap_v2_user_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_user_v2_dtos_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/uniswapv2/UserV2DTOs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Users (historical)
%% Gets users.
-spec uniswap_v2_get_users_(historical)(ctx:ctx()) -> {ok, [openapi_uniswap_v2_user_v2_dto:openapi_uniswap_v2_user_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_users_(historical)(Ctx) ->
    uniswap_v2_get_users_(historical)(Ctx, #{}).

-spec uniswap_v2_get_users_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_uniswap_v2_user_v2_dto:openapi_uniswap_v2_user_v2_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
uniswap_v2_get_users_(historical)(Ctx, Optional) ->
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


