-module(openapi_token_v2_dto).

-include("openapi.hrl").

-export([openapi_token_v2_dto/0]).

-export([openapi_token_v2_dto/1]).

-export_type([openapi_token_v2_dto/0]).

-type openapi_token_v2_dto() ::
  [ {'entry_time', datetime() }
  | {'recv_time', datetime() }
  | {'block_number', integer() }
  | {'vid', integer() }
  | {'id', binary() }
  | {'symbol', binary() }
  | {'name', binary() }
  | {'decimals', integer() }
  | {'total_supply', openapi_big_integer:openapi_big_integer() }
  | {'trade_volume', binary() }
  | {'trade_volume_usd', binary() }
  | {'untracked_volume_usd', binary() }
  | {'tx_count', openapi_big_integer:openapi_big_integer() }
  | {'total_liquidity', binary() }
  | {'derived_eth', binary() }
  | {'token_symbol', binary() }
  ].


openapi_token_v2_dto() ->
    openapi_token_v2_dto([]).

openapi_token_v2_dto(Fields) ->
  Default = [ {'entry_time', datetime() }
            , {'recv_time', datetime() }
            , {'block_number', integer() }
            , {'vid', integer() }
            , {'id', binary() }
            , {'symbol', binary() }
            , {'name', binary() }
            , {'decimals', integer() }
            , {'total_supply', openapi_big_integer:openapi_big_integer() }
            , {'trade_volume', binary() }
            , {'trade_volume_usd', binary() }
            , {'untracked_volume_usd', binary() }
            , {'tx_count', openapi_big_integer:openapi_big_integer() }
            , {'total_liquidity', binary() }
            , {'derived_eth', binary() }
            , {'token_symbol', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

