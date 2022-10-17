-module(openapi_uniswap_v3_api).

-export([chains_chain_id_dapps_uniswapv3_bundle_current_get/2, chains_chain_id_dapps_uniswapv3_bundle_current_get/3,
         chains_chain_id_dapps_uniswapv3_burns_current_get/2, chains_chain_id_dapps_uniswapv3_burns_current_get/3,
         chains_chain_id_dapps_uniswapv3_factory_current_get/2, chains_chain_id_dapps_uniswapv3_factory_current_get/3,
         chains_chain_id_dapps_uniswapv3_mints_current_get/2, chains_chain_id_dapps_uniswapv3_mints_current_get/3,
         chains_chain_id_dapps_uniswapv3_pools_current_get/2, chains_chain_id_dapps_uniswapv3_pools_current_get/3,
         chains_chain_id_dapps_uniswapv3_pools_day_data_current_get/2, chains_chain_id_dapps_uniswapv3_pools_day_data_current_get/3,
         chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get/2, chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get/3,
         chains_chain_id_dapps_uniswapv3_position_snapshots_current_get/2, chains_chain_id_dapps_uniswapv3_position_snapshots_current_get/3,
         chains_chain_id_dapps_uniswapv3_positions_current_get/2, chains_chain_id_dapps_uniswapv3_positions_current_get/3,
         chains_chain_id_dapps_uniswapv3_swaps_current_get/2, chains_chain_id_dapps_uniswapv3_swaps_current_get/3,
         chains_chain_id_dapps_uniswapv3_ticks_current_get/2, chains_chain_id_dapps_uniswapv3_ticks_current_get/3,
         chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get/2, chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get/3,
         chains_chain_id_dapps_uniswapv3_tokens_current_get/2, chains_chain_id_dapps_uniswapv3_tokens_current_get/3,
         chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get/2, chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get/3,
         chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get/2, chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get/3,
         chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get/2, chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get/3]).

-define(BASE_URL, <<"">>).

%% @doc GetBundles
%% 
-spec chains_chain_id_dapps_uniswapv3_bundle_current_get(ctx:ctx(), binary()) -> {ok, [openapi_bundle_v3_dto:openapi_bundle_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_bundle_current_get(Ctx, ChainId) ->
    chains_chain_id_dapps_uniswapv3_bundle_current_get(Ctx, ChainId, #{}).

-spec chains_chain_id_dapps_uniswapv3_bundle_current_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_bundle_v3_dto:openapi_bundle_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_bundle_current_get(Ctx, ChainId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/chains/", ChainId, "/dapps/uniswapv3/bundle/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetBurns
%% 
-spec chains_chain_id_dapps_uniswapv3_burns_current_get(ctx:ctx(), binary()) -> {ok, [openapi_burn_v3_dto:openapi_burn_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_burns_current_get(Ctx, ChainId) ->
    chains_chain_id_dapps_uniswapv3_burns_current_get(Ctx, ChainId, #{}).

-spec chains_chain_id_dapps_uniswapv3_burns_current_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_burn_v3_dto:openapi_burn_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_burns_current_get(Ctx, ChainId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/chains/", ChainId, "/dapps/uniswapv3/burns/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_pool_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetFactory
%% 
-spec chains_chain_id_dapps_uniswapv3_factory_current_get(ctx:ctx(), binary()) -> {ok, [openapi_factory_v3_dto:openapi_factory_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_factory_current_get(Ctx, ChainId) ->
    chains_chain_id_dapps_uniswapv3_factory_current_get(Ctx, ChainId, #{}).

-spec chains_chain_id_dapps_uniswapv3_factory_current_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_factory_v3_dto:openapi_factory_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_factory_current_get(Ctx, ChainId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/chains/", ChainId, "/dapps/uniswapv3/factory/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetMints
%% 
-spec chains_chain_id_dapps_uniswapv3_mints_current_get(ctx:ctx(), binary()) -> {ok, [openapi_mint_v3_dto:openapi_mint_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_mints_current_get(Ctx, ChainId) ->
    chains_chain_id_dapps_uniswapv3_mints_current_get(Ctx, ChainId, #{}).

-spec chains_chain_id_dapps_uniswapv3_mints_current_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_mint_v3_dto:openapi_mint_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_mints_current_get(Ctx, ChainId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/chains/", ChainId, "/dapps/uniswapv3/mints/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_pool_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetPools
%% 
-spec chains_chain_id_dapps_uniswapv3_pools_current_get(ctx:ctx(), binary()) -> {ok, [openapi_pool_v3_dto:openapi_pool_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_pools_current_get(Ctx, ChainId) ->
    chains_chain_id_dapps_uniswapv3_pools_current_get(Ctx, ChainId, #{}).

-spec chains_chain_id_dapps_uniswapv3_pools_current_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_pool_v3_dto:openapi_pool_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_pools_current_get(Ctx, ChainId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/chains/", ChainId, "/dapps/uniswapv3/pools/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_pool_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetPoolsDayData
%% 
-spec chains_chain_id_dapps_uniswapv3_pools_day_data_current_get(ctx:ctx(), binary()) -> {ok, [openapi_pool_day_data_v3_dto:openapi_pool_day_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_pools_day_data_current_get(Ctx, ChainId) ->
    chains_chain_id_dapps_uniswapv3_pools_day_data_current_get(Ctx, ChainId, #{}).

-spec chains_chain_id_dapps_uniswapv3_pools_day_data_current_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_pool_day_data_v3_dto:openapi_pool_day_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_pools_day_data_current_get(Ctx, ChainId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/chains/", ChainId, "/dapps/uniswapv3/poolsDayData/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_pool_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetPoolsHourData
%% 
-spec chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get(ctx:ctx(), binary()) -> {ok, [openapi_pool_hour_data_v3_dto:openapi_pool_hour_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get(Ctx, ChainId) ->
    chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get(Ctx, ChainId, #{}).

-spec chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_pool_hour_data_v3_dto:openapi_pool_hour_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get(Ctx, ChainId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/chains/", ChainId, "/dapps/uniswapv3/poolsHourData/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_pool_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetPositionSnapshot
%% 
-spec chains_chain_id_dapps_uniswapv3_position_snapshots_current_get(ctx:ctx(), binary()) -> {ok, [openapi_position_snapshot_v3_dto:openapi_position_snapshot_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_position_snapshots_current_get(Ctx, ChainId) ->
    chains_chain_id_dapps_uniswapv3_position_snapshots_current_get(Ctx, ChainId, #{}).

-spec chains_chain_id_dapps_uniswapv3_position_snapshots_current_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_position_snapshot_v3_dto:openapi_position_snapshot_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_position_snapshots_current_get(Ctx, ChainId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/chains/", ChainId, "/dapps/uniswapv3/positionSnapshots/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_pool_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetPositions
%% 
-spec chains_chain_id_dapps_uniswapv3_positions_current_get(ctx:ctx(), binary()) -> {ok, [openapi_position_v3_dto:openapi_position_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_positions_current_get(Ctx, ChainId) ->
    chains_chain_id_dapps_uniswapv3_positions_current_get(Ctx, ChainId, #{}).

-spec chains_chain_id_dapps_uniswapv3_positions_current_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_position_v3_dto:openapi_position_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_positions_current_get(Ctx, ChainId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/chains/", ChainId, "/dapps/uniswapv3/positions/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_pool_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetSwaps
%% 
-spec chains_chain_id_dapps_uniswapv3_swaps_current_get(ctx:ctx(), binary()) -> {ok, [openapi_swap_v3_dto:openapi_swap_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_swaps_current_get(Ctx, ChainId) ->
    chains_chain_id_dapps_uniswapv3_swaps_current_get(Ctx, ChainId, #{}).

-spec chains_chain_id_dapps_uniswapv3_swaps_current_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_swap_v3_dto:openapi_swap_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_swaps_current_get(Ctx, ChainId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/chains/", ChainId, "/dapps/uniswapv3/swaps/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_pool_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetTicks
%% 
-spec chains_chain_id_dapps_uniswapv3_ticks_current_get(ctx:ctx(), binary()) -> {ok, [openapi_tick_v3_dto:openapi_tick_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_ticks_current_get(Ctx, ChainId) ->
    chains_chain_id_dapps_uniswapv3_ticks_current_get(Ctx, ChainId, #{}).

-spec chains_chain_id_dapps_uniswapv3_ticks_current_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_tick_v3_dto:openapi_tick_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_ticks_current_get(Ctx, ChainId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/chains/", ChainId, "/dapps/uniswapv3/ticks/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_pool_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetTicksDayData
%% 
-spec chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get(ctx:ctx(), binary()) -> {ok, [openapi_tick_day_data_v3_dto:openapi_tick_day_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get(Ctx, ChainId) ->
    chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get(Ctx, ChainId, #{}).

-spec chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_tick_day_data_v3_dto:openapi_tick_day_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get(Ctx, ChainId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/chains/", ChainId, "/dapps/uniswapv3/ticksDayData/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_pool_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetTokens
%% 
-spec chains_chain_id_dapps_uniswapv3_tokens_current_get(ctx:ctx(), binary()) -> {ok, [openapi_token_v3_dto:openapi_token_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_tokens_current_get(Ctx, ChainId) ->
    chains_chain_id_dapps_uniswapv3_tokens_current_get(Ctx, ChainId, #{}).

-spec chains_chain_id_dapps_uniswapv3_tokens_current_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_token_v3_dto:openapi_token_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_tokens_current_get(Ctx, ChainId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/chains/", ChainId, "/dapps/uniswapv3/tokens/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_token_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetTokensDayData
%% 
-spec chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get(ctx:ctx(), binary()) -> {ok, [openapi_token_v3_day_data_dto:openapi_token_v3_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get(Ctx, ChainId) ->
    chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get(Ctx, ChainId, #{}).

-spec chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_token_v3_day_data_dto:openapi_token_v3_day_data_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get(Ctx, ChainId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/chains/", ChainId, "/dapps/uniswapv3/tokensDayData/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_token_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetTokensHourData
%% 
-spec chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get(ctx:ctx(), binary()) -> {ok, [openapi_token_hour_data_v3_dto:openapi_token_hour_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get(Ctx, ChainId) ->
    chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get(Ctx, ChainId, #{}).

-spec chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_token_hour_data_v3_dto:openapi_token_hour_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get(Ctx, ChainId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/chains/", ChainId, "/dapps/uniswapv3/tokensHourData/current">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_token_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetUniswapDayData
%% 
-spec chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get(ctx:ctx(), binary()) -> {ok, [openapi_uniswap_day_data_v3_dto:openapi_uniswap_day_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get(Ctx, ChainId) ->
    chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get(Ctx, ChainId, #{}).

-spec chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_uniswap_day_data_v3_dto:openapi_uniswap_day_data_v3_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get(Ctx, ChainId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/chains/", ChainId, "/dapps/uniswapv3/uniswapDayData/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


