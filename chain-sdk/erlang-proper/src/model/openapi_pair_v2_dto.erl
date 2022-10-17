-module(openapi_pair_v2_dto).

-include("openapi.hrl").

-export([openapi_pair_v2_dto/0]).

-export([openapi_pair_v2_dto/1]).

-export_type([openapi_pair_v2_dto/0]).

-type openapi_pair_v2_dto() ::
  [ {'entry_time', datetime() }
  | {'recv_time', datetime() }
  | {'block_number', integer() }
  | {'vid', integer() }
  | {'id', binary() }
  | {'token_0', binary() }
  | {'token_1', binary() }
  | {'reserve_0', binary() }
  | {'reserve_1', binary() }
  | {'total_supply', binary() }
  | {'reserve_eth', binary() }
  | {'reserve_usd', binary() }
  | {'tracked_reserve_eth', binary() }
  | {'token_0_price', binary() }
  | {'token_1_price', binary() }
  | {'volume_token_0', binary() }
  | {'volume_token_1', binary() }
  | {'volume_usd', binary() }
  | {'untracked_volume_usd', binary() }
  | {'tx_count', openapi_big_integer:openapi_big_integer() }
  | {'created_at_timestamp', datetime() }
  | {'liquidity_provider_count', binary() }
  | {'evaluated_ask', float() }
  ].


openapi_pair_v2_dto() ->
    openapi_pair_v2_dto([]).

openapi_pair_v2_dto(Fields) ->
  Default = [ {'entry_time', datetime() }
            , {'recv_time', datetime() }
            , {'block_number', integer() }
            , {'vid', integer() }
            , {'id', binary() }
            , {'token_0', binary() }
            , {'token_1', binary() }
            , {'reserve_0', binary() }
            , {'reserve_1', binary() }
            , {'total_supply', binary() }
            , {'reserve_eth', binary() }
            , {'reserve_usd', binary() }
            , {'tracked_reserve_eth', binary() }
            , {'token_0_price', binary() }
            , {'token_1_price', binary() }
            , {'volume_token_0', binary() }
            , {'volume_token_1', binary() }
            , {'volume_usd', binary() }
            , {'untracked_volume_usd', binary() }
            , {'tx_count', openapi_big_integer:openapi_big_integer() }
            , {'created_at_timestamp', datetime() }
            , {'liquidity_provider_count', binary() }
            , {'evaluated_ask', float() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

