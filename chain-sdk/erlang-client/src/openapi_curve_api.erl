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

%% @doc Accounts (historical)
%% Gets accounts.
-spec curve_get_accounts_(historical)(ctx:ctx()) -> {ok, [openapi_curve_account_dto:openapi_curve_account_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_accounts_(historical)(Ctx) ->
    curve_get_accounts_(historical)(Ctx, #{}).

-spec curve_get_accounts_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_account_dto:openapi_curve_account_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_accounts_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/accounts/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc AddLiquidityEvents (historical)
%% Gets add liquidity events.
-spec curve_get_add_liquidity_events_(historical)(ctx:ctx()) -> {ok, [openapi_curve_add_liquidity_event_dto:openapi_curve_add_liquidity_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_add_liquidity_events_(historical)(Ctx) ->
    curve_get_add_liquidity_events_(historical)(Ctx, #{}).

-spec curve_get_add_liquidity_events_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_add_liquidity_event_dto:openapi_curve_add_liquidity_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_add_liquidity_events_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/addLiquidityEvents/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc AdminFeeChangeLogs (historical)
%% Gets admin fee change logs.
-spec curve_get_admin_fee_change_logs_(historical)(ctx:ctx()) -> {ok, [openapi_curve_admin_fee_change_log_dto:openapi_curve_admin_fee_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_admin_fee_change_logs_(historical)(Ctx) ->
    curve_get_admin_fee_change_logs_(historical)(Ctx, #{}).

-spec curve_get_admin_fee_change_logs_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_admin_fee_change_log_dto:openapi_curve_admin_fee_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_admin_fee_change_logs_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/adminFeeChangeLogs/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc AmplificationCoeffChangeLogs (historical)
%% Gets amplification coeff change logs.
-spec curve_get_amplification_coeff_change_logs_(historical)(ctx:ctx()) -> {ok, [openapi_curve_amplification_coeff_change_log_dto:openapi_curve_amplification_coeff_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_amplification_coeff_change_logs_(historical)(Ctx) ->
    curve_get_amplification_coeff_change_logs_(historical)(Ctx, #{}).

-spec curve_get_amplification_coeff_change_logs_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_amplification_coeff_change_log_dto:openapi_curve_amplification_coeff_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_amplification_coeff_change_logs_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/amplificationCoeffChangeLogs/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Coins (historical)
%% Gets coins.
-spec curve_get_coins_(historical)(ctx:ctx()) -> {ok, [openapi_curve_coin_dto:openapi_curve_coin_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_coins_(historical)(Ctx) ->
    curve_get_coins_(historical)(Ctx, #{}).

-spec curve_get_coins_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_coin_dto:openapi_curve_coin_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_coins_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/coins/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Contracts (historical)
%% Gets contracts.
-spec curve_get_contracts_(historical)(ctx:ctx()) -> {ok, [openapi_curve_contract_dto:openapi_curve_contract_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_contracts_(historical)(Ctx) ->
    curve_get_contracts_(historical)(Ctx, #{}).

-spec curve_get_contracts_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_contract_dto:openapi_curve_contract_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_contracts_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/contracts/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc ContractsVersions (historical)
%% Gets contracts versions.
-spec curve_get_contracts_versions_(historical)(ctx:ctx()) -> {ok, [openapi_curve_contract_version_dto:openapi_curve_contract_version_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_contracts_versions_(historical)(Ctx) ->
    curve_get_contracts_versions_(historical)(Ctx, #{}).

-spec curve_get_contracts_versions_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_contract_version_dto:openapi_curve_contract_version_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_contracts_versions_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/contractsVersions/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc DailyVolumes (historical)
%% Gets daily volumes.
-spec curve_get_daily_volumes_(historical)(ctx:ctx()) -> {ok, [openapi_curve_daily_volume_dto:openapi_curve_daily_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_daily_volumes_(historical)(Ctx) ->
    curve_get_daily_volumes_(historical)(Ctx, #{}).

-spec curve_get_daily_volumes_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_daily_volume_dto:openapi_curve_daily_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_daily_volumes_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/dailyVolumes/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Exchanges (historical) 🔥
%% Gets exchanges.
-spec curve_get_exchanges_(historical)(ctx:ctx()) -> {ok, [openapi_curve_exchange_dto:openapi_curve_exchange_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_exchanges_(historical)(Ctx) ->
    curve_get_exchanges_(historical)(Ctx, #{}).

-spec curve_get_exchanges_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_exchange_dto:openapi_curve_exchange_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_exchanges_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/exchanges/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc FeeChangeLogs (historical)
%% Gets fee change logs.
-spec curve_get_fee_change_logs_(historical)(ctx:ctx()) -> {ok, [openapi_curve_fee_change_log_dto:openapi_curve_fee_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_fee_change_logs_(historical)(Ctx) ->
    curve_get_fee_change_logs_(historical)(Ctx, #{}).

-spec curve_get_fee_change_logs_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_fee_change_log_dto:openapi_curve_fee_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_fee_change_logs_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/feeChangeLogs/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gauges (historical)
%% Gets gauges.
-spec curve_get_gauges_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_dto:openapi_curve_gauge_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_(historical)(Ctx) ->
    curve_get_gauges_(historical)(Ctx, #{}).

-spec curve_get_gauges_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_dto:openapi_curve_gauge_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/gauges/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugesDeposits (historical)
%% Gets gauges deposits.
-spec curve_get_gauges_deposits_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_deposit_dto:openapi_curve_gauge_deposit_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_deposits_(historical)(Ctx) ->
    curve_get_gauges_deposits_(historical)(Ctx, #{}).

-spec curve_get_gauges_deposits_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_deposit_dto:openapi_curve_gauge_deposit_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_deposits_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/gaugesDeposits/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugesLiquidity (historical)
%% Gets gauges liquidity.
-spec curve_get_gauges_liquidity_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_liquidity_dto:openapi_curve_gauge_liquidity_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_liquidity_(historical)(Ctx) ->
    curve_get_gauges_liquidity_(historical)(Ctx, #{}).

-spec curve_get_gauges_liquidity_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_liquidity_dto:openapi_curve_gauge_liquidity_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_liquidity_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/gaugesLiquidity/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugesTotalWeights (historical)
%% Gets gauges total weights.
-spec curve_get_gauges_total_weights_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_total_weight_dto:openapi_curve_gauge_total_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_total_weights_(historical)(Ctx) ->
    curve_get_gauges_total_weights_(historical)(Ctx, #{}).

-spec curve_get_gauges_total_weights_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_total_weight_dto:openapi_curve_gauge_total_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_total_weights_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/gaugesTotalWeights/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugesTypes (historical)
%% Gets gauges types.
-spec curve_get_gauges_types_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_type_dto:openapi_curve_gauge_type_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_types_(historical)(Ctx) ->
    curve_get_gauges_types_(historical)(Ctx, #{}).

-spec curve_get_gauges_types_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_type_dto:openapi_curve_gauge_type_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_types_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/gaugesTypes/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugesTypesWeights (historical)
%% Gets gauges types weights.
-spec curve_get_gauges_types_weights_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_type_weight_dto:openapi_curve_gauge_type_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_types_weights_(historical)(Ctx) ->
    curve_get_gauges_types_weights_(historical)(Ctx, #{}).

-spec curve_get_gauges_types_weights_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_type_weight_dto:openapi_curve_gauge_type_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_types_weights_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/gaugesTypesWeights/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugesWeights (historical)
%% Gets gauges weights.
-spec curve_get_gauges_weights_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_weight_dto:openapi_curve_gauge_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_weights_(historical)(Ctx) ->
    curve_get_gauges_weights_(historical)(Ctx, #{}).

-spec curve_get_gauges_weights_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_weight_dto:openapi_curve_gauge_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_weights_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/gaugesWeights/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugesWeightsVotes (historical)
%% Gets gauges weights votes.
-spec curve_get_gauges_weights_votes_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_weight_vote_dto:openapi_curve_gauge_weight_vote_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_weights_votes_(historical)(Ctx) ->
    curve_get_gauges_weights_votes_(historical)(Ctx, #{}).

-spec curve_get_gauges_weights_votes_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_weight_vote_dto:openapi_curve_gauge_weight_vote_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_weights_votes_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/gaugesWeightsVotes/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugesWithdraw (historical)
%% Gets gauges withdraws.
-spec curve_get_gauges_withdraw_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_withdraw_dto:openapi_curve_gauge_withdraw_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_withdraw_(historical)(Ctx) ->
    curve_get_gauges_withdraw_(historical)(Ctx, #{}).

-spec curve_get_gauges_withdraw_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_withdraw_dto:openapi_curve_gauge_withdraw_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauges_withdraw_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/gaugesWithdraws/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc HourlyVolumes (historical)
%% Gets hourly volumes.
-spec curve_get_hourly_volumes_(historical)(ctx:ctx()) -> {ok, [openapi_curve_hourly_volume_dto:openapi_curve_hourly_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_hourly_volumes_(historical)(Ctx) ->
    curve_get_hourly_volumes_(historical)(Ctx, #{}).

-spec curve_get_hourly_volumes_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_hourly_volume_dto:openapi_curve_hourly_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_hourly_volumes_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/hourlyVolumes/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc LpTokens (historical)
%% Gets lp tokens.
-spec curve_get_lp_tokens_(historical)(ctx:ctx()) -> {ok, [openapi_curve_lp_token_dto:openapi_curve_lp_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_lp_tokens_(historical)(Ctx) ->
    curve_get_lp_tokens_(historical)(Ctx, #{}).

-spec curve_get_lp_tokens_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_lp_token_dto:openapi_curve_lp_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_lp_tokens_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/lpTokens/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Pools (historical) 🔥
%% Gets pools.
-spec curve_get_pools_(historical)(ctx:ctx()) -> {ok, [openapi_curve_pool_dto:openapi_curve_pool_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_pools_(historical)(Ctx) ->
    curve_get_pools_(historical)(Ctx, #{}).

-spec curve_get_pools_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_pool_dto:openapi_curve_pool_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_pools_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/pools/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Proposals (historical)
%% Gets proposals.
-spec curve_get_proposals_(historical)(ctx:ctx()) -> {ok, [openapi_curve_proposal_dto:openapi_curve_proposal_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_proposals_(historical)(Ctx) ->
    curve_get_proposals_(historical)(Ctx, #{}).

-spec curve_get_proposals_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_proposal_dto:openapi_curve_proposal_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_proposals_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/proposals/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc ProposalsVotes (historical)
%% Gets proposals votes.
-spec curve_get_proposals_votes_(historical)(ctx:ctx()) -> {ok, [openapi_curve_proposal_vote_dto:openapi_curve_proposal_vote_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_proposals_votes_(historical)(Ctx) ->
    curve_get_proposals_votes_(historical)(Ctx, #{}).

-spec curve_get_proposals_votes_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_proposal_vote_dto:openapi_curve_proposal_vote_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_proposals_votes_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/proposalsVotes/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc RemoveLiquidityEvents (historical)
%% Gets remove liquidity events.
-spec curve_get_remove_liquidity_events_(historical)(ctx:ctx()) -> {ok, [openapi_curve_remove_liquidity_event_dto:openapi_curve_remove_liquidity_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_remove_liquidity_events_(historical)(Ctx) ->
    curve_get_remove_liquidity_events_(historical)(Ctx, #{}).

-spec curve_get_remove_liquidity_events_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_remove_liquidity_event_dto:openapi_curve_remove_liquidity_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_remove_liquidity_events_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/removeLiquidityEvents/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc RemoveLiquidityOneEvents (historical)
%% Gets remove liquidity one events.
-spec curve_get_remove_liquidity_one_events_(historical)(ctx:ctx()) -> {ok, [openapi_curve_remove_liquidity_one_event_dto:openapi_curve_remove_liquidity_one_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_remove_liquidity_one_events_(historical)(Ctx) ->
    curve_get_remove_liquidity_one_events_(historical)(Ctx, #{}).

-spec curve_get_remove_liquidity_one_events_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_remove_liquidity_one_event_dto:openapi_curve_remove_liquidity_one_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_remove_liquidity_one_events_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/removeLiquidityOneEvents/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc SystemStates (historical)
%% Gets system states.
-spec curve_get_system_states_(historical)(ctx:ctx()) -> {ok, [openapi_curve_system_state_dto:openapi_curve_system_state_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_system_states_(historical)(Ctx) ->
    curve_get_system_states_(historical)(Ctx, #{}).

-spec curve_get_system_states_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_system_state_dto:openapi_curve_system_state_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_system_states_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/systemStates/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Tokens (historical) 🔥
%% Gets tokens.
-spec curve_get_tokens_(historical)(ctx:ctx()) -> {ok, [openapi_curve_token_dto:openapi_curve_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_tokens_(historical)(Ctx) ->
    curve_get_tokens_(historical)(Ctx, #{}).

-spec curve_get_tokens_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_token_dto:openapi_curve_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_tokens_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/tokens/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'tokenId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc TransferOwnershipEvents (historical)
%% Gets transfer ownership events.
-spec curve_get_transfer_ownership_events_(historical)(ctx:ctx()) -> {ok, [openapi_curve_transfer_ownership_event_dto:openapi_curve_transfer_ownership_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_transfer_ownership_events_(historical)(Ctx) ->
    curve_get_transfer_ownership_events_(historical)(Ctx, #{}).

-spec curve_get_transfer_ownership_events_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_transfer_ownership_event_dto:openapi_curve_transfer_ownership_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_transfer_ownership_events_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/transferOwnershipEvents/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc UnderlyingCoins (historical)
%% Gets underlying coins.
-spec curve_get_underlying_coins_(historical)(ctx:ctx()) -> {ok, [openapi_curve_underlying_coin_dto:openapi_curve_underlying_coin_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_underlying_coins_(historical)(Ctx) ->
    curve_get_underlying_coins_(historical)(Ctx, #{}).

-spec curve_get_underlying_coins_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_underlying_coin_dto:openapi_curve_underlying_coin_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_underlying_coins_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/underlyingCoins/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc VotingApps (historical)
%% Gets voting apps.
-spec curve_get_voting_apps_(historical)(ctx:ctx()) -> {ok, [openapi_curve_voting_app_dto:openapi_curve_voting_app_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_voting_apps_(historical)(Ctx) ->
    curve_get_voting_apps_(historical)(Ctx, #{}).

-spec curve_get_voting_apps_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_voting_app_dto:openapi_curve_voting_app_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_voting_apps_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/votingApps/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc WeeklyVolumes (historical)
%% Gets weekly volumes.
-spec curve_get_weekly_volumes_(historical)(ctx:ctx()) -> {ok, [openapi_curve_weekly_volume_dto:openapi_curve_weekly_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_weekly_volumes_(historical)(Ctx) ->
    curve_get_weekly_volumes_(historical)(Ctx, #{}).

-spec curve_get_weekly_volumes_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_weekly_volume_dto:openapi_curve_weekly_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_weekly_volumes_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/weeklyVolumes/historical-manual">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'poolId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


