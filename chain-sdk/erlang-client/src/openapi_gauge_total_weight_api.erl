-module(openapi_gauge_total_weight_api).

-export([chains_chain_id_dapps_curve_gauge_total_weight_historical_get/2, chains_chain_id_dapps_curve_gauge_total_weight_historical_get/3]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec chains_chain_id_dapps_curve_gauge_total_weight_historical_get(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_curve_gauge_total_weight_historical_get(Ctx, ChainId) ->
    chains_chain_id_dapps_curve_gauge_total_weight_historical_get(Ctx, ChainId, #{}).

-spec chains_chain_id_dapps_curve_gauge_total_weight_historical_get(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
chains_chain_id_dapps_curve_gauge_total_weight_historical_get(Ctx, ChainId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/chains/", ChainId, "/dapps/curve/gaugeTotalWeight/historical">>],
    QS = lists:flatten([])++openapi_utils:optional_params(['startBlock', 'endBlock', 'startDate', 'endDate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

