-module(openapi_uniswap_v2_api).

-export([uniswap_v2_get_pools_(current)/1, uniswap_v2_get_pools_(current)/2,
         uniswap_v2_get_swaps_(current)/1, uniswap_v2_get_swaps_(current)/2,
         uniswap_v2_get_tokens_(current)/1, uniswap_v2_get_tokens_(current)/2]).

-define(BASE_URL, <<"">>).

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


