-module(openapi_cow_api).

-export([cow_get_orders_(historical)/1, cow_get_orders_(historical)/2,
         cow_get_settlements_(historical)/1, cow_get_settlements_(historical)/2,
         cow_get_tokens_(historical)/1, cow_get_tokens_(historical)/2,
         cow_get_trades_(historical)/1, cow_get_trades_(historical)/2,
         cow_get_users_(historical)/1, cow_get_users_(historical)/2]).

-define(BASE_URL, <<"">>).

%% @doc Orders (historical)
%% Gets orders.
-spec cow_get_orders_(historical)(ctx:ctx()) -> {ok, [openapi_cow_order_dto:openapi_cow_order_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_get_orders_(historical)(Ctx) ->
    cow_get_orders_(historical)(Ctx, #{}).

-spec cow_get_orders_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_cow_order_dto:openapi_cow_order_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_get_orders_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/cow/orders/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Settlements (historical)
%% Gets settlements.
-spec cow_get_settlements_(historical)(ctx:ctx()) -> {ok, [openapi_cow_settlement_dto:openapi_cow_settlement_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_get_settlements_(historical)(Ctx) ->
    cow_get_settlements_(historical)(Ctx, #{}).

-spec cow_get_settlements_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_cow_settlement_dto:openapi_cow_settlement_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_get_settlements_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/cow/settlements/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Tokens (historical) 🔥
%% Gets tokens.
-spec cow_get_tokens_(historical)(ctx:ctx()) -> {ok, [openapi_cow_token_dto:openapi_cow_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_get_tokens_(historical)(Ctx) ->
    cow_get_tokens_(historical)(Ctx, #{}).

-spec cow_get_tokens_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_cow_token_dto:openapi_cow_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_get_tokens_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/cow/tokens/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'tokenId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Trades (historical) 🔥
%% Gets trades.
-spec cow_get_trades_(historical)(ctx:ctx()) -> {ok, [openapi_cow_trade_dto:openapi_cow_trade_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_get_trades_(historical)(Ctx) ->
    cow_get_trades_(historical)(Ctx, #{}).

-spec cow_get_trades_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_cow_trade_dto:openapi_cow_trade_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_get_trades_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/cow/trades/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Users (historical)
%% Gets users.
-spec cow_get_users_(historical)(ctx:ctx()) -> {ok, [openapi_cow_user_dto:openapi_cow_user_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_get_users_(historical)(Ctx) ->
    cow_get_users_(historical)(Ctx, #{}).

-spec cow_get_users_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_cow_user_dto:openapi_cow_user_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
cow_get_users_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/cow/users/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


