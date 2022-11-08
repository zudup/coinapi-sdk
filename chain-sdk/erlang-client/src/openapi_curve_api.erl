-module(openapi_curve_api).

-export([curve_get_accounts_(historical)/1, curve_get_accounts_(historical)/2,
         curve_get_add_liquidity_events_(historical)/1, curve_get_add_liquidity_events_(historical)/2,
         curve_get_admin_fee_change_logs_(historical)/1, curve_get_admin_fee_change_logs_(historical)/2,
         curve_get_amplification_coeff_change_logs_(historical)/1, curve_get_amplification_coeff_change_logs_(historical)/2,
         curve_get_coins_(historical)/1, curve_get_coins_(historical)/2,
         curve_get_contracts_(historical)/1, curve_get_contracts_(historical)/2,
         curve_get_contracts_versions_(historical)/1, curve_get_contracts_versions_(historical)/2,
         curve_get_daily_volumes_(historical)/1, curve_get_daily_volumes_(historical)/2,
         curve_get_exchanges_(historical)/1, curve_get_exchanges_(historical)/2,
         curve_get_fee_change_logs_(historical)/1, curve_get_fee_change_logs_(historical)/2,
         curve_get_gauges_(historical)/1, curve_get_gauges_(historical)/2,
         curve_get_gauges_deposits_(historical)/1, curve_get_gauges_deposits_(historical)/2,
         curve_get_gauges_liquidity_(historical)/1, curve_get_gauges_liquidity_(historical)/2,
         curve_get_gauges_total_weights_(historical)/1, curve_get_gauges_total_weights_(historical)/2,
         curve_get_gauges_types_(historical)/1, curve_get_gauges_types_(historical)/2,
         curve_get_gauges_types_weights_(historical)/1, curve_get_gauges_types_weights_(historical)/2,
         curve_get_gauges_weights_(historical)/1, curve_get_gauges_weights_(historical)/2,
         curve_get_gauges_weights_votes_(historical)/1, curve_get_gauges_weights_votes_(historical)/2,
         curve_get_gauges_withdraw_(historical)/1, curve_get_gauges_withdraw_(historical)/2,
         curve_get_hourly_volumes_(historical)/1, curve_get_hourly_volumes_(historical)/2,
         curve_get_lp_tokens_(historical)/1, curve_get_lp_tokens_(historical)/2,
         curve_get_pools_(historical)/1, curve_get_pools_(historical)/2,
         curve_get_proposals_(historical)/1, curve_get_proposals_(historical)/2,
         curve_get_proposals_votes_(historical)/1, curve_get_proposals_votes_(historical)/2,
         curve_get_remove_liquidity_events_(historical)/1, curve_get_remove_liquidity_events_(historical)/2,
         curve_get_remove_liquidity_one_events_(historical)/1, curve_get_remove_liquidity_one_events_(historical)/2,
         curve_get_system_states_(historical)/1, curve_get_system_states_(historical)/2,
         curve_get_tokens_(historical)/1, curve_get_tokens_(historical)/2,
         curve_get_transfer_ownership_events_(historical)/1, curve_get_transfer_ownership_events_(historical)/2,
         curve_get_underlying_coins_(historical)/1, curve_get_underlying_coins_(historical)/2,
         curve_get_voting_apps_(historical)/1, curve_get_voting_apps_(historical)/2,
         curve_get_weekly_volumes_(historical)/1, curve_get_weekly_volumes_(historical)/2]).

-define(BASE_URL, <<"">>).

%% @doc GetAccounts (historical)
%% Gets accounts.
-spec curve_get_accounts_(historical)(ctx:ctx()) -> {ok, [openapi_curve_account_dto:openapi_curve_account_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_accounts_(historical)(Ctx) ->
    curve_get_accounts_(historical)(Ctx, #{}).

-spec curve_get_accounts_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_account_dto:openapi_curve_account_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_accounts_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/accounts/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetAddLiquidityEvents (historical)
%% Gets add liquidity events.
-spec curve_get_add_liquidity_events_(historical)(ctx:ctx()) -> {ok, [openapi_curve_add_liquidity_event_dto:openapi_curve_add_liquidity_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_add_liquidity_events_(historical)(Ctx) ->
    curve_get_add_liquidity_events_(historical)(Ctx, #{}).

-spec curve_get_add_liquidity_events_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_add_liquidity_event_dto:openapi_curve_add_liquidity_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_add_liquidity_events_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/addLiquidityEvents/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetAdminFeeChangeLogs (historical)
%% Gets admin fee change logs.
-spec curve_get_admin_fee_change_logs_(historical)(ctx:ctx()) -> {ok, [openapi_curve_admin_fee_change_log_dto:openapi_curve_admin_fee_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_admin_fee_change_logs_(historical)(Ctx) ->
    curve_get_admin_fee_change_logs_(historical)(Ctx, #{}).

-spec curve_get_admin_fee_change_logs_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_admin_fee_change_log_dto:openapi_curve_admin_fee_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_admin_fee_change_logs_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/adminFeeChangeLogs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetAmplificationCoeffChangeLogs (historical)
%% Gets amplification coeff change logs.
-spec curve_get_amplification_coeff_change_logs_(historical)(ctx:ctx()) -> {ok, [openapi_curve_amplification_coeff_change_log_dto:openapi_curve_amplification_coeff_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_amplification_coeff_change_logs_(historical)(Ctx) ->
    curve_get_amplification_coeff_change_logs_(historical)(Ctx, #{}).

-spec curve_get_amplification_coeff_change_logs_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_amplification_coeff_change_log_dto:openapi_curve_amplification_coeff_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_amplification_coeff_change_logs_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/amplificationCoeffChangeLogs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetCoins (historical)
%% Gets coins.
-spec curve_get_coins_(historical)(ctx:ctx()) -> {ok, [openapi_curve_coin_dto:openapi_curve_coin_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_coins_(historical)(Ctx) ->
    curve_get_coins_(historical)(Ctx, #{}).

-spec curve_get_coins_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_coin_dto:openapi_curve_coin_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_coins_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/coins/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetContracts (historical)
%% Gets contracts.
-spec curve_get_contracts_(historical)(ctx:ctx()) -> {ok, [openapi_curve_contract_dto:openapi_curve_contract_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_contracts_(historical)(Ctx) ->
    curve_get_contracts_(historical)(Ctx, #{}).

-spec curve_get_contracts_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_contract_dto:openapi_curve_contract_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_contracts_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/contracts/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetContractsVersions (historical)
%% Gets contracts versions.
-spec curve_get_contracts_versions_(historical)(ctx:ctx()) -> {ok, [openapi_curve_contract_version_dto:openapi_curve_contract_version_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_contracts_versions_(historical)(Ctx) ->
    curve_get_contracts_versions_(historical)(Ctx, #{}).

-spec curve_get_contracts_versions_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_contract_version_dto:openapi_curve_contract_version_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_contracts_versions_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/contractsVersions/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetDailyVolumes (historical)
%% Gets daily volumes.
-spec curve_get_daily_volumes_(historical)(ctx:ctx()) -> {ok, [openapi_curve_daily_volume_dto:openapi_curve_daily_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_daily_volumes_(historical)(Ctx) ->
    curve_get_daily_volumes_(historical)(Ctx, #{}).

-spec curve_get_daily_volumes_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_daily_volume_dto:openapi_curve_daily_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_daily_volumes_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/dailyVolumes/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetExchanges (historical) 🔥
%% Gets exchanges.
-spec curve_get_exchanges_(historical)(ctx:ctx()) -> {ok, [openapi_curve_exchange_dto:openapi_curve_exchange_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_exchanges_(historical)(Ctx) ->
    curve_get_exchanges_(historical)(Ctx, #{}).

-spec curve_get_exchanges_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_exchange_dto:openapi_curve_exchange_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_exchanges_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/exchanges/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetFeeChangeLogs (historical)
%% Gets fee change logs.
-spec curve_get_fee_change_logs_(historical)(ctx:ctx()) -> {ok, [openapi_curve_fee_change_log_dto:openapi_curve_fee_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_fee_change_logs_(historical)(Ctx) ->
    curve_get_fee_change_logs_(historical)(Ctx, #{}).

-spec curve_get_fee_change_logs_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_fee_change_log_dto:openapi_curve_fee_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_fee_change_logs_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/feeChangeLogs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetGauges (historical)
%% Gets gauges.
-spec curve_get_gauges_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_dto:openapi_curve_gauge_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_(historical)(Ctx) ->
    curve_get_gauges_(historical)(Ctx, #{}).

-spec curve_get_gauges_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_dto:openapi_curve_gauge_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/gauges/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetGaugesDeposits (historical)
%% Gets gauges deposits.
-spec curve_get_gauges_deposits_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_deposit_dto:openapi_curve_gauge_deposit_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_deposits_(historical)(Ctx) ->
    curve_get_gauges_deposits_(historical)(Ctx, #{}).

-spec curve_get_gauges_deposits_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_deposit_dto:openapi_curve_gauge_deposit_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_deposits_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/gaugesDeposits/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetGaugesLiquidity (historical)
%% Gets gauges liquidity.
-spec curve_get_gauges_liquidity_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_liquidity_dto:openapi_curve_gauge_liquidity_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_liquidity_(historical)(Ctx) ->
    curve_get_gauges_liquidity_(historical)(Ctx, #{}).

-spec curve_get_gauges_liquidity_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_liquidity_dto:openapi_curve_gauge_liquidity_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_liquidity_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/gaugesLiquidity/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetGaugesTotalWeights (historical)
%% Gets gauges total weights.
-spec curve_get_gauges_total_weights_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_total_weight_dto:openapi_curve_gauge_total_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_total_weights_(historical)(Ctx) ->
    curve_get_gauges_total_weights_(historical)(Ctx, #{}).

-spec curve_get_gauges_total_weights_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_total_weight_dto:openapi_curve_gauge_total_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_total_weights_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/gaugesTotalWeights/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetGaugesTypes (historical)
%% Gets gauges types.
-spec curve_get_gauges_types_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_type_dto:openapi_curve_gauge_type_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_types_(historical)(Ctx) ->
    curve_get_gauges_types_(historical)(Ctx, #{}).

-spec curve_get_gauges_types_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_type_dto:openapi_curve_gauge_type_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_types_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/gaugesTypes/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetGaugesTypesWeights (historical)
%% Gets gauges types weights.
-spec curve_get_gauges_types_weights_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_type_weight_dto:openapi_curve_gauge_type_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_types_weights_(historical)(Ctx) ->
    curve_get_gauges_types_weights_(historical)(Ctx, #{}).

-spec curve_get_gauges_types_weights_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_type_weight_dto:openapi_curve_gauge_type_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_types_weights_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/gaugesTypesWeights/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetGaugesWeights (historical)
%% Gets gauges weights.
-spec curve_get_gauges_weights_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_weight_dto:openapi_curve_gauge_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_weights_(historical)(Ctx) ->
    curve_get_gauges_weights_(historical)(Ctx, #{}).

-spec curve_get_gauges_weights_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_weight_dto:openapi_curve_gauge_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_weights_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/gaugesWeights/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetGaugesWeightsVotes (historical)
%% Gets gauges weights votes.
-spec curve_get_gauges_weights_votes_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_weight_vote_dto:openapi_curve_gauge_weight_vote_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_weights_votes_(historical)(Ctx) ->
    curve_get_gauges_weights_votes_(historical)(Ctx, #{}).

-spec curve_get_gauges_weights_votes_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_weight_vote_dto:openapi_curve_gauge_weight_vote_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_weights_votes_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/gaugesWeightsVotes/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetGaugesWithdraw (historical)
%% Gets gauges withdraws.
-spec curve_get_gauges_withdraw_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_withdraw_dto:openapi_curve_gauge_withdraw_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_withdraw_(historical)(Ctx) ->
    curve_get_gauges_withdraw_(historical)(Ctx, #{}).

-spec curve_get_gauges_withdraw_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_withdraw_dto:openapi_curve_gauge_withdraw_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_withdraw_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/gaugesWithdraws/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetHourlyVolumes (historical)
%% Gets hourly volumes.
-spec curve_get_hourly_volumes_(historical)(ctx:ctx()) -> {ok, [openapi_curve_hourly_volume_dto:openapi_curve_hourly_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_hourly_volumes_(historical)(Ctx) ->
    curve_get_hourly_volumes_(historical)(Ctx, #{}).

-spec curve_get_hourly_volumes_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_hourly_volume_dto:openapi_curve_hourly_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_hourly_volumes_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/hourlyVolumes/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetLpTokens (historical)
%% Gets lp tokens.
-spec curve_get_lp_tokens_(historical)(ctx:ctx()) -> {ok, [openapi_curve_lp_token_dto:openapi_curve_lp_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_lp_tokens_(historical)(Ctx) ->
    curve_get_lp_tokens_(historical)(Ctx, #{}).

-spec curve_get_lp_tokens_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_lp_token_dto:openapi_curve_lp_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_lp_tokens_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/lpTokens/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetPools (historical) 🔥
%% Gets pools.
-spec curve_get_pools_(historical)(ctx:ctx()) -> {ok, [openapi_curve_pool_dto:openapi_curve_pool_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_pools_(historical)(Ctx) ->
    curve_get_pools_(historical)(Ctx, #{}).

-spec curve_get_pools_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_pool_dto:openapi_curve_pool_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_pools_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/pools/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetProposals (historical)
%% Gets proposals.
-spec curve_get_proposals_(historical)(ctx:ctx()) -> {ok, [openapi_curve_proposal_dto:openapi_curve_proposal_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_proposals_(historical)(Ctx) ->
    curve_get_proposals_(historical)(Ctx, #{}).

-spec curve_get_proposals_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_proposal_dto:openapi_curve_proposal_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_proposals_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/proposals/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetProposalsVotes (historical)
%% Gets proposals votes.
-spec curve_get_proposals_votes_(historical)(ctx:ctx()) -> {ok, [openapi_curve_proposal_vote_dto:openapi_curve_proposal_vote_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_proposals_votes_(historical)(Ctx) ->
    curve_get_proposals_votes_(historical)(Ctx, #{}).

-spec curve_get_proposals_votes_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_proposal_vote_dto:openapi_curve_proposal_vote_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_proposals_votes_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/proposalsVotes/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetRemoveLiquidityEvents (historical)
%% Gets remove liquidity events.
-spec curve_get_remove_liquidity_events_(historical)(ctx:ctx()) -> {ok, [openapi_curve_remove_liquidity_event_dto:openapi_curve_remove_liquidity_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_remove_liquidity_events_(historical)(Ctx) ->
    curve_get_remove_liquidity_events_(historical)(Ctx, #{}).

-spec curve_get_remove_liquidity_events_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_remove_liquidity_event_dto:openapi_curve_remove_liquidity_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_remove_liquidity_events_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/removeLiquidityEvents/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetRemoveLiquidityOneEvents (historical)
%% Gets remove liquidity one events.
-spec curve_get_remove_liquidity_one_events_(historical)(ctx:ctx()) -> {ok, [openapi_curve_remove_liquidity_one_event_dto:openapi_curve_remove_liquidity_one_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_remove_liquidity_one_events_(historical)(Ctx) ->
    curve_get_remove_liquidity_one_events_(historical)(Ctx, #{}).

-spec curve_get_remove_liquidity_one_events_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_remove_liquidity_one_event_dto:openapi_curve_remove_liquidity_one_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_remove_liquidity_one_events_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/removeLiquidityOneEvents/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetSystemStates (historical)
%% Gets system states.
-spec curve_get_system_states_(historical)(ctx:ctx()) -> {ok, [openapi_curve_system_state_dto:openapi_curve_system_state_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_system_states_(historical)(Ctx) ->
    curve_get_system_states_(historical)(Ctx, #{}).

-spec curve_get_system_states_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_system_state_dto:openapi_curve_system_state_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_system_states_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/systemStates/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetTokens (historical) 🔥
%% Gets tokens.
-spec curve_get_tokens_(historical)(ctx:ctx()) -> {ok, [openapi_curve_token_dto:openapi_curve_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_tokens_(historical)(Ctx) ->
    curve_get_tokens_(historical)(Ctx, #{}).

-spec curve_get_tokens_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_token_dto:openapi_curve_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_tokens_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/tokens/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'tokenId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetTransferOwnershipEvents (historical)
%% Gets transfer ownership events.
-spec curve_get_transfer_ownership_events_(historical)(ctx:ctx()) -> {ok, [openapi_curve_transfer_ownership_event_dto:openapi_curve_transfer_ownership_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_transfer_ownership_events_(historical)(Ctx) ->
    curve_get_transfer_ownership_events_(historical)(Ctx, #{}).

-spec curve_get_transfer_ownership_events_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_transfer_ownership_event_dto:openapi_curve_transfer_ownership_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_transfer_ownership_events_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/transferOwnershipEvents/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetUnderlyingCoins (historical)
%% Gets underlying coins.
-spec curve_get_underlying_coins_(historical)(ctx:ctx()) -> {ok, [openapi_curve_underlying_coin_dto:openapi_curve_underlying_coin_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_underlying_coins_(historical)(Ctx) ->
    curve_get_underlying_coins_(historical)(Ctx, #{}).

-spec curve_get_underlying_coins_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_underlying_coin_dto:openapi_curve_underlying_coin_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_underlying_coins_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/underlyingCoins/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetVotingApps (historical)
%% Gets voting apps.
-spec curve_get_voting_apps_(historical)(ctx:ctx()) -> {ok, [openapi_curve_voting_app_dto:openapi_curve_voting_app_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_voting_apps_(historical)(Ctx) ->
    curve_get_voting_apps_(historical)(Ctx, #{}).

-spec curve_get_voting_apps_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_voting_app_dto:openapi_curve_voting_app_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_voting_apps_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/votingApps/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GetWeeklyVolumes (historical)
%% Gets weekly volumes.
-spec curve_get_weekly_volumes_(historical)(ctx:ctx()) -> {ok, [openapi_curve_weekly_volume_dto:openapi_curve_weekly_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_weekly_volumes_(historical)(Ctx) ->
    curve_get_weekly_volumes_(historical)(Ctx, #{}).

-spec curve_get_weekly_volumes_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_weekly_volume_dto:openapi_curve_weekly_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_weekly_volumes_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/weeklyVolumes/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


