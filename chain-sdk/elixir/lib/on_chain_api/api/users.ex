# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OnChainAPI.Api.Users do
  @moduledoc """
  API calls for all endpoints tagged `Users`.
  """

  alias OnChainAPI.Connection
  import OnChainAPI.RequestBuilder

  @doc """

  ### Parameters

  - `connection` (OnChainAPI.Connection): Connection to server
  - `chain_id` (String.t): 
  - `opts` (keyword): Optional parameters
    - `:start_block` (integer()): 
    - `:end_block` (integer()): 
    - `:start_date` (DateTime.t): 
    - `:end_date` (DateTime.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec chains_chain_id_dapps_cow_users_historical_get(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def chains_chain_id_dapps_cow_users_historical_get(connection, chain_id, opts \\ []) do
    optional_params = %{
      :startBlock => :query,
      :endBlock => :query,
      :startDate => :query,
      :endDate => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/chains/#{chain_id}/dapps/cow/users/historical")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (OnChainAPI.Connection): Connection to server
  - `chain_id` (String.t): 
  - `opts` (keyword): Optional parameters
    - `:start_block` (integer()): 
    - `:end_block` (integer()): 
    - `:start_date` (DateTime.t): 
    - `:end_date` (DateTime.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec chains_chain_id_dapps_sushiswap_users_historical_get(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def chains_chain_id_dapps_sushiswap_users_historical_get(connection, chain_id, opts \\ []) do
    optional_params = %{
      :startBlock => :query,
      :endBlock => :query,
      :startDate => :query,
      :endDate => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/chains/#{chain_id}/dapps/sushiswap/users/historical")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (OnChainAPI.Connection): Connection to server
  - `chain_id` (String.t): 
  - `opts` (keyword): Optional parameters
    - `:start_block` (integer()): 
    - `:end_block` (integer()): 
    - `:start_date` (DateTime.t): 
    - `:end_date` (DateTime.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec chains_chain_id_dapps_uniswapv2_users_historical_get(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def chains_chain_id_dapps_uniswapv2_users_historical_get(connection, chain_id, opts \\ []) do
    optional_params = %{
      :startBlock => :query,
      :endBlock => :query,
      :startDate => :query,
      :endDate => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/chains/#{chain_id}/dapps/uniswapv2/users/historical")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end
end
