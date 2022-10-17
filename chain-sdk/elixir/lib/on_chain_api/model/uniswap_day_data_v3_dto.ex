# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OnChainAPI.Model.UniswapDayDataV3Dto do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :entry_time,
    :recv_time,
    :block_number,
    :vid,
    :id,
    :date,
    :volume_eth,
    :volume_usd,
    :volume_usd_untracked,
    :fees_usd,
    :tx_count,
    :tvl_usd
  ]

  @type t :: %__MODULE__{
    :entry_time => DateTime.t | nil,
    :recv_time => DateTime.t | nil,
    :block_number => integer() | nil,
    :vid => integer() | nil,
    :id => String.t | nil,
    :date => integer() | nil,
    :volume_eth => String.t | nil,
    :volume_usd => String.t | nil,
    :volume_usd_untracked => String.t | nil,
    :fees_usd => String.t | nil,
    :tx_count => OnChainAPI.Model.BigInteger.t | nil,
    :tvl_usd => String.t | nil
  }
end

defimpl Poison.Decoder, for: OnChainAPI.Model.UniswapDayDataV3Dto do
  import OnChainAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:tx_count, :struct, OnChainAPI.Model.BigInteger, options)
  end
end

