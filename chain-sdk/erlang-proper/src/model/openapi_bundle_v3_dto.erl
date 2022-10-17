-module(openapi_bundle_v3_dto).

-include("openapi.hrl").

-export([openapi_bundle_v3_dto/0]).

-export([openapi_bundle_v3_dto/1]).

-export_type([openapi_bundle_v3_dto/0]).

-type openapi_bundle_v3_dto() ::
  [ {'entry_time', datetime() }
  | {'recv_time', datetime() }
  | {'block_number', integer() }
  | {'id', binary() }
  | {'eth_price_usd', binary() }
  | {'vid', integer() }
  ].


openapi_bundle_v3_dto() ->
    openapi_bundle_v3_dto([]).

openapi_bundle_v3_dto(Fields) ->
  Default = [ {'entry_time', datetime() }
            , {'recv_time', datetime() }
            , {'block_number', integer() }
            , {'id', binary() }
            , {'eth_price_usd', binary() }
            , {'vid', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

