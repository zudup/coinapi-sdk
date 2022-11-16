-module(openapi_sushiswap_api).

-export([curve_get_exchanges_(current)/1, curve_get_exchanges_(current)/2,
         dex_get_trades_(current)/1, dex_get_trades_(current)/2,
         sushiswap_get_pools_(current)/1, sushiswap_get_pools_(current)/2,
         sushiswap_get_swaps_(current)/1, sushiswap_get_swaps_(current)/2,
         sushiswap_get_tokens_(current)/1, sushiswap_get_tokens_(current)/2]).

-define(BASE_URL, <<"">>).

%% @doc Exchanges (current) 🔥
%% Gets exchanges.
-spec curve_get_exchanges_(current)(ctx:ctx()) -> {ok, [openapi_curve_exchange_dto:openapi_curve_exchange_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_exchanges_(current)(Ctx) ->
    curve_get_exchanges_(current)(Ctx, #{}).

-spec curve_get_exchanges_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_exchange_dto:openapi_curve_exchange_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_exchanges_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/exchanges/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Trades (current) 🔥
%% Gets trades.
-spec dex_get_trades_(current)(ctx:ctx()) -> {ok, [openapi_dex_trade_dto:openapi_dex_trade_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_trades_(current)(Ctx) ->
    dex_get_trades_(current)(Ctx, #{}).

-spec dex_get_trades_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_dex_trade_dto:openapi_dex_trade_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_trades_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/trades/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Pools (current) 🔥
%% Gets pools.
-spec sushiswap_get_pools_(current)(ctx:ctx()) -> {ok, [openapi_sushiswap_pair_dto:openapi_sushiswap_pair_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_pools_(current)(Ctx) ->
    sushiswap_get_pools_(current)(Ctx, #{}).

-spec sushiswap_get_pools_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_pair_dto:openapi_sushiswap_pair_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_pools_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/pools/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Swaps (current) 🔥
%% Gets swaps.
-spec sushiswap_get_swaps_(current)(ctx:ctx()) -> {ok, [openapi_sushiswap_swap_dto:openapi_sushiswap_swap_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_swaps_(current)(Ctx) ->
    sushiswap_get_swaps_(current)(Ctx, #{}).

-spec sushiswap_get_swaps_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_swap_dto:openapi_sushiswap_swap_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_swaps_(current)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/sushiswap/swaps/current">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Tokens (current) 🔥
%% Gets tokens.
-spec sushiswap_get_tokens_(current)(ctx:ctx()) -> {ok, [openapi_sushiswap_token_dto:openapi_sushiswap_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_tokens_(current)(Ctx) ->
    sushiswap_get_tokens_(current)(Ctx, #{}).

-spec sushiswap_get_tokens_(current)(ctx:ctx(), maps:map()) -> {ok, [openapi_sushiswap_token_dto:openapi_sushiswap_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sushiswap_get_tokens_(current)(Ctx, Optional) ->
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


