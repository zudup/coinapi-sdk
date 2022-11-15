-module(openapi_dex_api).

-export([dex_get_batch_dtos_(historical)/1, dex_get_batch_dtos_(historical)/2,
         dex_get_batches_(historical)/1, dex_get_batches_(historical)/2,
         dex_get_deposit_dtos_(historical)/1, dex_get_deposit_dtos_(historical)/2,
         dex_get_deposits_(historical)/1, dex_get_deposits_(historical)/2,
         dex_get_order_dtos_(historical)/1, dex_get_order_dtos_(historical)/2,
         dex_get_orders_(historical)/1, dex_get_orders_(historical)/2,
         dex_get_price_dtos_(historical)/1, dex_get_price_dtos_(historical)/2,
         dex_get_prices_(historical)/1, dex_get_prices_(historical)/2,
         dex_get_solution_dtos_(historical)/1, dex_get_solution_dtos_(historical)/2,
         dex_get_solutions_(historical)/1, dex_get_solutions_(historical)/2,
         dex_get_stats_(historical)/1, dex_get_stats_(historical)/2,
         dex_get_stats_dtos_(historical)/1, dex_get_stats_dtos_(historical)/2,
         dex_get_token_dtos_(historical)/1, dex_get_token_dtos_(historical)/2,
         dex_get_tokens_(historical)/1, dex_get_tokens_(historical)/2,
         dex_get_trade_dtos_(historical)/1, dex_get_trade_dtos_(historical)/2,
         dex_get_trades_(historical)/1, dex_get_trades_(historical)/2,
         dex_get_user_dtos_(historical)/1, dex_get_user_dtos_(historical)/2,
         dex_get_users_(historical)/1, dex_get_users_(historical)/2,
         dex_get_withdraw_dtos_(historical)/1, dex_get_withdraw_dtos_(historical)/2,
         dex_get_withdraw_request_dtos_(historical)/1, dex_get_withdraw_request_dtos_(historical)/2,
         dex_get_withdraws_(historical)/1, dex_get_withdraws_(historical)/2,
         dex_get_withdraws_requests_(historical)/1, dex_get_withdraws_requests_(historical)/2]).

-define(BASE_URL, <<"">>).

%% @doc BatchDTOs (historical) 🔥
%% Gets BatchDTOs.
-spec dex_get_batch_dtos_(historical)(ctx:ctx()) -> {ok, [openapi_dex_batch_dto:openapi_dex_batch_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_batch_dtos_(historical)(Ctx) ->
    dex_get_batch_dtos_(historical)(Ctx, #{}).

-spec dex_get_batch_dtos_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_dex_batch_dto:openapi_dex_batch_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_batch_dtos_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/dex/BatchDTOs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Batches (historical)
%% Gets batches.
-spec dex_get_batches_(historical)(ctx:ctx()) -> {ok, [openapi_dex_batch_dto:openapi_dex_batch_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_batches_(historical)(Ctx) ->
    dex_get_batches_(historical)(Ctx, #{}).

-spec dex_get_batches_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_dex_batch_dto:openapi_dex_batch_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_batches_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/dex/batches/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc DepositDTOs (historical) 🔥
%% Gets DepositDTOs.
-spec dex_get_deposit_dtos_(historical)(ctx:ctx()) -> {ok, [openapi_dex_deposit_dto:openapi_dex_deposit_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_deposit_dtos_(historical)(Ctx) ->
    dex_get_deposit_dtos_(historical)(Ctx, #{}).

-spec dex_get_deposit_dtos_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_dex_deposit_dto:openapi_dex_deposit_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_deposit_dtos_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/dex/DepositDTOs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Deposits (historical)
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
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'tokenId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc OrderDTOs (historical) 🔥
%% Gets OrderDTOs.
-spec dex_get_order_dtos_(historical)(ctx:ctx()) -> {ok, [openapi_dex_order_dto:openapi_dex_order_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_order_dtos_(historical)(Ctx) ->
    dex_get_order_dtos_(historical)(Ctx, #{}).

-spec dex_get_order_dtos_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_dex_order_dto:openapi_dex_order_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_order_dtos_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/dex/OrderDTOs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Orders (historical)
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
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'tokenId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc PriceDTOs (historical) 🔥
%% Gets PriceDTOs.
-spec dex_get_price_dtos_(historical)(ctx:ctx()) -> {ok, [openapi_dex_price_dto:openapi_dex_price_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_price_dtos_(historical)(Ctx) ->
    dex_get_price_dtos_(historical)(Ctx, #{}).

-spec dex_get_price_dtos_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_dex_price_dto:openapi_dex_price_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_price_dtos_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/dex/PriceDTOs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Prices (historical)
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
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'tokenId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc SolutionDTOs (historical) 🔥
%% Gets SolutionDTOs.
-spec dex_get_solution_dtos_(historical)(ctx:ctx()) -> {ok, [openapi_dex_solution_dto:openapi_dex_solution_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_solution_dtos_(historical)(Ctx) ->
    dex_get_solution_dtos_(historical)(Ctx, #{}).

-spec dex_get_solution_dtos_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_dex_solution_dto:openapi_dex_solution_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_solution_dtos_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/dex/SolutionDTOs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Solutions (historical)
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
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'tokenId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Stats (historical)
%% Gets stats.
-spec dex_get_stats_(historical)(ctx:ctx()) -> {ok, [openapi_dex_stats_dto:openapi_dex_stats_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_stats_(historical)(Ctx) ->
    dex_get_stats_(historical)(Ctx, #{}).

-spec dex_get_stats_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_dex_stats_dto:openapi_dex_stats_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_stats_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/dex/stats/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc StatsDTOs (historical) 🔥
%% Gets StatsDTOs.
-spec dex_get_stats_dtos_(historical)(ctx:ctx()) -> {ok, [openapi_dex_stats_dto:openapi_dex_stats_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_stats_dtos_(historical)(Ctx) ->
    dex_get_stats_dtos_(historical)(Ctx, #{}).

-spec dex_get_stats_dtos_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_dex_stats_dto:openapi_dex_stats_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_stats_dtos_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/dex/StatsDTOs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc TokenDTOs (historical) 🔥
%% Gets TokenDTOs.
-spec dex_get_token_dtos_(historical)(ctx:ctx()) -> {ok, [openapi_dex_token_dto:openapi_dex_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_token_dtos_(historical)(Ctx) ->
    dex_get_token_dtos_(historical)(Ctx, #{}).

-spec dex_get_token_dtos_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_dex_token_dto:openapi_dex_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_token_dtos_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/dex/TokenDTOs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
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
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'tokenId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc TradeDTOs (historical) 🔥
%% Gets TradeDTOs.
-spec dex_get_trade_dtos_(historical)(ctx:ctx()) -> {ok, [openapi_dex_trade_dto:openapi_dex_trade_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_trade_dtos_(historical)(Ctx) ->
    dex_get_trade_dtos_(historical)(Ctx, #{}).

-spec dex_get_trade_dtos_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_dex_trade_dto:openapi_dex_trade_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_trade_dtos_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/dex/TradeDTOs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
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
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc UserDTOs (historical) 🔥
%% Gets UserDTOs.
-spec dex_get_user_dtos_(historical)(ctx:ctx()) -> {ok, [openapi_dex_user_dto:openapi_dex_user_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_user_dtos_(historical)(Ctx) ->
    dex_get_user_dtos_(historical)(Ctx, #{}).

-spec dex_get_user_dtos_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_dex_user_dto:openapi_dex_user_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_user_dtos_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/dex/UserDTOs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Users (historical)
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
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc WithdrawDTOs (historical) 🔥
%% Gets WithdrawDTOs.
-spec dex_get_withdraw_dtos_(historical)(ctx:ctx()) -> {ok, [openapi_dex_withdraw_dto:openapi_dex_withdraw_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_withdraw_dtos_(historical)(Ctx) ->
    dex_get_withdraw_dtos_(historical)(Ctx, #{}).

-spec dex_get_withdraw_dtos_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_dex_withdraw_dto:openapi_dex_withdraw_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_withdraw_dtos_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/dex/WithdrawDTOs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc WithdrawRequestDTOs (historical) 🔥
%% Gets WithdrawRequestDTOs.
-spec dex_get_withdraw_request_dtos_(historical)(ctx:ctx()) -> {ok, [openapi_dex_withdraw_request_dto:openapi_dex_withdraw_request_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_withdraw_request_dtos_(historical)(Ctx) ->
    dex_get_withdraw_request_dtos_(historical)(Ctx, #{}).

-spec dex_get_withdraw_request_dtos_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_dex_withdraw_request_dto:openapi_dex_withdraw_request_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_withdraw_request_dtos_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/dex/WithdrawRequestDTOs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Withdraws (historical)
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
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'tokenId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc WithdrawsRequests (historical)
%% Gets withdraws requests.
-spec dex_get_withdraws_requests_(historical)(ctx:ctx()) -> {ok, [openapi_dex_withdraw_request_dto:openapi_dex_withdraw_request_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_withdraws_requests_(historical)(Ctx) ->
    dex_get_withdraws_requests_(historical)(Ctx, #{}).

-spec dex_get_withdraws_requests_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_dex_withdraw_request_dto:openapi_dex_withdraw_request_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
dex_get_withdraws_requests_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/dex/withdrawsRequests/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'tokenId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


