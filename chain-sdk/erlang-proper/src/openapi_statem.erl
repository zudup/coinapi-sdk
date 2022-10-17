-module(openapi_statem).

-behaviour(proper_statem).

-include("openapi.hrl").
-include_lib("proper/include/proper_common.hrl").
-include_lib("stdlib/include/assert.hrl").

-compile(export_all).
-compile(nowarn_export_all).

-include("openapi_statem.hrl").

%%==============================================================================
%% The statem's property
%%==============================================================================

prop_main() ->
  setup(),
  ?FORALL( Cmds
         , proper_statem:commands(?MODULE)
         , begin
             cleanup(),
             { History
             , State
             , Result
             } = proper_statem:run_commands(?MODULE, Cmds),
             ?WHENFAIL(
                io:format("History: ~p\nState: ~p\nResult: ~p\nCmds: ~p\n",
                          [ History
                          , State
                          , Result
                          , proper_statem:command_names(Cmds)
                          ]),
                proper:aggregate( proper_statem:command_names(Cmds)
                                , Result =:= ok
                                )
               )
           end
         ).

%%==============================================================================
%% Setup
%%==============================================================================

setup() -> ok.

%%==============================================================================
%% Cleanup
%%==============================================================================

cleanup() -> ok.

%%==============================================================================
%% Initial State
%%==============================================================================

initial_state() -> #{}.

%%==============================================================================
%% chains_chain_id_dapps_uniswapv3_bundle_current_get
%%==============================================================================

chains_chain_id_dapps_uniswapv3_bundle_current_get(ChainId) ->
  openapi_api:chains_chain_id_dapps_uniswapv3_bundle_current_get(ChainId).

chains_chain_id_dapps_uniswapv3_bundle_current_get_args(_S) ->
  [binary()].

%%==============================================================================
%% chains_chain_id_dapps_uniswapv3_burns_current_get
%%==============================================================================

chains_chain_id_dapps_uniswapv3_burns_current_get(ChainId) ->
  openapi_api:chains_chain_id_dapps_uniswapv3_burns_current_get(ChainId).

chains_chain_id_dapps_uniswapv3_burns_current_get_args(_S) ->
  [binary()].

%%==============================================================================
%% chains_chain_id_dapps_uniswapv3_factory_current_get
%%==============================================================================

chains_chain_id_dapps_uniswapv3_factory_current_get(ChainId) ->
  openapi_api:chains_chain_id_dapps_uniswapv3_factory_current_get(ChainId).

chains_chain_id_dapps_uniswapv3_factory_current_get_args(_S) ->
  [binary()].

%%==============================================================================
%% chains_chain_id_dapps_uniswapv3_mints_current_get
%%==============================================================================

chains_chain_id_dapps_uniswapv3_mints_current_get(ChainId) ->
  openapi_api:chains_chain_id_dapps_uniswapv3_mints_current_get(ChainId).

chains_chain_id_dapps_uniswapv3_mints_current_get_args(_S) ->
  [binary()].

%%==============================================================================
%% chains_chain_id_dapps_uniswapv3_pools_current_get
%%==============================================================================

chains_chain_id_dapps_uniswapv3_pools_current_get(ChainId) ->
  openapi_api:chains_chain_id_dapps_uniswapv3_pools_current_get(ChainId).

chains_chain_id_dapps_uniswapv3_pools_current_get_args(_S) ->
  [binary()].

%%==============================================================================
%% chains_chain_id_dapps_uniswapv3_pools_day_data_current_get
%%==============================================================================

chains_chain_id_dapps_uniswapv3_pools_day_data_current_get(ChainId) ->
  openapi_api:chains_chain_id_dapps_uniswapv3_pools_day_data_current_get(ChainId).

chains_chain_id_dapps_uniswapv3_pools_day_data_current_get_args(_S) ->
  [binary()].

%%==============================================================================
%% chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get
%%==============================================================================

chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get(ChainId) ->
  openapi_api:chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get(ChainId).

chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get_args(_S) ->
  [binary()].

%%==============================================================================
%% chains_chain_id_dapps_uniswapv3_position_snapshots_current_get
%%==============================================================================

chains_chain_id_dapps_uniswapv3_position_snapshots_current_get(ChainId) ->
  openapi_api:chains_chain_id_dapps_uniswapv3_position_snapshots_current_get(ChainId).

chains_chain_id_dapps_uniswapv3_position_snapshots_current_get_args(_S) ->
  [binary()].

%%==============================================================================
%% chains_chain_id_dapps_uniswapv3_positions_current_get
%%==============================================================================

chains_chain_id_dapps_uniswapv3_positions_current_get(ChainId) ->
  openapi_api:chains_chain_id_dapps_uniswapv3_positions_current_get(ChainId).

chains_chain_id_dapps_uniswapv3_positions_current_get_args(_S) ->
  [binary()].

%%==============================================================================
%% chains_chain_id_dapps_uniswapv3_swaps_current_get
%%==============================================================================

chains_chain_id_dapps_uniswapv3_swaps_current_get(ChainId) ->
  openapi_api:chains_chain_id_dapps_uniswapv3_swaps_current_get(ChainId).

chains_chain_id_dapps_uniswapv3_swaps_current_get_args(_S) ->
  [binary()].

%%==============================================================================
%% chains_chain_id_dapps_uniswapv3_ticks_current_get
%%==============================================================================

chains_chain_id_dapps_uniswapv3_ticks_current_get(ChainId) ->
  openapi_api:chains_chain_id_dapps_uniswapv3_ticks_current_get(ChainId).

chains_chain_id_dapps_uniswapv3_ticks_current_get_args(_S) ->
  [binary()].

%%==============================================================================
%% chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get
%%==============================================================================

chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get(ChainId) ->
  openapi_api:chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get(ChainId).

chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get_args(_S) ->
  [binary()].

%%==============================================================================
%% chains_chain_id_dapps_uniswapv3_tokens_current_get
%%==============================================================================

chains_chain_id_dapps_uniswapv3_tokens_current_get(ChainId) ->
  openapi_api:chains_chain_id_dapps_uniswapv3_tokens_current_get(ChainId).

chains_chain_id_dapps_uniswapv3_tokens_current_get_args(_S) ->
  [binary()].

%%==============================================================================
%% chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get
%%==============================================================================

chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get(ChainId) ->
  openapi_api:chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get(ChainId).

chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get_args(_S) ->
  [binary()].

%%==============================================================================
%% chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get
%%==============================================================================

chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get(ChainId) ->
  openapi_api:chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get(ChainId).

chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get_args(_S) ->
  [binary()].

%%==============================================================================
%% chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get
%%==============================================================================

chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get(ChainId) ->
  openapi_api:chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get(ChainId).

chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get_args(_S) ->
  [binary()].

