-module(openapi_dex_api).

-export([dex_get_batchs_(historical)/1, dex_get_batchs_(historical)/2,
         dex_get_deposits_(historical)/1, dex_get_deposits_(historical)/2,
         dex_get_orders_(historical)/1, dex_get_orders_(historical)/2,
         dex_get_prices_(historical)/1, dex_get_prices_(historical)/2,
         dex_get_solutions_(historical)/1, dex_get_solutions_(historical)/2,
         dex_get_statss_(historical)/1, dex_get_statss_(historical)/2,
         dex_get_tokens_(historical)/1, dex_get_tokens_(historical)/2,
         dex_get_trades_(historical)/1, dex_get_trades_(historical)/2,
         dex_get_users_(historical)/1, dex_get_users_(historical)/2,
         dex_get_withdraw_requests_(historical)/1, dex_get_withdraw_requests_(historical)/2,
         dex_get_withdraws_(historical)/1, dex_get_withdraws_(historical)/2]).

-define(BASE_URL, <<"">>).

%% @doc Batchs (historical) 🔥
%% Gets batchs.
-spec dex_get_batchs_(historical)(ctx:ctx()) -> {ok, [openapi_dex_batch_dto:openapi_dex_batch_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_batchs_(historical)(Ctx) ->
    dex_get_batchs_(historical)(Ctx, #{}).

-spec dex_get_batchs_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_dex_batch_dto:openapi_dex_batch_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_batchs_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/dex/batchs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Deposits (historical) 🔥
%% Gets deposits.
-spec dex_get_deposits_(historical)(ctx:ctx()) -> {ok, [openapi_dex_deposit_dto:openapi_dex_deposit_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_deposits_(historical)(Ctx) ->
    dex_get_deposits_(historical)(Ctx, #{}).

-spec dex_get_deposits_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_dex_deposit_dto:openapi_dex_deposit_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_deposits_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/dex/deposits/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'user'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Orders (historical) 🔥
%% Gets orders.
-spec dex_get_orders_(historical)(ctx:ctx()) -> {ok, [openapi_dex_order_dto:openapi_dex_order_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_orders_(historical)(Ctx) ->
    dex_get_orders_(historical)(Ctx, #{}).

-spec dex_get_orders_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_dex_order_dto:openapi_dex_order_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_orders_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/dex/orders/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'buy_token', 'sell_token'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Prices (historical) 🔥
%% Gets prices.
-spec dex_get_prices_(historical)(ctx:ctx()) -> {ok, [openapi_dex_price_dto:openapi_dex_price_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_prices_(historical)(Ctx) ->
    dex_get_prices_(historical)(Ctx, #{}).

-spec dex_get_prices_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_dex_price_dto:openapi_dex_price_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_prices_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/dex/prices/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Solutions (historical) 🔥
%% Gets solutions.
-spec dex_get_solutions_(historical)(ctx:ctx()) -> {ok, [openapi_dex_solution_dto:openapi_dex_solution_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_solutions_(historical)(Ctx) ->
    dex_get_solutions_(historical)(Ctx, #{}).

-spec dex_get_solutions_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_dex_solution_dto:openapi_dex_solution_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_solutions_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/dex/solutions/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Statss (historical) 🔥
%% Gets statss.
-spec dex_get_statss_(historical)(ctx:ctx()) -> {ok, [openapi_dex_stats_dto:openapi_dex_stats_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_statss_(historical)(Ctx) ->
    dex_get_statss_(historical)(Ctx, #{}).

-spec dex_get_statss_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_dex_stats_dto:openapi_dex_stats_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_statss_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/dex/statss/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Tokens (historical) 🔥
%% Gets tokens.
-spec dex_get_tokens_(historical)(ctx:ctx()) -> {ok, [openapi_dex_token_dto:openapi_dex_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_tokens_(historical)(Ctx) ->
    dex_get_tokens_(historical)(Ctx, #{}).

-spec dex_get_tokens_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_dex_token_dto:openapi_dex_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_tokens_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/dex/tokens/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'address', 'symbol', 'name'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Trades (historical) 🔥
%% Gets trades.
-spec dex_get_trades_(historical)(ctx:ctx()) -> {ok, [openapi_dex_trade_dto:openapi_dex_trade_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_trades_(historical)(Ctx) ->
    dex_get_trades_(historical)(Ctx, #{}).

-spec dex_get_trades_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_dex_trade_dto:openapi_dex_trade_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_trades_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/dex/trades/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'buy_token', 'sell_token'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Users (historical) 🔥
%% Gets users.
-spec dex_get_users_(historical)(ctx:ctx()) -> {ok, [openapi_dex_user_dto:openapi_dex_user_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_users_(historical)(Ctx) ->
    dex_get_users_(historical)(Ctx, #{}).

-spec dex_get_users_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_dex_user_dto:openapi_dex_user_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_users_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/dex/users/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc WithdrawRequests (historical) 🔥
%% Gets withdrawrequests.
-spec dex_get_withdraw_requests_(historical)(ctx:ctx()) -> {ok, [openapi_dex_withdraw_request_dto:openapi_dex_withdraw_request_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_withdraw_requests_(historical)(Ctx) ->
    dex_get_withdraw_requests_(historical)(Ctx, #{}).

-spec dex_get_withdraw_requests_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_dex_withdraw_request_dto:openapi_dex_withdraw_request_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_withdraw_requests_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/dex/withdrawrequests/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'user'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Withdraws (historical) 🔥
%% Gets withdraws.
-spec dex_get_withdraws_(historical)(ctx:ctx()) -> {ok, [openapi_dex_withdraw_dto:openapi_dex_withdraw_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_withdraws_(historical)(Ctx) ->
    dex_get_withdraws_(historical)(Ctx, #{}).

-spec dex_get_withdraws_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_dex_withdraw_dto:openapi_dex_withdraw_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_withdraws_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/dex/withdraws/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'user'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


