# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EMS-RESTAPI.Model.BalanceDataInner do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :asset_id_exchange,
    :asset_id_coinapi,
    :balance,
    :available,
    :locked,
    :last_updated_by,
    :rate_usd,
    :traded
  ]

  @type t :: %__MODULE__{
    :asset_id_exchange => String.t | nil,
    :asset_id_coinapi => String.t | nil,
    :balance => float() | nil,
    :available => float() | nil,
    :locked => float() | nil,
    :last_updated_by => String.t | nil,
    :rate_usd => float() | nil,
    :traded => float() | nil
  }
end

defimpl Poison.Decoder, for: EMS-RESTAPI.Model.BalanceDataInner do
  def decode(value, _options) do
    value
  end
end

