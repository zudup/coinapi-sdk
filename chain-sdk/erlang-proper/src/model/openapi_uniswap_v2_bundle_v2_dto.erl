-module(openapi_uniswap_v2_bundle_v2_dto).

-include("openapi.hrl").

-export([openapi_uniswap_v2_bundle_v2_dto/0]).

-export([openapi_uniswap_v2_bundle_v2_dto/1]).

-export_type([openapi_uniswap_v2_bundle_v2_dto/0]).

-type openapi_uniswap_v2_bundle_v2_dto() ::
  [ {'entry_time', datetime() }
  | {'recv_time', datetime() }
  | {'block_number', integer() }
  | {'id', binary() }
  | {'eth_price', binary() }
  | {'vid', integer() }
  | {'block_range', binary() }
  ].


openapi_uniswap_v2_bundle_v2_dto() ->
    openapi_uniswap_v2_bundle_v2_dto([]).

openapi_uniswap_v2_bundle_v2_dto(Fields) ->
  Default = [ {'entry_time', datetime() }
            , {'recv_time', datetime() }
            , {'block_number', integer() }
            , {'id', binary() }
            , {'eth_price', binary() }
            , {'vid', integer() }
            , {'block_range', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).
