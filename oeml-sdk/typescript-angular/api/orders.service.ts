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
/* tslint:disable:no-unused-variable member-ordering */

import { Inject, Injectable, Optional }                      from '@angular/core';
import { HttpClient, HttpHeaders, HttpParams,
         HttpResponse, HttpEvent, HttpParameterCodec }       from '@angular/common/http';
import { CustomHttpParameterCodec }                          from '../encoder';
import { Observable }                                        from 'rxjs';

import { MessageReject } from '../model/models';
import { OrderCancelAllRequest } from '../model/models';
import { OrderCancelSingleRequest } from '../model/models';
import { OrderExecutionReport } from '../model/models';
import { OrderNewSingleRequest } from '../model/models';
import { ValidationError } from '../model/models';

import { BASE_PATH, COLLECTION_FORMATS }                     from '../variables';
import { Configuration }                                     from '../configuration';



@Injectable({
  providedIn: 'root'
})
export class OrdersService {

    protected basePath = 'https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io';
    public defaultHeaders = new HttpHeaders();
    public configuration = new Configuration();
    public encoder: HttpParameterCodec;

    constructor(protected httpClient: HttpClient, @Optional()@Inject(BASE_PATH) basePath: string, @Optional() configuration: Configuration) {
        if (configuration) {
            this.configuration = configuration;
        }
        if (typeof this.configuration.basePath !== 'string') {
            if (typeof basePath !== 'string') {
                basePath = this.basePath;
            }
            this.configuration.basePath = basePath;
        }
        this.encoder = this.configuration.encoder || new CustomHttpParameterCodec();
    }


    private addToHttpParams(httpParams: HttpParams, value: any, key?: string): HttpParams {
        if (typeof value === "object" && value instanceof Date === false) {
            httpParams = this.addToHttpParamsRecursive(httpParams, value);
        } else {
            httpParams = this.addToHttpParamsRecursive(httpParams, value, key);
        }
        return httpParams;
    }

    private addToHttpParamsRecursive(httpParams: HttpParams, value?: any, key?: string): HttpParams {
        if (value == null) {
            return httpParams;
        }

        if (typeof value === "object") {
            if (Array.isArray(value)) {
                (value as any[]).forEach( elem => httpParams = this.addToHttpParamsRecursive(httpParams, elem, key));
            } else if (value instanceof Date) {
                if (key != null) {
                    httpParams = httpParams.append(key,
                        (value as Date).toISOString().substr(0, 10));
                } else {
                   throw Error("key may not be null if value is Date");
                }
            } else {
                Object.keys(value).forEach( k => httpParams = this.addToHttpParamsRecursive(
                    httpParams, value[k], key != null ? `${key}.${k}` : k));
            }
        } else if (key != null) {
            httpParams = httpParams.append(key, value);
        } else {
            throw Error("key may not be null if value is not object or array");
        }
        return httpParams;
    }

    /**
     * Cancel all orders request
     * This request cancels all open orders on single specified exchange.
     * @param orderCancelAllRequest OrderCancelAllRequest object.
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public v1OrdersCancelAllPost(orderCancelAllRequest: OrderCancelAllRequest, observe?: 'body', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json' | 'appliction/json'}): Observable<MessageReject>;
    public v1OrdersCancelAllPost(orderCancelAllRequest: OrderCancelAllRequest, observe?: 'response', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json' | 'appliction/json'}): Observable<HttpResponse<MessageReject>>;
    public v1OrdersCancelAllPost(orderCancelAllRequest: OrderCancelAllRequest, observe?: 'events', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json' | 'appliction/json'}): Observable<HttpEvent<MessageReject>>;
    public v1OrdersCancelAllPost(orderCancelAllRequest: OrderCancelAllRequest, observe: any = 'body', reportProgress: boolean = false, options?: {httpHeaderAccept?: 'application/json' | 'appliction/json'}): Observable<any> {
        if (orderCancelAllRequest === null || orderCancelAllRequest === undefined) {
            throw new Error('Required parameter orderCancelAllRequest was null or undefined when calling v1OrdersCancelAllPost.');
        }

        let localVarHeaders = this.defaultHeaders;

        let localVarHttpHeaderAcceptSelected: string | undefined = options && options.httpHeaderAccept;
        if (localVarHttpHeaderAcceptSelected === undefined) {
            // to determine the Accept header
            const httpHeaderAccepts: string[] = [
                'application/json',
                'appliction/json'
            ];
            localVarHttpHeaderAcceptSelected = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        }
        if (localVarHttpHeaderAcceptSelected !== undefined) {
            localVarHeaders = localVarHeaders.set('Accept', localVarHttpHeaderAcceptSelected);
        }


        // to determine the Content-Type header
        const consumes: string[] = [
            'application/json'
        ];
        const httpContentTypeSelected: string | undefined = this.configuration.selectHeaderContentType(consumes);
        if (httpContentTypeSelected !== undefined) {
            localVarHeaders = localVarHeaders.set('Content-Type', httpContentTypeSelected);
        }

        let responseType_: 'text' | 'json' = 'json';
        if(localVarHttpHeaderAcceptSelected && localVarHttpHeaderAcceptSelected.startsWith('text')) {
            responseType_ = 'text';
        }

        return this.httpClient.post<MessageReject>(`${this.configuration.basePath}/v1/orders/cancel/all`,
            orderCancelAllRequest,
            {
                responseType: <any>responseType_,
                withCredentials: this.configuration.withCredentials,
                localVarHeaders: localVarHeaders,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * Cancel order request
     * Request cancel for an existing order. The order can be canceled using the &#x60;client_order_id&#x60; or &#x60;exchange_order_id&#x60;.
     * @param orderCancelSingleRequest OrderCancelSingleRequest object.
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public v1OrdersCancelPost(orderCancelSingleRequest: OrderCancelSingleRequest, observe?: 'body', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json' | 'appliction/json'}): Observable<OrderExecutionReport>;
    public v1OrdersCancelPost(orderCancelSingleRequest: OrderCancelSingleRequest, observe?: 'response', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json' | 'appliction/json'}): Observable<HttpResponse<OrderExecutionReport>>;
    public v1OrdersCancelPost(orderCancelSingleRequest: OrderCancelSingleRequest, observe?: 'events', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json' | 'appliction/json'}): Observable<HttpEvent<OrderExecutionReport>>;
    public v1OrdersCancelPost(orderCancelSingleRequest: OrderCancelSingleRequest, observe: any = 'body', reportProgress: boolean = false, options?: {httpHeaderAccept?: 'application/json' | 'appliction/json'}): Observable<any> {
        if (orderCancelSingleRequest === null || orderCancelSingleRequest === undefined) {
            throw new Error('Required parameter orderCancelSingleRequest was null or undefined when calling v1OrdersCancelPost.');
        }

        let localVarHeaders = this.defaultHeaders;

        let localVarHttpHeaderAcceptSelected: string | undefined = options && options.httpHeaderAccept;
        if (localVarHttpHeaderAcceptSelected === undefined) {
            // to determine the Accept header
            const httpHeaderAccepts: string[] = [
                'application/json',
                'appliction/json'
            ];
            localVarHttpHeaderAcceptSelected = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        }
        if (localVarHttpHeaderAcceptSelected !== undefined) {
            localVarHeaders = localVarHeaders.set('Accept', localVarHttpHeaderAcceptSelected);
        }


        // to determine the Content-Type header
        const consumes: string[] = [
            'application/json'
        ];
        const httpContentTypeSelected: string | undefined = this.configuration.selectHeaderContentType(consumes);
        if (httpContentTypeSelected !== undefined) {
            localVarHeaders = localVarHeaders.set('Content-Type', httpContentTypeSelected);
        }

        let responseType_: 'text' | 'json' = 'json';
        if(localVarHttpHeaderAcceptSelected && localVarHttpHeaderAcceptSelected.startsWith('text')) {
            responseType_ = 'text';
        }

        return this.httpClient.post<OrderExecutionReport>(`${this.configuration.basePath}/v1/orders/cancel`,
            orderCancelSingleRequest,
            {
                responseType: <any>responseType_,
                withCredentials: this.configuration.withCredentials,
                localVarHeaders: localVarHeaders,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * Get open orders
     * Get last execution reports for open orders across all or single exchange.
     * @param exchangeId Filter the open orders to the specific exchange.
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public v1OrdersGet(exchangeId?: string, observe?: 'body', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json' | 'appliction/json'}): Observable<Array<OrderExecutionReport>>;
    public v1OrdersGet(exchangeId?: string, observe?: 'response', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json' | 'appliction/json'}): Observable<HttpResponse<Array<OrderExecutionReport>>>;
    public v1OrdersGet(exchangeId?: string, observe?: 'events', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json' | 'appliction/json'}): Observable<HttpEvent<Array<OrderExecutionReport>>>;
    public v1OrdersGet(exchangeId?: string, observe: any = 'body', reportProgress: boolean = false, options?: {httpHeaderAccept?: 'application/json' | 'appliction/json'}): Observable<any> {

        let localVarQueryParameters = new HttpParams({encoder: this.encoder});
        if (exchangeId !== undefined && exchangeId !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>exchangeId, 'exchange_id');
        }

        let localVarHeaders = this.defaultHeaders;

        let localVarHttpHeaderAcceptSelected: string | undefined = options && options.httpHeaderAccept;
        if (localVarHttpHeaderAcceptSelected === undefined) {
            // to determine the Accept header
            const httpHeaderAccepts: string[] = [
                'application/json',
                'appliction/json'
            ];
            localVarHttpHeaderAcceptSelected = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        }
        if (localVarHttpHeaderAcceptSelected !== undefined) {
            localVarHeaders = localVarHeaders.set('Accept', localVarHttpHeaderAcceptSelected);
        }


        let responseType_: 'text' | 'json' = 'json';
        if(localVarHttpHeaderAcceptSelected && localVarHttpHeaderAcceptSelected.startsWith('text')) {
            responseType_ = 'text';
        }

        return this.httpClient.get<Array<OrderExecutionReport>>(`${this.configuration.basePath}/v1/orders`,
            {
                params: localVarQueryParameters,
                responseType: <any>responseType_,
                withCredentials: this.configuration.withCredentials,
                localVarHeaders: localVarHeaders,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * Send new order
     * This request creating new order for the specific exchange.
     * @param orderNewSingleRequest OrderNewSingleRequest object.
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public v1OrdersPost(orderNewSingleRequest: OrderNewSingleRequest, observe?: 'body', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json' | 'appliction/json'}): Observable<OrderExecutionReport>;
    public v1OrdersPost(orderNewSingleRequest: OrderNewSingleRequest, observe?: 'response', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json' | 'appliction/json'}): Observable<HttpResponse<OrderExecutionReport>>;
    public v1OrdersPost(orderNewSingleRequest: OrderNewSingleRequest, observe?: 'events', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json' | 'appliction/json'}): Observable<HttpEvent<OrderExecutionReport>>;
    public v1OrdersPost(orderNewSingleRequest: OrderNewSingleRequest, observe: any = 'body', reportProgress: boolean = false, options?: {httpHeaderAccept?: 'application/json' | 'appliction/json'}): Observable<any> {
        if (orderNewSingleRequest === null || orderNewSingleRequest === undefined) {
            throw new Error('Required parameter orderNewSingleRequest was null or undefined when calling v1OrdersPost.');
        }

        let localVarHeaders = this.defaultHeaders;

        let localVarHttpHeaderAcceptSelected: string | undefined = options && options.httpHeaderAccept;
        if (localVarHttpHeaderAcceptSelected === undefined) {
            // to determine the Accept header
            const httpHeaderAccepts: string[] = [
                'application/json',
                'appliction/json'
            ];
            localVarHttpHeaderAcceptSelected = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        }
        if (localVarHttpHeaderAcceptSelected !== undefined) {
            localVarHeaders = localVarHeaders.set('Accept', localVarHttpHeaderAcceptSelected);
        }


        // to determine the Content-Type header
        const consumes: string[] = [
            'application/json'
        ];
        const httpContentTypeSelected: string | undefined = this.configuration.selectHeaderContentType(consumes);
        if (httpContentTypeSelected !== undefined) {
            localVarHeaders = localVarHeaders.set('Content-Type', httpContentTypeSelected);
        }

        let responseType_: 'text' | 'json' = 'json';
        if(localVarHttpHeaderAcceptSelected && localVarHttpHeaderAcceptSelected.startsWith('text')) {
            responseType_ = 'text';
        }

        return this.httpClient.post<OrderExecutionReport>(`${this.configuration.basePath}/v1/orders`,
            orderNewSingleRequest,
            {
                responseType: <any>responseType_,
                withCredentials: this.configuration.withCredentials,
                localVarHeaders: localVarHeaders,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * Get order execution report
     * Get the last order execution report for the specified order. The requested order does not need to be active or opened.
     * @param clientOrderId The unique identifier of the order assigned by the client.
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public v1OrdersStatusClientOrderIdGet(clientOrderId: string, observe?: 'body', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json'}): Observable<OrderExecutionReport>;
    public v1OrdersStatusClientOrderIdGet(clientOrderId: string, observe?: 'response', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json'}): Observable<HttpResponse<OrderExecutionReport>>;
    public v1OrdersStatusClientOrderIdGet(clientOrderId: string, observe?: 'events', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json'}): Observable<HttpEvent<OrderExecutionReport>>;
    public v1OrdersStatusClientOrderIdGet(clientOrderId: string, observe: any = 'body', reportProgress: boolean = false, options?: {httpHeaderAccept?: 'application/json'}): Observable<any> {
        if (clientOrderId === null || clientOrderId === undefined) {
            throw new Error('Required parameter clientOrderId was null or undefined when calling v1OrdersStatusClientOrderIdGet.');
        }

        let localVarHeaders = this.defaultHeaders;

        let localVarHttpHeaderAcceptSelected: string | undefined = options && options.httpHeaderAccept;
        if (localVarHttpHeaderAcceptSelected === undefined) {
            // to determine the Accept header
            const httpHeaderAccepts: string[] = [
                'application/json'
            ];
            localVarHttpHeaderAcceptSelected = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        }
        if (localVarHttpHeaderAcceptSelected !== undefined) {
            localVarHeaders = localVarHeaders.set('Accept', localVarHttpHeaderAcceptSelected);
        }


        let responseType_: 'text' | 'json' = 'json';
        if(localVarHttpHeaderAcceptSelected && localVarHttpHeaderAcceptSelected.startsWith('text')) {
            responseType_ = 'text';
        }

        return this.httpClient.get<OrderExecutionReport>(`${this.configuration.basePath}/v1/orders/status/${encodeURIComponent(String(clientOrderId))}`,
            {
                responseType: <any>responseType_,
                withCredentials: this.configuration.withCredentials,
                localVarHeaders: localVarHeaders,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

}
