# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EMS-RESTAPI.Api.Orders do
  @moduledoc """
  API calls for all endpoints tagged `Orders`.
  """

  alias EMS-RESTAPI.Connection
  import EMS-RESTAPI.RequestBuilder

  @doc """
  Cancel all orders request
  This request cancels all open orders on single specified exchange.

  ### Parameters

  - `connection` (EMS-RESTAPI.Connection): Connection to server
  - `order_cancel_all_request` (OrderCancelAllRequest): OrderCancelAllRequest object.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, EMS-RESTAPI.Model.MessageReject.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec v1_orders_cancel_all_post(Tesla.Env.client, EMS-RESTAPI.Model.OrderCancelAllRequest.t, keyword()) :: {:ok, EMS-RESTAPI.Model.MessageReject.t} | {:ok, EMS-RESTAPI.Model.ValidationError.t} | {:error, Tesla.Env.t}
  def v1_orders_cancel_all_post(connection, order_cancel_all_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/orders/cancel/all")
      |> add_param(:body, :body, order_cancel_all_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %EMS-RESTAPI.Model.MessageReject{}},
      {400, %EMS-RESTAPI.Model.ValidationError{}},
      {490, %EMS-RESTAPI.Model.MessageReject{}}
    ])
  end

  @doc """
  Cancel order request
  Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.

  ### Parameters

  - `connection` (EMS-RESTAPI.Connection): Connection to server
  - `order_cancel_single_request` (OrderCancelSingleRequest): OrderCancelSingleRequest object.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, EMS-RESTAPI.Model.OrderExecutionReport.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec v1_orders_cancel_post(Tesla.Env.client, EMS-RESTAPI.Model.OrderCancelSingleRequest.t, keyword()) :: {:ok, EMS-RESTAPI.Model.OrderExecutionReport.t} | {:ok, EMS-RESTAPI.Model.MessageReject.t} | {:ok, EMS-RESTAPI.Model.ValidationError.t} | {:error, Tesla.Env.t}
  def v1_orders_cancel_post(connection, order_cancel_single_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/orders/cancel")
      |> add_param(:body, :body, order_cancel_single_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %EMS-RESTAPI.Model.OrderExecutionReport{}},
      {400, %EMS-RESTAPI.Model.ValidationError{}},
      {490, %EMS-RESTAPI.Model.MessageReject{}}
    ])
  end

  @doc """
  Get open orders
  Get last execution reports for open orders across all or single exchange.

  ### Parameters

  - `connection` (EMS-RESTAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:exchange_id` (String.t): Filter the open orders to the specific exchange.

  ### Returns

  - `{:ok, [%OrderExecutionReport{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec v1_orders_get(Tesla.Env.client, keyword()) :: {:ok, EMS-RESTAPI.Model.MessageReject.t} | {:ok, list(EMS-RESTAPI.Model.OrderExecutionReport.t)} | {:error, Tesla.Env.t}
  def v1_orders_get(connection, opts \\ []) do
    optional_params = %{
      :exchange_id => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/v1/orders")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%EMS-RESTAPI.Model.OrderExecutionReport{}]},
      {490, %EMS-RESTAPI.Model.MessageReject{}}
    ])
  end

  @doc """
  History of order changes
  Based on the date range, all changes registered in the orderbook.

  ### Parameters

  - `connection` (EMS-RESTAPI.Connection): Connection to server
  - `time_start` (String.t): Start date
  - `time_end` (String.t): End date
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%OrderHistory{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec v1_orders_history_time_start_time_end_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, EMS-RESTAPI.Model.MessageError.t} | {:ok, list(EMS-RESTAPI.Model.OrderHistory.t)} | {:error, Tesla.Env.t}
  def v1_orders_history_time_start_time_end_get(connection, time_start, time_end, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/orders/history/#{time_start}/#{time_end}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%EMS-RESTAPI.Model.OrderHistory{}]},
      {400, %EMS-RESTAPI.Model.MessageError{}}
    ])
  end

  @doc """
  Send new order
  This request creating new order for the specific exchange.

  ### Parameters

  - `connection` (EMS-RESTAPI.Connection): Connection to server
  - `order_new_single_request` (OrderNewSingleRequest): OrderNewSingleRequest object.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, EMS-RESTAPI.Model.OrderExecutionReport.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec v1_orders_post(Tesla.Env.client, EMS-RESTAPI.Model.OrderNewSingleRequest.t, keyword()) :: {:ok, EMS-RESTAPI.Model.OrderExecutionReport.t} | {:ok, EMS-RESTAPI.Model.MessageReject.t} | {:ok, EMS-RESTAPI.Model.ValidationError.t} | {:error, Tesla.Env.t}
  def v1_orders_post(connection, order_new_single_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/orders")
      |> add_param(:body, :body, order_new_single_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %EMS-RESTAPI.Model.OrderExecutionReport{}},
      {400, %EMS-RESTAPI.Model.ValidationError{}},
      {490, %EMS-RESTAPI.Model.MessageReject{}},
      {504, %EMS-RESTAPI.Model.MessageReject{}}
    ])
  end

  @doc """
  Get order execution report
  Get the last order execution report for the specified order. The requested order does not need to be active or opened.

  ### Parameters

  - `connection` (EMS-RESTAPI.Connection): Connection to server
  - `client_order_id` (String.t): The unique identifier of the order assigned by the client.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, EMS-RESTAPI.Model.OrderExecutionReport.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec v1_orders_status_client_order_id_get(Tesla.Env.client, String.t, keyword()) :: {:ok, EMS-RESTAPI.Model.OrderExecutionReport.t} | {:ok, EMS-RESTAPI.Model.MessageReject.t} | {:error, Tesla.Env.t}
  def v1_orders_status_client_order_id_get(connection, client_order_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/orders/status/#{client_order_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %EMS-RESTAPI.Model.OrderExecutionReport{}},
      {404, %EMS-RESTAPI.Model.MessageReject{}}
    ])
  end
end
