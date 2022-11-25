# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OnChainDapps-RESTAPI.Model.DexBatchDto do
  @moduledoc """
  Batch executed. Every batch will contain at least solution with the a set of trades that are executed in it
  """

  @derive [Poison.Encoder]
  defstruct [
    :entry_time,
    :recv_time,
    :block_number,
    :id,
    :start_epoch,
    :end_epoch,
    :solution,
    :first_solution_epoch,
    :last_revert_epoch,
    :tx_hash,
    :vid
  ]

  @type t :: %__MODULE__{
    :entry_time => DateTime.t | nil,
    :recv_time => DateTime.t | nil,
    :block_number => integer() | nil,
    :id => String.t | nil,
    :start_epoch => String.t | nil,
    :end_epoch => String.t | nil,
    :solution => String.t | nil,
    :first_solution_epoch => String.t | nil,
    :last_revert_epoch => String.t | nil,
    :tx_hash => String.t | nil,
    :vid => integer() | nil
  }
end

defimpl Poison.Decoder, for: OnChainDapps-RESTAPI.Model.DexBatchDto do
  def decode(value, _options) do
    value
  end
end
