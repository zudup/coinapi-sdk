-module(openapi_swap_v3_dto).

-include("openapi.hrl").

-export([openapi_swap_v3_dto/0]).

-export([openapi_swap_v3_dto/1]).

-export_type([openapi_swap_v3_dto/0]).

-type openapi_swap_v3_dto() ::
  [ {'entry_time', datetime() }
  | {'recv_time', datetime() }
  | {'block_number', integer() }
  | {'vid', integer() }
  | {'id', binary() }
  | {'transaction', binary() }
  | {'timestamp', datetime() }
  | {'pool', binary() }
  | {'token_0', binary() }
  | {'token_1', binary() }
  | {'sender', binary() }
  | {'recipient', binary() }
  | {'origin', binary() }
  | {'amount_0', binary() }
  | {'amount_1', binary() }
  | {'amount_usd', binary() }
  | {'sqrt_price_x96', openapi_big_integer:openapi_big_integer() }
  | {'tick', openapi_big_integer:openapi_big_integer() }
  | {'log_index', openapi_big_integer:openapi_big_integer() }
  | {'evaluated_price', float() }
  | {'evaluated_amount', float() }
  | {'evaluated_aggressor', openapi_e_trade_aggressive_side:openapi_e_trade_aggressive_side() }
  | {'pool_id', binary() }
  | {'transaction_id', binary() }
  ].


openapi_swap_v3_dto() ->
    openapi_swap_v3_dto([]).

openapi_swap_v3_dto(Fields) ->
  Default = [ {'entry_time', datetime() }
            , {'recv_time', datetime() }
            , {'block_number', integer() }
            , {'vid', integer() }
            , {'id', binary() }
            , {'transaction', binary() }
            , {'timestamp', datetime() }
            , {'pool', binary() }
            , {'token_0', binary() }
            , {'token_1', binary() }
            , {'sender', binary() }
            , {'recipient', binary() }
            , {'origin', binary() }
            , {'amount_0', binary() }
            , {'amount_1', binary() }
            , {'amount_usd', binary() }
            , {'sqrt_price_x96', openapi_big_integer:openapi_big_integer() }
            , {'tick', openapi_big_integer:openapi_big_integer() }
            , {'log_index', openapi_big_integer:openapi_big_integer() }
            , {'evaluated_price', float() }
            , {'evaluated_amount', float() }
            , {'evaluated_aggressor', openapi_e_trade_aggressive_side:openapi_e_trade_aggressive_side() }
            , {'pool_id', binary() }
            , {'transaction_id', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

