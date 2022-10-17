-module(openapi_swap_dto).

-include("openapi.hrl").

-export([openapi_swap_dto/0]).

-export([openapi_swap_dto/1]).

-export_type([openapi_swap_dto/0]).

-type openapi_swap_dto() ::
  [ {'entry_time', datetime() }
  | {'recv_time', datetime() }
  | {'block_number', integer() }
  | {'id', binary() }
  | {'transaction', binary() }
  | {'timestamp', binary() }
  | {'pair', binary() }
  | {'sender', binary() }
  | {'amount_0_in', binary() }
  | {'amount_1_in', binary() }
  | {'amount_0_out', binary() }
  | {'amount_1_out', binary() }
  | {'to', binary() }
  | {'log_index', binary() }
  | {'amount_usd', binary() }
  | {'vid', integer() }
  | {'pool_id', binary() }
  | {'transaction_id', binary() }
  | {'evaluated_price', float() }
  | {'evaluated_amount', float() }
  | {'evaluated_aggressor', openapi_e_trade_aggressive_side:openapi_e_trade_aggressive_side() }
  ].


openapi_swap_dto() ->
    openapi_swap_dto([]).

openapi_swap_dto(Fields) ->
  Default = [ {'entry_time', datetime() }
            , {'recv_time', datetime() }
            , {'block_number', integer() }
            , {'id', binary() }
            , {'transaction', binary() }
            , {'timestamp', binary() }
            , {'pair', binary() }
            , {'sender', binary() }
            , {'amount_0_in', binary() }
            , {'amount_1_in', binary() }
            , {'amount_0_out', binary() }
            , {'amount_1_out', binary() }
            , {'to', binary() }
            , {'log_index', binary() }
            , {'amount_usd', binary() }
            , {'vid', integer() }
            , {'pool_id', binary() }
            , {'transaction_id', binary() }
            , {'evaluated_price', float() }
            , {'evaluated_amount', float() }
            , {'evaluated_aggressor', openapi_e_trade_aggressive_side:openapi_e_trade_aggressive_side() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

