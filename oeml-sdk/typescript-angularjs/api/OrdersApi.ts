/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import * as models from '../model/models';

/* tslint:disable:no-unused-variable member-ordering */

export class OrdersApi {
    protected basePath = 'http://localhost:8080';
    public defaultHeaders : any = {};

    static $inject: string[] = ['$http', '$httpParamSerializer', 'basePath'];

    constructor(protected $http: ng.IHttpService, protected $httpParamSerializer?: (d: any) => any, basePath?: string) {
        if (basePath !== undefined) {
            this.basePath = basePath;
        }
    }

    /**
     * This request cancels all open orders on single specified exchange.
     * @summary Cancel all orders request
     * @param orderCancelAllRequest OrderCancelAllRequest object.
     */
    public v1OrdersCancelAllPost (orderCancelAllRequest: models.OrderCancelAllRequest, extraHttpRequestParams?: any ) : ng.IHttpPromise<models.Message> {
        const localVarPath = this.basePath + '/v1/orders/cancel/all';

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'orderCancelAllRequest' is not null or undefined
        if (orderCancelAllRequest === null || orderCancelAllRequest === undefined) {
            throw new Error('Required parameter orderCancelAllRequest was null or undefined when calling v1OrdersCancelAllPost.');
        }

        let httpRequestParams: ng.IRequestConfig = {
            method: 'POST',
            url: localVarPath,
            data: orderCancelAllRequest,
            params: queryParameters,
            headers: headerParams
        };

        if (extraHttpRequestParams) {
            httpRequestParams = (<any>Object).assign(httpRequestParams, extraHttpRequestParams);
        }

        return this.$http(httpRequestParams);
    }
    /**
     * Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.
     * @summary Cancel order request
     * @param orderCancelSingleRequest OrderCancelSingleRequest object.
     */
    public v1OrdersCancelPost (orderCancelSingleRequest: models.OrderCancelSingleRequest, extraHttpRequestParams?: any ) : ng.IHttpPromise<models.OrderExecutionReport> {
        const localVarPath = this.basePath + '/v1/orders/cancel';

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'orderCancelSingleRequest' is not null or undefined
        if (orderCancelSingleRequest === null || orderCancelSingleRequest === undefined) {
            throw new Error('Required parameter orderCancelSingleRequest was null or undefined when calling v1OrdersCancelPost.');
        }

        let httpRequestParams: ng.IRequestConfig = {
            method: 'POST',
            url: localVarPath,
            data: orderCancelSingleRequest,
            params: queryParameters,
            headers: headerParams
        };

        if (extraHttpRequestParams) {
            httpRequestParams = (<any>Object).assign(httpRequestParams, extraHttpRequestParams);
        }

        return this.$http(httpRequestParams);
    }
    /**
     * Get last execution reports for open orders across all or single exchange.
     * @summary Get open orders
     * @param exchangeId Filter the open orders to the specific exchange.
     */
    public v1OrdersGet (exchangeId?: string, extraHttpRequestParams?: any ) : ng.IHttpPromise<Array<models.OrderExecutionReport>> {
        const localVarPath = this.basePath + '/v1/orders';

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        if (exchangeId !== undefined) {
            queryParameters['exchange_id'] = exchangeId;
        }

        let httpRequestParams: ng.IRequestConfig = {
            method: 'GET',
            url: localVarPath,
            params: queryParameters,
            headers: headerParams
        };

        if (extraHttpRequestParams) {
            httpRequestParams = (<any>Object).assign(httpRequestParams, extraHttpRequestParams);
        }

        return this.$http(httpRequestParams);
    }
    /**
     * This request creating new order for the specific exchange.
     * @summary Send new order
     * @param orderNewSingleRequest OrderNewSingleRequest object.
     */
    public v1OrdersPost (orderNewSingleRequest: models.OrderNewSingleRequest, extraHttpRequestParams?: any ) : ng.IHttpPromise<models.OrderExecutionReport> {
        const localVarPath = this.basePath + '/v1/orders';

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'orderNewSingleRequest' is not null or undefined
        if (orderNewSingleRequest === null || orderNewSingleRequest === undefined) {
            throw new Error('Required parameter orderNewSingleRequest was null or undefined when calling v1OrdersPost.');
        }

        let httpRequestParams: ng.IRequestConfig = {
            method: 'POST',
            url: localVarPath,
            data: orderNewSingleRequest,
            params: queryParameters,
            headers: headerParams
        };

        if (extraHttpRequestParams) {
            httpRequestParams = (<any>Object).assign(httpRequestParams, extraHttpRequestParams);
        }

        return this.$http(httpRequestParams);
    }
    /**
     * Get the last order execution report for the specified order. The requested order does not need to be active or opened.
     * @summary Get order execution report
     * @param clientOrderId The unique identifier of the order assigned by the client.
     */
    public v1OrdersStatusClientOrderIdGet (clientOrderId: string, extraHttpRequestParams?: any ) : ng.IHttpPromise<models.OrderExecutionReport> {
        const localVarPath = this.basePath + '/v1/orders/status/{client_order_id}'
            .replace('{' + 'client_order_id' + '}', encodeURIComponent(String(clientOrderId)));

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'clientOrderId' is not null or undefined
        if (clientOrderId === null || clientOrderId === undefined) {
            throw new Error('Required parameter clientOrderId was null or undefined when calling v1OrdersStatusClientOrderIdGet.');
        }

        let httpRequestParams: ng.IRequestConfig = {
            method: 'GET',
            url: localVarPath,
            params: queryParameters,
            headers: headerParams
        };

        if (extraHttpRequestParams) {
            httpRequestParams = (<any>Object).assign(httpRequestParams, extraHttpRequestParams);
        }

        return this.$http(httpRequestParams);
    }
}