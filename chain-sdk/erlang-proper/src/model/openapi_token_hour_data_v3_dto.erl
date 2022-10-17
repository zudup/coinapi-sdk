-module(openapi_token_hour_data_v3_dto).

-include("openapi.hrl").

-export([openapi_token_hour_data_v3_dto/0]).

-export([openapi_token_hour_data_v3_dto/1]).

-export_type([openapi_token_hour_data_v3_dto/0]).

-type openapi_token_hour_data_v3_dto() ::
  [ {'entry_time', datetime() }
  | {'recv_time', datetime() }
  | {'block_number', integer() }
  | {'id', binary() }
  | {'period_start_unix', integer() }
  | {'token', binary() }
  | {'volume', binary() }
  | {'volume_usd', binary() }
  | {'untracked_volume_usd', binary() }
  | {'total_value_locked', binary() }
  | {'total_value_locked_usd', binary() }
  | {'price_usd', binary() }
  | {'fees_usd', binary() }
  | {'open', binary() }
  | {'high', binary() }
  | {'low', binary() }
  | {'close', binary() }
  | {'vid', integer() }
  ].


openapi_token_hour_data_v3_dto() ->
    openapi_token_hour_data_v3_dto([]).

openapi_token_hour_data_v3_dto(Fields) ->
  Default = [ {'entry_time', datetime() }
            , {'recv_time', datetime() }
            , {'block_number', integer() }
            , {'id', binary() }
            , {'period_start_unix', integer() }
            , {'token', binary() }
            , {'volume', binary() }
            , {'volume_usd', binary() }
            , {'untracked_volume_usd', binary() }
            , {'total_value_locked', binary() }
            , {'total_value_locked_usd', binary() }
            , {'price_usd', binary() }
            , {'fees_usd', binary() }
            , {'open', binary() }
            , {'high', binary() }
            , {'low', binary() }
            , {'close', binary() }
            , {'vid', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

