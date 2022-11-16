-module(openapi_curve_api).

-export([curve_get_accounts_(historical)/1, curve_get_accounts_(historical)/2,
         curve_get_add_liquidity_events_(historical)/1, curve_get_add_liquidity_events_(historical)/2,
         curve_get_admin_fee_change_logs_(historical)/1, curve_get_admin_fee_change_logs_(historical)/2,
         curve_get_amplification_coeff_change_logs_(historical)/1, curve_get_amplification_coeff_change_logs_(historical)/2,
         curve_get_coins_(historical)/1, curve_get_coins_(historical)/2,
         curve_get_contract_versions_(historical)/1, curve_get_contract_versions_(historical)/2,
         curve_get_contracts_(historical)/1, curve_get_contracts_(historical)/2,
         curve_get_daily_volumes_(historical)/1, curve_get_daily_volumes_(historical)/2,
         curve_get_exchanges_(historical)/1, curve_get_exchanges_(historical)/2,
         curve_get_fee_change_logs_(historical)/1, curve_get_fee_change_logs_(historical)/2,
         curve_get_gauge_deposits_(historical)/1, curve_get_gauge_deposits_(historical)/2,
         curve_get_gauge_liquiditys_(historical)/1, curve_get_gauge_liquiditys_(historical)/2,
         curve_get_gauge_total_weights_(historical)/1, curve_get_gauge_total_weights_(historical)/2,
         curve_get_gauge_type_weights_(historical)/1, curve_get_gauge_type_weights_(historical)/2,
         curve_get_gauge_types_(historical)/1, curve_get_gauge_types_(historical)/2,
         curve_get_gauge_weight_votes_(historical)/1, curve_get_gauge_weight_votes_(historical)/2,
         curve_get_gauge_weights_(historical)/1, curve_get_gauge_weights_(historical)/2,
         curve_get_gauge_withdraws_(historical)/1, curve_get_gauge_withdraws_(historical)/2,
         curve_get_gauges_(historical)/1, curve_get_gauges_(historical)/2,
         curve_get_hourly_volumes_(historical)/1, curve_get_hourly_volumes_(historical)/2,
         curve_get_lp_tokens_(historical)/1, curve_get_lp_tokens_(historical)/2,
         curve_get_pools_(historical)/1, curve_get_pools_(historical)/2,
         curve_get_proposal_votes_(historical)/1, curve_get_proposal_votes_(historical)/2,
         curve_get_proposals_(historical)/1, curve_get_proposals_(historical)/2,
         curve_get_remove_liquidity_events_(historical)/1, curve_get_remove_liquidity_events_(historical)/2,
         curve_get_remove_liquidity_one_events_(historical)/1, curve_get_remove_liquidity_one_events_(historical)/2,
         curve_get_system_states_(historical)/1, curve_get_system_states_(historical)/2,
         curve_get_tokens_(historical)/1, curve_get_tokens_(historical)/2,
         curve_get_transfer_ownership_events_(historical)/1, curve_get_transfer_ownership_events_(historical)/2,
         curve_get_underlying_coins_(historical)/1, curve_get_underlying_coins_(historical)/2,
         curve_get_voting_apps_(historical)/1, curve_get_voting_apps_(historical)/2,
         curve_get_weekly_volumes_(historical)/1, curve_get_weekly_volumes_(historical)/2]).

-define(BASE_URL, <<"">>).

%% @doc Accounts (historical) 🔥
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
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'address'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc AddLiquidityEvents (historical) 🔥
%% Gets addliquidityevents.
-spec curve_get_add_liquidity_events_(historical)(ctx:ctx()) -> {ok, [openapi_curve_add_liquidity_event_dto:openapi_curve_add_liquidity_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_add_liquidity_events_(historical)(Ctx) ->
    curve_get_add_liquidity_events_(historical)(Ctx, #{}).

-spec curve_get_add_liquidity_events_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_add_liquidity_event_dto:openapi_curve_add_liquidity_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_add_liquidity_events_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/addliquidityevents/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc AdminFeeChangeLogs (historical) 🔥
%% Gets adminfeechangelogs.
-spec curve_get_admin_fee_change_logs_(historical)(ctx:ctx()) -> {ok, [openapi_curve_admin_fee_change_log_dto:openapi_curve_admin_fee_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_admin_fee_change_logs_(historical)(Ctx) ->
    curve_get_admin_fee_change_logs_(historical)(Ctx, #{}).

-spec curve_get_admin_fee_change_logs_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_admin_fee_change_log_dto:openapi_curve_admin_fee_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_admin_fee_change_logs_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/adminfeechangelogs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc AmplificationCoeffChangeLogs (historical) 🔥
%% Gets amplificationcoeffchangelogs.
-spec curve_get_amplification_coeff_change_logs_(historical)(ctx:ctx()) -> {ok, [openapi_curve_amplification_coeff_change_log_dto:openapi_curve_amplification_coeff_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_amplification_coeff_change_logs_(historical)(Ctx) ->
    curve_get_amplification_coeff_change_logs_(historical)(Ctx, #{}).

-spec curve_get_amplification_coeff_change_logs_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_amplification_coeff_change_log_dto:openapi_curve_amplification_coeff_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_amplification_coeff_change_logs_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/amplificationcoeffchangelogs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Coins (historical) 🔥
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
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc ContractVersions (historical) 🔥
%% Gets contractversions.
-spec curve_get_contract_versions_(historical)(ctx:ctx()) -> {ok, [openapi_curve_contract_version_dto:openapi_curve_contract_version_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_contract_versions_(historical)(Ctx) ->
    curve_get_contract_versions_(historical)(Ctx, #{}).

-spec curve_get_contract_versions_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_contract_version_dto:openapi_curve_contract_version_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_contract_versions_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/contractversions/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'address'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Contracts (historical) 🔥
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
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc DailyVolumes (historical) 🔥
%% Gets dailyvolumes.
-spec curve_get_daily_volumes_(historical)(ctx:ctx()) -> {ok, [openapi_curve_daily_volume_dto:openapi_curve_daily_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_daily_volumes_(historical)(Ctx) ->
    curve_get_daily_volumes_(historical)(Ctx, #{}).

-spec curve_get_daily_volumes_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_daily_volume_dto:openapi_curve_daily_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_daily_volumes_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/dailyvolumes/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
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
    Path = [<<"/dapps/curve/exchanges/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc FeeChangeLogs (historical) 🔥
%% Gets feechangelogs.
-spec curve_get_fee_change_logs_(historical)(ctx:ctx()) -> {ok, [openapi_curve_fee_change_log_dto:openapi_curve_fee_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_fee_change_logs_(historical)(Ctx) ->
    curve_get_fee_change_logs_(historical)(Ctx, #{}).

-spec curve_get_fee_change_logs_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_fee_change_log_dto:openapi_curve_fee_change_log_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_fee_change_logs_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/feechangelogs/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugeDeposits (historical) 🔥
%% Gets gaugedeposits.
-spec curve_get_gauge_deposits_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_deposit_dto:openapi_curve_gauge_deposit_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_deposits_(historical)(Ctx) ->
    curve_get_gauge_deposits_(historical)(Ctx, #{}).

-spec curve_get_gauge_deposits_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_deposit_dto:openapi_curve_gauge_deposit_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_deposits_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/gaugedeposits/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugeLiquiditys (historical) 🔥
%% Gets gaugeliquiditys.
-spec curve_get_gauge_liquiditys_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_liquidity_dto:openapi_curve_gauge_liquidity_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_liquiditys_(historical)(Ctx) ->
    curve_get_gauge_liquiditys_(historical)(Ctx, #{}).

-spec curve_get_gauge_liquiditys_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_liquidity_dto:openapi_curve_gauge_liquidity_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_liquiditys_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/gaugeliquiditys/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'user'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugeTotalWeights (historical) 🔥
%% Gets gaugetotalweights.
-spec curve_get_gauge_total_weights_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_total_weight_dto:openapi_curve_gauge_total_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_total_weights_(historical)(Ctx) ->
    curve_get_gauge_total_weights_(historical)(Ctx, #{}).

-spec curve_get_gauge_total_weights_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_total_weight_dto:openapi_curve_gauge_total_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_total_weights_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/gaugetotalweights/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugeTypeWeights (historical) 🔥
%% Gets gaugetypeweights.
-spec curve_get_gauge_type_weights_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_type_weight_dto:openapi_curve_gauge_type_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_type_weights_(historical)(Ctx) ->
    curve_get_gauge_type_weights_(historical)(Ctx, #{}).

-spec curve_get_gauge_type_weights_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_type_weight_dto:openapi_curve_gauge_type_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_type_weights_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/gaugetypeweights/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugeTypes (historical) 🔥
%% Gets gaugetypes.
-spec curve_get_gauge_types_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_type_dto:openapi_curve_gauge_type_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_types_(historical)(Ctx) ->
    curve_get_gauge_types_(historical)(Ctx, #{}).

-spec curve_get_gauge_types_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_type_dto:openapi_curve_gauge_type_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_types_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/gaugetypes/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'name'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugeWeightVotes (historical) 🔥
%% Gets gaugeweightvotes.
-spec curve_get_gauge_weight_votes_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_weight_vote_dto:openapi_curve_gauge_weight_vote_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_weight_votes_(historical)(Ctx) ->
    curve_get_gauge_weight_votes_(historical)(Ctx, #{}).

-spec curve_get_gauge_weight_votes_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_weight_vote_dto:openapi_curve_gauge_weight_vote_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_weight_votes_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/gaugeweightvotes/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'user'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugeWeights (historical) 🔥
%% Gets gaugeweights.
-spec curve_get_gauge_weights_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_weight_dto:openapi_curve_gauge_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_weights_(historical)(Ctx) ->
    curve_get_gauge_weights_(historical)(Ctx, #{}).

-spec curve_get_gauge_weights_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_weight_dto:openapi_curve_gauge_weight_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_weights_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/gaugeweights/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GaugeWithdraws (historical) 🔥
%% Gets gaugewithdraws.
-spec curve_get_gauge_withdraws_(historical)(ctx:ctx()) -> {ok, [openapi_curve_gauge_withdraw_dto:openapi_curve_gauge_withdraw_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_withdraws_(historical)(Ctx) ->
    curve_get_gauge_withdraws_(historical)(Ctx, #{}).

-spec curve_get_gauge_withdraws_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_gauge_withdraw_dto:openapi_curve_gauge_withdraw_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_gauge_withdraws_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/gaugewithdraws/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gauges (historical) 🔥
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
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'address', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc HourlyVolumes (historical) 🔥
%% Gets hourlyvolumes.
-spec curve_get_hourly_volumes_(historical)(ctx:ctx()) -> {ok, [openapi_curve_hourly_volume_dto:openapi_curve_hourly_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_hourly_volumes_(historical)(Ctx) ->
    curve_get_hourly_volumes_(historical)(Ctx, #{}).

-spec curve_get_hourly_volumes_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_hourly_volume_dto:openapi_curve_hourly_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_hourly_volumes_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/hourlyvolumes/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc LpTokens (historical) 🔥
%% Gets lptokens.
-spec curve_get_lp_tokens_(historical)(ctx:ctx()) -> {ok, [openapi_curve_lp_token_dto:openapi_curve_lp_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_lp_tokens_(historical)(Ctx) ->
    curve_get_lp_tokens_(historical)(Ctx, #{}).

-spec curve_get_lp_tokens_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_lp_token_dto:openapi_curve_lp_token_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_lp_tokens_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/lptokens/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'address', 'name', 'symbol', 'pool'], _OptionalParams),
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
    Path = [<<"/dapps/curve/pools/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'name'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc ProposalVotes (historical) 🔥
%% Gets proposalvotes.
-spec curve_get_proposal_votes_(historical)(ctx:ctx()) -> {ok, [openapi_curve_proposal_vote_dto:openapi_curve_proposal_vote_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_proposal_votes_(historical)(Ctx) ->
    curve_get_proposal_votes_(historical)(Ctx, #{}).

-spec curve_get_proposal_votes_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_proposal_vote_dto:openapi_curve_proposal_vote_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_proposal_votes_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/proposalvotes/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Proposals (historical) 🔥
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
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc RemoveLiquidityEvents (historical) 🔥
%% Gets removeliquidityevents.
-spec curve_get_remove_liquidity_events_(historical)(ctx:ctx()) -> {ok, [openapi_curve_remove_liquidity_event_dto:openapi_curve_remove_liquidity_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_remove_liquidity_events_(historical)(Ctx) ->
    curve_get_remove_liquidity_events_(historical)(Ctx, #{}).

-spec curve_get_remove_liquidity_events_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_remove_liquidity_event_dto:openapi_curve_remove_liquidity_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_remove_liquidity_events_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/removeliquidityevents/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc RemoveLiquidityOneEvents (historical) 🔥
%% Gets removeliquidityoneevents.
-spec curve_get_remove_liquidity_one_events_(historical)(ctx:ctx()) -> {ok, [openapi_curve_remove_liquidity_one_event_dto:openapi_curve_remove_liquidity_one_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_remove_liquidity_one_events_(historical)(Ctx) ->
    curve_get_remove_liquidity_one_events_(historical)(Ctx, #{}).

-spec curve_get_remove_liquidity_one_events_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_remove_liquidity_one_event_dto:openapi_curve_remove_liquidity_one_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_remove_liquidity_one_events_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/removeliquidityoneevents/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc SystemStates (historical) 🔥
%% Gets systemstates.
-spec curve_get_system_states_(historical)(ctx:ctx()) -> {ok, [openapi_curve_system_state_dto:openapi_curve_system_state_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_system_states_(historical)(Ctx) ->
    curve_get_system_states_(historical)(Ctx, #{}).

-spec curve_get_system_states_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_system_state_dto:openapi_curve_system_state_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_system_states_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/systemstates/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id'], _OptionalParams),
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
    Path = [<<"/dapps/curve/tokens/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'address', 'name', 'symbol'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc TransferOwnershipEvents (historical) 🔥
%% Gets transferownershipevents.
-spec curve_get_transfer_ownership_events_(historical)(ctx:ctx()) -> {ok, [openapi_curve_transfer_ownership_event_dto:openapi_curve_transfer_ownership_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_transfer_ownership_events_(historical)(Ctx) ->
    curve_get_transfer_ownership_events_(historical)(Ctx, #{}).

-spec curve_get_transfer_ownership_events_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_transfer_ownership_event_dto:openapi_curve_transfer_ownership_event_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_transfer_ownership_events_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/transferownershipevents/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc UnderlyingCoins (historical) 🔥
%% Gets underlyingcoins.
-spec curve_get_underlying_coins_(historical)(ctx:ctx()) -> {ok, [openapi_curve_underlying_coin_dto:openapi_curve_underlying_coin_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_underlying_coins_(historical)(Ctx) ->
    curve_get_underlying_coins_(historical)(Ctx, #{}).

-spec curve_get_underlying_coins_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_underlying_coin_dto:openapi_curve_underlying_coin_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_underlying_coins_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/underlyingcoins/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc VotingApps (historical) 🔥
%% Gets votingapps.
-spec curve_get_voting_apps_(historical)(ctx:ctx()) -> {ok, [openapi_curve_voting_app_dto:openapi_curve_voting_app_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_voting_apps_(historical)(Ctx) ->
    curve_get_voting_apps_(historical)(Ctx, #{}).

-spec curve_get_voting_apps_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_voting_app_dto:openapi_curve_voting_app_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_voting_apps_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/votingapps/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'address'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc WeeklyVolumes (historical) 🔥
%% Gets weeklyvolumes.
-spec curve_get_weekly_volumes_(historical)(ctx:ctx()) -> {ok, [openapi_curve_weekly_volume_dto:openapi_curve_weekly_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_weekly_volumes_(historical)(Ctx) ->
    curve_get_weekly_volumes_(historical)(Ctx, #{}).

-spec curve_get_weekly_volumes_(historical)(ctx:ctx(), maps:map()) -> {ok, [openapi_curve_weekly_volume_dto:openapi_curve_weekly_volume_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
curve_get_weekly_volumes_(historical)(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/dapps/curve/weeklyvolumes/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate', 'id', 'pool'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


