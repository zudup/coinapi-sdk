# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OnChain-RESTAPI.Model.SushiswapUserDto do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :entry_time,
    :recv_time,
    :block_number,
    :id,
    :vid
  ]

  @type t :: %__MODULE__{
    :entry_time => DateTime.t | nil,
    :recv_time => DateTime.t | nil,
    :block_number => integer() | nil,
    :id => String.t | nil,
    :vid => integer() | nil
  }
end

defimpl Poison.Decoder, for: OnChain-RESTAPI.Model.SushiswapUserDto do
  def decode(value, _options) do
    value
  end
end
