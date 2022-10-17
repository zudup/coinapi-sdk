-module(openapi_factory_v3_dto).

-include("openapi.hrl").

-export([openapi_factory_v3_dto/0]).

-export([openapi_factory_v3_dto/1]).

-export_type([openapi_factory_v3_dto/0]).

-type openapi_factory_v3_dto() ::
  [ {'entry_time', datetime() }
  | {'recv_time', datetime() }
  | {'block_number', integer() }
  | {'id', binary() }
  | {'pool_count', binary() }
  | {'tx_count', binary() }
  | {'total_volume_usd', binary() }
  | {'total_volume_eth', binary() }
  | {'total_fees_usd', binary() }
  | {'total_fees_eth', binary() }
  | {'untracked_volume_usd', binary() }
  | {'total_value_locked_usd', binary() }
  | {'total_value_locked_eth', binary() }
  | {'total_value_locked_usd_untracked', binary() }
  | {'total_value_locked_eth_untracked', binary() }
  | {'owner', binary() }
  | {'vid', integer() }
  ].


openapi_factory_v3_dto() ->
    openapi_factory_v3_dto([]).

openapi_factory_v3_dto(Fields) ->
  Default = [ {'entry_time', datetime() }
            , {'recv_time', datetime() }
            , {'block_number', integer() }
            , {'id', binary() }
            , {'pool_count', binary() }
            , {'tx_count', binary() }
            , {'total_volume_usd', binary() }
            , {'total_volume_eth', binary() }
            , {'total_fees_usd', binary() }
            , {'total_fees_eth', binary() }
            , {'untracked_volume_usd', binary() }
            , {'total_value_locked_usd', binary() }
            , {'total_value_locked_eth', binary() }
            , {'total_value_locked_usd_untracked', binary() }
            , {'total_value_locked_eth_untracked', binary() }
            , {'owner', binary() }
            , {'vid', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

