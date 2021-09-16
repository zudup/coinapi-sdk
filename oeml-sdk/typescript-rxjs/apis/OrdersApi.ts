// tslint:disable
/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { Observable } from 'rxjs';
import { BaseAPI, HttpHeaders, HttpQuery, throwIfNullOrUndefined, encodeURI, OperationOpts, RawAjaxResponse } from '../runtime';
import {
    MessageReject,
    OrderCancelAllRequest,
    OrderCancelSingleRequest,
    OrderExecutionReport,
    OrderNewSingleRequest,
    ValidationError,
} from '../models';

export interface V1OrdersCancelAllPostRequest {
    orderCancelAllRequest: OrderCancelAllRequest;
}

export interface V1OrdersCancelPostRequest {
    orderCancelSingleRequest: OrderCancelSingleRequest;
}

export interface V1OrdersGetRequest {
    exchangeId?: string;
}

export interface V1OrdersPostRequest {
    orderNewSingleRequest: OrderNewSingleRequest;
}

export interface V1OrdersStatusClientOrderIdGetRequest {
    clientOrderId: string;
}

/**
 * no description
 */
export class OrdersApi extends BaseAPI {

    /**
     * This request cancels all open orders on single specified exchange.
     * Cancel all orders request
     */
    v1OrdersCancelAllPost({ orderCancelAllRequest }: V1OrdersCancelAllPostRequest): Observable<MessageReject>
    v1OrdersCancelAllPost({ orderCancelAllRequest }: V1OrdersCancelAllPostRequest, opts?: OperationOpts): Observable<RawAjaxResponse<MessageReject>>
    v1OrdersCancelAllPost({ orderCancelAllRequest }: V1OrdersCancelAllPostRequest, opts?: OperationOpts): Observable<MessageReject | RawAjaxResponse<MessageReject>> {
        throwIfNullOrUndefined(orderCancelAllRequest, 'orderCancelAllRequest', 'v1OrdersCancelAllPost');

        const headers: HttpHeaders = {
            'Content-Type': 'application/json',
        };

        return this.request<MessageReject>({
            url: '/v1/orders/cancel/all',
            method: 'POST',
            headers,
            body: orderCancelAllRequest,
        }, opts?.responseOpts);
    };

    /**
     * Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.
     * Cancel order request
     */
    v1OrdersCancelPost({ orderCancelSingleRequest }: V1OrdersCancelPostRequest): Observable<OrderExecutionReport>
    v1OrdersCancelPost({ orderCancelSingleRequest }: V1OrdersCancelPostRequest, opts?: OperationOpts): Observable<RawAjaxResponse<OrderExecutionReport>>
    v1OrdersCancelPost({ orderCancelSingleRequest }: V1OrdersCancelPostRequest, opts?: OperationOpts): Observable<OrderExecutionReport | RawAjaxResponse<OrderExecutionReport>> {
        throwIfNullOrUndefined(orderCancelSingleRequest, 'orderCancelSingleRequest', 'v1OrdersCancelPost');

        const headers: HttpHeaders = {
            'Content-Type': 'application/json',
        };

        return this.request<OrderExecutionReport>({
            url: '/v1/orders/cancel',
            method: 'POST',
            headers,
            body: orderCancelSingleRequest,
        }, opts?.responseOpts);
    };

    /**
     * Get last execution reports for open orders across all or single exchange.
     * Get open orders
     */
    v1OrdersGet({ exchangeId }: V1OrdersGetRequest): Observable<Array<OrderExecutionReport>>
    v1OrdersGet({ exchangeId }: V1OrdersGetRequest, opts?: OperationOpts): Observable<RawAjaxResponse<Array<OrderExecutionReport>>>
    v1OrdersGet({ exchangeId }: V1OrdersGetRequest, opts?: OperationOpts): Observable<Array<OrderExecutionReport> | RawAjaxResponse<Array<OrderExecutionReport>>> {

        const query: HttpQuery = {};

        if (exchangeId != null) { query['exchange_id'] = exchangeId; }

        return this.request<Array<OrderExecutionReport>>({
            url: '/v1/orders',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     * This request creating new order for the specific exchange.
     * Send new order
     */
    v1OrdersPost({ orderNewSingleRequest }: V1OrdersPostRequest): Observable<OrderExecutionReport>
    v1OrdersPost({ orderNewSingleRequest }: V1OrdersPostRequest, opts?: OperationOpts): Observable<RawAjaxResponse<OrderExecutionReport>>
    v1OrdersPost({ orderNewSingleRequest }: V1OrdersPostRequest, opts?: OperationOpts): Observable<OrderExecutionReport | RawAjaxResponse<OrderExecutionReport>> {
        throwIfNullOrUndefined(orderNewSingleRequest, 'orderNewSingleRequest', 'v1OrdersPost');

        const headers: HttpHeaders = {
            'Content-Type': 'application/json',
        };

        return this.request<OrderExecutionReport>({
            url: '/v1/orders',
            method: 'POST',
            headers,
            body: orderNewSingleRequest,
        }, opts?.responseOpts);
    };

    /**
     * Get the last order execution report for the specified order. The requested order does not need to be active or opened.
     * Get order execution report
     */
    v1OrdersStatusClientOrderIdGet({ clientOrderId }: V1OrdersStatusClientOrderIdGetRequest): Observable<OrderExecutionReport>
    v1OrdersStatusClientOrderIdGet({ clientOrderId }: V1OrdersStatusClientOrderIdGetRequest, opts?: OperationOpts): Observable<RawAjaxResponse<OrderExecutionReport>>
    v1OrdersStatusClientOrderIdGet({ clientOrderId }: V1OrdersStatusClientOrderIdGetRequest, opts?: OperationOpts): Observable<OrderExecutionReport | RawAjaxResponse<OrderExecutionReport>> {
        throwIfNullOrUndefined(clientOrderId, 'clientOrderId', 'v1OrdersStatusClientOrderIdGet');

        return this.request<OrderExecutionReport>({
            url: '/v1/orders/status/{client_order_id}'.replace('{client_order_id}', encodeURI(clientOrderId)),
            method: 'GET',
        }, opts?.responseOpts);
    };

}
