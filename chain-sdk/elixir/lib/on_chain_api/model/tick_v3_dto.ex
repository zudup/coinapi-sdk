# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OnChainAPI.Model.TickV3Dto do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :entry_time,
    :recv_time,
    :block_number,
    :vid,
    :id,
    :pool_address,
    :tick_idx,
    :pool,
    :liquidity_gross,
    :liquidity_net,
    :price_0,
    :price_1,
    :volume_token_0,
    :volume_token_1,
    :volume_usd,
    :untracked_volume_usd,
    :fees_usd,
    :collected_fees_token_0,
    :collected_fees_token_1,
    :collected_fees_usd,
    :created_at_timestamp,
    :liquidity_provider_count,
    :fee_growth_outside_0x128,
    :fee_growth_outside_1x128
  ]

  @type t :: %__MODULE__{
    :entry_time => DateTime.t | nil,
    :recv_time => DateTime.t | nil,
    :block_number => integer() | nil,
    :vid => integer() | nil,
    :id => String.t | nil,
    :pool_address => String.t | nil,
    :tick_idx => OnChainAPI.Model.BigInteger.t | nil,
    :pool => String.t | nil,
    :liquidity_gross => OnChainAPI.Model.BigInteger.t | nil,
    :liquidity_net => OnChainAPI.Model.BigInteger.t | nil,
    :price_0 => String.t | nil,
    :price_1 => String.t | nil,
    :volume_token_0 => String.t | nil,
    :volume_token_1 => String.t | nil,
    :volume_usd => String.t | nil,
    :untracked_volume_usd => String.t | nil,
    :fees_usd => String.t | nil,
    :collected_fees_token_0 => String.t | nil,
    :collected_fees_token_1 => String.t | nil,
    :collected_fees_usd => String.t | nil,
    :created_at_timestamp => DateTime.t | nil,
    :liquidity_provider_count => OnChainAPI.Model.BigInteger.t | nil,
    :fee_growth_outside_0x128 => OnChainAPI.Model.BigInteger.t | nil,
    :fee_growth_outside_1x128 => OnChainAPI.Model.BigInteger.t | nil
  }
end

defimpl Poison.Decoder, for: OnChainAPI.Model.TickV3Dto do
  import OnChainAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:tick_idx, :struct, OnChainAPI.Model.BigInteger, options)
    |> deserialize(:liquidity_gross, :struct, OnChainAPI.Model.BigInteger, options)
    |> deserialize(:liquidity_net, :struct, OnChainAPI.Model.BigInteger, options)
    |> deserialize(:liquidity_provider_count, :struct, OnChainAPI.Model.BigInteger, options)
    |> deserialize(:fee_growth_outside_0x128, :struct, OnChainAPI.Model.BigInteger, options)
    |> deserialize(:fee_growth_outside_1x128, :struct, OnChainAPI.Model.BigInteger, options)
  end
end

