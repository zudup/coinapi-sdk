# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OnChainAPI.Model.BundleV3Dto do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :entry_time,
    :recv_time,
    :block_number,
    :id,
    :eth_price_usd,
    :vid
  ]

  @type t :: %__MODULE__{
    :entry_time => DateTime.t | nil,
    :recv_time => DateTime.t | nil,
    :block_number => integer() | nil,
    :id => String.t | nil,
    :eth_price_usd => String.t | nil,
    :vid => integer() | nil
  }
end

defimpl Poison.Decoder, for: OnChainAPI.Model.BundleV3Dto do
  def decode(value, _options) do
    value
  end
end

