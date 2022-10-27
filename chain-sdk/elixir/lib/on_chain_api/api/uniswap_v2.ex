# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OnChainAPI.Api.UniswapV2 do
  @moduledoc """
  API calls for all endpoints tagged `UniswapV2`.
  """

  alias OnChainAPI.Connection
  import OnChainAPI.RequestBuilder

  @doc """

  ### Parameters

  - `connection` (OnChainAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:start_block` (integer()): 
    - `:end_block` (integer()): 
    - `:start_date` (DateTime.t): 
    - `:end_date` (DateTime.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec dapps_uniswapv2_bundles_historical_get(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def dapps_uniswapv2_bundles_historical_get(connection, opts \\ []) do
    optional_params = %{
      :startBlock => :query,
      :endBlock => :query,
      :startDate => :query,
      :endDate => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/dapps/uniswapv2/bundles/historical")
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
  - `opts` (keyword): Optional parameters
    - `:start_block` (integer()): 
    - `:end_block` (integer()): 
    - `:start_date` (DateTime.t): 
    - `:end_date` (DateTime.t): 
    - `:pool_id` (String.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec dapps_uniswapv2_burns_historical_get(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def dapps_uniswapv2_burns_historical_get(connection, opts \\ []) do
    optional_params = %{
      :startBlock => :query,
      :endBlock => :query,
      :startDate => :query,
      :endDate => :query,
      :poolId => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/dapps/uniswapv2/burns/historical")
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
  - `opts` (keyword): Optional parameters
    - `:start_block` (integer()): 
    - `:end_block` (integer()): 
    - `:start_date` (DateTime.t): 
    - `:end_date` (DateTime.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec dapps_uniswapv2_day_data_historical_get(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def dapps_uniswapv2_day_data_historical_get(connection, opts \\ []) do
    optional_params = %{
      :startBlock => :query,
      :endBlock => :query,
      :startDate => :query,
      :endDate => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/dapps/uniswapv2/dayData/historical")
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
  - `opts` (keyword): Optional parameters
    - `:start_block` (integer()): 
    - `:end_block` (integer()): 
    - `:start_date` (DateTime.t): 
    - `:end_date` (DateTime.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec dapps_uniswapv2_factory_historical_get(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def dapps_uniswapv2_factory_historical_get(connection, opts \\ []) do
    optional_params = %{
      :startBlock => :query,
      :endBlock => :query,
      :startDate => :query,
      :endDate => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/dapps/uniswapv2/factory/historical")
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
  - `opts` (keyword): Optional parameters
    - `:start_block` (integer()): 
    - `:end_block` (integer()): 
    - `:start_date` (DateTime.t): 
    - `:end_date` (DateTime.t): 
    - `:pool_id` (String.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec dapps_uniswapv2_liquidity_position_historical_get(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def dapps_uniswapv2_liquidity_position_historical_get(connection, opts \\ []) do
    optional_params = %{
      :startBlock => :query,
      :endBlock => :query,
      :startDate => :query,
      :endDate => :query,
      :poolId => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/dapps/uniswapv2/liquidityPosition/historical")
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
  - `opts` (keyword): Optional parameters
    - `:start_block` (integer()): 
    - `:end_block` (integer()): 
    - `:start_date` (DateTime.t): 
    - `:end_date` (DateTime.t): 
    - `:pool_id` (String.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec dapps_uniswapv2_liquidity_position_snapshots_historical_get(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def dapps_uniswapv2_liquidity_position_snapshots_historical_get(connection, opts \\ []) do
    optional_params = %{
      :startBlock => :query,
      :endBlock => :query,
      :startDate => :query,
      :endDate => :query,
      :poolId => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/dapps/uniswapv2/liquidityPositionSnapshots/historical")
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
  - `opts` (keyword): Optional parameters
    - `:start_block` (integer()): 
    - `:end_block` (integer()): 
    - `:start_date` (DateTime.t): 
    - `:end_date` (DateTime.t): 
    - `:pool_id` (String.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec dapps_uniswapv2_mints_historical_get(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def dapps_uniswapv2_mints_historical_get(connection, opts \\ []) do
    optional_params = %{
      :startBlock => :query,
      :endBlock => :query,
      :startDate => :query,
      :endDate => :query,
      :poolId => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/dapps/uniswapv2/mints/historical")
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
  - `opts` (keyword): Optional parameters
    - `:start_block` (integer()): 
    - `:end_block` (integer()): 
    - `:start_date` (DateTime.t): 
    - `:end_date` (DateTime.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec dapps_uniswapv2_poi_historical_get(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def dapps_uniswapv2_poi_historical_get(connection, opts \\ []) do
    optional_params = %{
      :startBlock => :query,
      :endBlock => :query,
      :startDate => :query,
      :endDate => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/dapps/uniswapv2/poi/historical")
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
  - `opts` (keyword): Optional parameters
    - `:start_block` (integer()): 
    - `:end_block` (integer()): 
    - `:start_date` (DateTime.t): 
    - `:end_date` (DateTime.t): 
    - `:pool_id` (String.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec dapps_uniswapv2_pool_day_data_historical_get(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def dapps_uniswapv2_pool_day_data_historical_get(connection, opts \\ []) do
    optional_params = %{
      :startBlock => :query,
      :endBlock => :query,
      :startDate => :query,
      :endDate => :query,
      :poolId => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/dapps/uniswapv2/poolDayData/historical")
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
  - `opts` (keyword): Optional parameters
    - `:start_block` (integer()): 
    - `:end_block` (integer()): 
    - `:start_date` (DateTime.t): 
    - `:end_date` (DateTime.t): 
    - `:pool_id` (String.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec dapps_uniswapv2_pool_hour_data_historical_get(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def dapps_uniswapv2_pool_hour_data_historical_get(connection, opts \\ []) do
    optional_params = %{
      :startBlock => :query,
      :endBlock => :query,
      :startDate => :query,
      :endDate => :query,
      :poolId => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/dapps/uniswapv2/poolHourData/historical")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """
  GetPools

  ### Parameters

  - `connection` (OnChainAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:filter_pool_id` (String.t): Filter pool id

  ### Returns

  - `{:ok, [%PairV2Dto{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec dapps_uniswapv2_pools_current_get(Tesla.Env.client, keyword()) :: {:ok, list(OnChainAPI.Model.PairV2Dto.t)} | {:error, Tesla.Env.t}
  def dapps_uniswapv2_pools_current_get(connection, opts \\ []) do
    optional_params = %{
      :filter_pool_id => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/dapps/uniswapv2/pools/current")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%OnChainAPI.Model.PairV2Dto{}]}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (OnChainAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:start_block` (integer()): 
    - `:end_block` (integer()): 
    - `:start_date` (DateTime.t): 
    - `:end_date` (DateTime.t): 
    - `:pool_id` (String.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec dapps_uniswapv2_pools_historical_get(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def dapps_uniswapv2_pools_historical_get(connection, opts \\ []) do
    optional_params = %{
      :startBlock => :query,
      :endBlock => :query,
      :startDate => :query,
      :endDate => :query,
      :poolId => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/dapps/uniswapv2/pools/historical")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """
  GetSwaps

  ### Parameters

  - `connection` (OnChainAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%SwapV2Dto{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec dapps_uniswapv2_swaps_current_get(Tesla.Env.client, keyword()) :: {:ok, list(OnChainAPI.Model.SwapV2Dto.t)} | {:error, Tesla.Env.t}
  def dapps_uniswapv2_swaps_current_get(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/dapps/uniswapv2/swaps/current")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%OnChainAPI.Model.SwapV2Dto{}]}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (OnChainAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:start_block` (integer()): 
    - `:end_block` (integer()): 
    - `:start_date` (DateTime.t): 
    - `:end_date` (DateTime.t): 
    - `:pool_id` (String.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec dapps_uniswapv2_swaps_historical_get(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def dapps_uniswapv2_swaps_historical_get(connection, opts \\ []) do
    optional_params = %{
      :startBlock => :query,
      :endBlock => :query,
      :startDate => :query,
      :endDate => :query,
      :poolId => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/dapps/uniswapv2/swaps/historical")
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
  - `opts` (keyword): Optional parameters
    - `:start_block` (integer()): 
    - `:end_block` (integer()): 
    - `:start_date` (DateTime.t): 
    - `:end_date` (DateTime.t): 
    - `:token_id` (String.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec dapps_uniswapv2_token_day_data_historical_get(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def dapps_uniswapv2_token_day_data_historical_get(connection, opts \\ []) do
    optional_params = %{
      :startBlock => :query,
      :endBlock => :query,
      :startDate => :query,
      :endDate => :query,
      :tokenId => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/dapps/uniswapv2/tokenDayData/historical")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """
  GetTokens

  ### Parameters

  - `connection` (OnChainAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%TokenV2Dto{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec dapps_uniswapv2_tokens_current_get(Tesla.Env.client, keyword()) :: {:ok, list(OnChainAPI.Model.TokenV2Dto.t)} | {:error, Tesla.Env.t}
  def dapps_uniswapv2_tokens_current_get(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/dapps/uniswapv2/tokens/current")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%OnChainAPI.Model.TokenV2Dto{}]}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (OnChainAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:start_block` (integer()): 
    - `:end_block` (integer()): 
    - `:start_date` (DateTime.t): 
    - `:end_date` (DateTime.t): 
    - `:token_id` (String.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec dapps_uniswapv2_tokens_historical_get(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def dapps_uniswapv2_tokens_historical_get(connection, opts \\ []) do
    optional_params = %{
      :startBlock => :query,
      :endBlock => :query,
      :startDate => :query,
      :endDate => :query,
      :tokenId => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/dapps/uniswapv2/tokens/historical")
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
  - `opts` (keyword): Optional parameters
    - `:start_block` (integer()): 
    - `:end_block` (integer()): 
    - `:start_date` (DateTime.t): 
    - `:end_date` (DateTime.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec dapps_uniswapv2_transactions_historical_get(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def dapps_uniswapv2_transactions_historical_get(connection, opts \\ []) do
    optional_params = %{
      :startBlock => :query,
      :endBlock => :query,
      :startDate => :query,
      :endDate => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/dapps/uniswapv2/transactions/historical")
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
  - `opts` (keyword): Optional parameters
    - `:start_block` (integer()): 
    - `:end_block` (integer()): 
    - `:start_date` (DateTime.t): 
    - `:end_date` (DateTime.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec dapps_uniswapv2_users_historical_get(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def dapps_uniswapv2_users_historical_get(connection, opts \\ []) do
    optional_params = %{
      :startBlock => :query,
      :endBlock => :query,
      :startDate => :query,
      :endDate => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/dapps/uniswapv2/users/historical")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end
end
