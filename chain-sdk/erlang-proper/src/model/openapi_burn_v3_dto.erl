-module(openapi_burn_v3_dto).

-include("openapi.hrl").

-export([openapi_burn_v3_dto/0]).

-export([openapi_burn_v3_dto/1]).

-export_type([openapi_burn_v3_dto/0]).

-type openapi_burn_v3_dto() ::
  [ {'entry_time', datetime() }
  | {'recv_time', datetime() }
  | {'block_number', integer() }
  | {'id', binary() }
  | {'transaction', binary() }
  | {'pool', binary() }
  | {'token_0', binary() }
  | {'token_1', binary() }
  | {'timestamp', binary() }
  | {'owner', binary() }
  | {'origin', binary() }
  | {'amount', binary() }
  | {'amount_0', binary() }
  | {'amount_1', binary() }
  | {'amount_usd', binary() }
  | {'tick_lower', binary() }
  | {'tick_upper', binary() }
  | {'log_index', binary() }
  | {'vid', integer() }
  ].


openapi_burn_v3_dto() ->
    openapi_burn_v3_dto([]).

openapi_burn_v3_dto(Fields) ->
  Default = [ {'entry_time', datetime() }
            , {'recv_time', datetime() }
            , {'block_number', integer() }
            , {'id', binary() }
            , {'transaction', binary() }
            , {'pool', binary() }
            , {'token_0', binary() }
            , {'token_1', binary() }
            , {'timestamp', binary() }
            , {'owner', binary() }
            , {'origin', binary() }
            , {'amount', binary() }
            , {'amount_0', binary() }
            , {'amount_1', binary() }
            , {'amount_usd', binary() }
            , {'tick_lower', binary() }
            , {'tick_upper', binary() }
            , {'log_index', binary() }
            , {'vid', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).
