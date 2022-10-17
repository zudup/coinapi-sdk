-module(openapi_sushiswap_api).

-export([chains_chain_id_dapps_sushiswap_pools_current_get/2, chains_chain_id_dapps_sushiswap_pools_current_get/3,
         chains_chain_id_dapps_sushiswap_swaps_current_get/2, chains_chain_id_dapps_sushiswap_swaps_current_get/3,
         chains_chain_id_dapps_sushiswap_tokens_current_get/2, chains_chain_id_dapps_sushiswap_tokens_current_get/3]).

-define(BASE_URL, <<"">>).

%% @doc GetPools
%% Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
-spec chains_chain_id_dapps_sushiswap_pools_current_get(ctx:ctx(), binary()) -> {ok, [openapi_pair_dto:openapi_pair_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_sushiswap_pools_current_get(Ctx, ChainId) ->
    chains_chain_id_dapps_sushiswap_pools_current_get(Ctx, ChainId, #{}).

-spec chains_chain_id_dapps_sushiswap_pools_current_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_pair_dto:openapi_pair_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_sushiswap_pools_current_get(Ctx, ChainId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/chains/", ChainId, "/dapps/sushiswap/pools/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetSwaps
%% 
-spec chains_chain_id_dapps_sushiswap_swaps_current_get(ctx:ctx(), binary()) -> {ok, [openapi_swap_dto:openapi_swap_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_sushiswap_swaps_current_get(Ctx, ChainId) ->
    chains_chain_id_dapps_sushiswap_swaps_current_get(Ctx, ChainId, #{}).

-spec chains_chain_id_dapps_sushiswap_swaps_current_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_swap_dto:openapi_swap_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_sushiswap_swaps_current_get(Ctx, ChainId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/chains/", ChainId, "/dapps/sushiswap/swaps/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetTokens
%% 
-spec chains_chain_id_dapps_sushiswap_tokens_current_get(ctx:ctx(), binary()) -> {ok, [openapi_token_dto:openapi_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_sushiswap_tokens_current_get(Ctx, ChainId) ->
    chains_chain_id_dapps_sushiswap_tokens_current_get(Ctx, ChainId, #{}).

-spec chains_chain_id_dapps_sushiswap_tokens_current_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_token_dto:openapi_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_sushiswap_tokens_current_get(Ctx, ChainId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/chains/", ChainId, "/dapps/sushiswap/tokens/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


