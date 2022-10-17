-module(openapi_swap_v2_dto).

-include("openapi.hrl").

-export([openapi_swap_v2_dto/0]).

-export([openapi_swap_v2_dto/1]).

-export_type([openapi_swap_v2_dto/0]).

-type openapi_swap_v2_dto() ::
  [ {'entry_time', datetime() }
  | {'recv_time', datetime() }
  | {'block_number', integer() }
  | {'vid', integer() }
  | {'id', binary() }
  | {'transaction', binary() }
  | {'timestamp', datetime() }
  | {'pair', binary() }
  | {'sender', binary() }
  | {'from', binary() }
  | {'amount_0_in', binary() }
  | {'amount_1_in', binary() }
  | {'amount_0_out', binary() }
  | {'amount_1_out', binary() }
  | {'to', binary() }
  | {'log_index', openapi_big_integer:openapi_big_integer() }
  | {'amount_usd', binary() }
  | {'evaluated_price', float() }
  | {'evaluated_amount', float() }
  | {'evaluated_aggressor', openapi_e_trade_aggressive_side:openapi_e_trade_aggressive_side() }
  | {'pool_id', binary() }
  | {'transaction_id', binary() }
  ].


openapi_swap_v2_dto() ->
    openapi_swap_v2_dto([]).

openapi_swap_v2_dto(Fields) ->
  Default = [ {'entry_time', datetime() }
            , {'recv_time', datetime() }
            , {'block_number', integer() }
            , {'vid', integer() }
            , {'id', binary() }
            , {'transaction', binary() }
            , {'timestamp', datetime() }
            , {'pair', binary() }
            , {'sender', binary() }
            , {'from', binary() }
            , {'amount_0_in', binary() }
            , {'amount_1_in', binary() }
            , {'amount_0_out', binary() }
            , {'amount_1_out', binary() }
            , {'to', binary() }
            , {'log_index', openapi_big_integer:openapi_big_integer() }
            , {'amount_usd', binary() }
            , {'evaluated_price', float() }
            , {'evaluated_amount', float() }
            , {'evaluated_aggressor', openapi_e_trade_aggressive_side:openapi_e_trade_aggressive_side() }
            , {'pool_id', binary() }
            , {'transaction_id', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

