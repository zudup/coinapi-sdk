# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OnChainAPI.Model.PairV2Dto do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :entry_time,
    :recv_time,
    :block_number,
    :vid,
    :id,
    :token_0,
    :token_1,
    :reserve_0,
    :reserve_1,
    :total_supply,
    :reserve_eth,
    :reserve_usd,
    :tracked_reserve_eth,
    :token_0_price,
    :token_1_price,
    :volume_token_0,
    :volume_token_1,
    :volume_usd,
    :untracked_volume_usd,
    :tx_count,
    :created_at_timestamp,
    :liquidity_provider_count,
    :evaluated_ask
  ]

  @type t :: %__MODULE__{
    :entry_time => DateTime.t | nil,
    :recv_time => DateTime.t | nil,
    :block_number => integer() | nil,
    :vid => integer() | nil,
    :id => String.t | nil,
    :token_0 => String.t | nil,
    :token_1 => String.t | nil,
    :reserve_0 => String.t | nil,
    :reserve_1 => String.t | nil,
    :total_supply => String.t | nil,
    :reserve_eth => String.t | nil,
    :reserve_usd => String.t | nil,
    :tracked_reserve_eth => String.t | nil,
    :token_0_price => String.t | nil,
    :token_1_price => String.t | nil,
    :volume_token_0 => String.t | nil,
    :volume_token_1 => String.t | nil,
    :volume_usd => String.t | nil,
    :untracked_volume_usd => String.t | nil,
    :tx_count => OnChainAPI.Model.BigInteger.t | nil,
    :created_at_timestamp => DateTime.t | nil,
    :liquidity_provider_count => String.t | nil,
    :evaluated_ask => float() | nil
  }
end

defimpl Poison.Decoder, for: OnChainAPI.Model.PairV2Dto do
  import OnChainAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:tx_count, :struct, OnChainAPI.Model.BigInteger, options)
  end
end
