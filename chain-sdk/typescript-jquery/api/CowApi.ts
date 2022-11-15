/**
 * OnChain API
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


import * as $ from 'jquery';
import * as models from '../model/models';
import { COLLECTION_FORMATS } from '../variables';
import { Configuration } from '../configuration';

/* tslint:disable:no-unused-variable member-ordering */


export class CowApi {
    protected basePath = 'https://onchain.coinapi.io';
    public defaultHeaders: Array<string> = [];
    public defaultExtraJQueryAjaxSettings?: JQueryAjaxSettings = undefined;
    public configuration: Configuration = new Configuration();

    constructor(basePath?: string, configuration?: Configuration, defaultExtraJQueryAjaxSettings?: JQueryAjaxSettings) {
        if (basePath) {
            this.basePath = basePath;
        }
        if (configuration) {
            this.configuration = configuration;
        }
        if (defaultExtraJQueryAjaxSettings) {
            this.defaultExtraJQueryAjaxSettings = defaultExtraJQueryAjaxSettings;
        }
    }

    private extendObj<T1 extends object, T2 extends T1>(objA: T2, objB: T2): T1|T2 {
        for (let key in objB) {
            if (objB.hasOwnProperty(key)) {
                objA[key] = objB[key];
            }
        }
        return objA;
    }

    /**
     * Gets OrderDTOs.
     * @summary OrderDTOs (historical) 🔥
     * @param startBlock 
     * @param endBlock 
     * @param startDate 
     * @param endDate 
     * @param poolId 
     */
    public cowGetOrderDTOsHistorical(startBlock?: number, endBlock?: number, startDate?: string, endDate?: string, poolId?: string, extraJQueryAjaxSettings?: JQueryAjaxSettings): JQuery.Promise<
    { response: JQueryXHR; body: Array<models.CowOrderDTO>;  },
    { response: JQueryXHR; errorThrown: string }
    > {
        let localVarPath = this.basePath + '/dapps/cow/OrderDTOs/historical';

        let queryParameters: any = {};
        let headerParams: any = {};
        if (startBlock !== null && startBlock !== undefined) {
            queryParameters['startBlock'] = <string><any>startBlock;
        }
        if (endBlock !== null && endBlock !== undefined) {
            queryParameters['endBlock'] = <string><any>endBlock;
        }
        if (startDate !== null && startDate !== undefined) {
            queryParameters['startDate'] = startDate.toISOString();
        }
        if (endDate !== null && endDate !== undefined) {
            queryParameters['endDate'] = endDate.toISOString();
        }
        if (poolId !== null && poolId !== undefined) {
            queryParameters['poolId'] = <string><any>poolId;
        }

        localVarPath = localVarPath + "?" + $.param(queryParameters);
        // to determine the Content-Type header
        let consumes: string[] = [
        ];

        // to determine the Accept header
        let produces: string[] = [
            'text/plain', 
            'application/json', 
            'text/json'
        ];


        let requestOptions: JQueryAjaxSettings = {
            url: localVarPath,
            type: 'GET',
            headers: headerParams,
            processData: false
        };

        if (headerParams['Content-Type']) {
            requestOptions.contentType = headerParams['Content-Type'];
        }

        if (extraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, extraJQueryAjaxSettings);
        }

        if (this.defaultExtraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, this.defaultExtraJQueryAjaxSettings);
        }

        let dfd = $.Deferred<
            { response: JQueryXHR; body: Array<models.CowOrderDTO>;  },
            { response: JQueryXHR; errorThrown: string }
        >();
        $.ajax(requestOptions).then(
            (data: Array<models.CowOrderDTO>, textStatus: string, jqXHR: JQueryXHR) =>
                dfd.resolve({response: jqXHR, body: data}),
            (xhr: JQueryXHR, textStatus: string, errorThrown: string) =>
                dfd.reject({response: xhr, errorThrown: errorThrown})
        );
        return dfd.promise();
    }

    /**
     * Gets orders.
     * @summary Orders (historical)
     * @param startBlock 
     * @param endBlock 
     * @param startDate 
     * @param endDate 
     */
    public cowGetOrdersHistorical(startBlock?: number, endBlock?: number, startDate?: string, endDate?: string, extraJQueryAjaxSettings?: JQueryAjaxSettings): JQuery.Promise<
    { response: JQueryXHR; body: Array<models.CowOrderDTO>;  },
    { response: JQueryXHR; errorThrown: string }
    > {
        let localVarPath = this.basePath + '/dapps/cow/orders/historical';

        let queryParameters: any = {};
        let headerParams: any = {};
        if (startBlock !== null && startBlock !== undefined) {
            queryParameters['startBlock'] = <string><any>startBlock;
        }
        if (endBlock !== null && endBlock !== undefined) {
            queryParameters['endBlock'] = <string><any>endBlock;
        }
        if (startDate !== null && startDate !== undefined) {
            queryParameters['startDate'] = startDate.toISOString();
        }
        if (endDate !== null && endDate !== undefined) {
            queryParameters['endDate'] = endDate.toISOString();
        }

        localVarPath = localVarPath + "?" + $.param(queryParameters);
        // to determine the Content-Type header
        let consumes: string[] = [
        ];

        // to determine the Accept header
        let produces: string[] = [
            'text/plain', 
            'application/json', 
            'text/json'
        ];


        let requestOptions: JQueryAjaxSettings = {
            url: localVarPath,
            type: 'GET',
            headers: headerParams,
            processData: false
        };

        if (headerParams['Content-Type']) {
            requestOptions.contentType = headerParams['Content-Type'];
        }

        if (extraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, extraJQueryAjaxSettings);
        }

        if (this.defaultExtraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, this.defaultExtraJQueryAjaxSettings);
        }

        let dfd = $.Deferred<
            { response: JQueryXHR; body: Array<models.CowOrderDTO>;  },
            { response: JQueryXHR; errorThrown: string }
        >();
        $.ajax(requestOptions).then(
            (data: Array<models.CowOrderDTO>, textStatus: string, jqXHR: JQueryXHR) =>
                dfd.resolve({response: jqXHR, body: data}),
            (xhr: JQueryXHR, textStatus: string, errorThrown: string) =>
                dfd.reject({response: xhr, errorThrown: errorThrown})
        );
        return dfd.promise();
    }

    /**
     * Gets SettlementDTOs.
     * @summary SettlementDTOs (historical) 🔥
     * @param startBlock 
     * @param endBlock 
     * @param startDate 
     * @param endDate 
     * @param poolId 
     */
    public cowGetSettlementDTOsHistorical(startBlock?: number, endBlock?: number, startDate?: string, endDate?: string, poolId?: string, extraJQueryAjaxSettings?: JQueryAjaxSettings): JQuery.Promise<
    { response: JQueryXHR; body: Array<models.CowSettlementDTO>;  },
    { response: JQueryXHR; errorThrown: string }
    > {
        let localVarPath = this.basePath + '/dapps/cow/SettlementDTOs/historical';

        let queryParameters: any = {};
        let headerParams: any = {};
        if (startBlock !== null && startBlock !== undefined) {
            queryParameters['startBlock'] = <string><any>startBlock;
        }
        if (endBlock !== null && endBlock !== undefined) {
            queryParameters['endBlock'] = <string><any>endBlock;
        }
        if (startDate !== null && startDate !== undefined) {
            queryParameters['startDate'] = startDate.toISOString();
        }
        if (endDate !== null && endDate !== undefined) {
            queryParameters['endDate'] = endDate.toISOString();
        }
        if (poolId !== null && poolId !== undefined) {
            queryParameters['poolId'] = <string><any>poolId;
        }

        localVarPath = localVarPath + "?" + $.param(queryParameters);
        // to determine the Content-Type header
        let consumes: string[] = [
        ];

        // to determine the Accept header
        let produces: string[] = [
            'text/plain', 
            'application/json', 
            'text/json'
        ];


        let requestOptions: JQueryAjaxSettings = {
            url: localVarPath,
            type: 'GET',
            headers: headerParams,
            processData: false
        };

        if (headerParams['Content-Type']) {
            requestOptions.contentType = headerParams['Content-Type'];
        }

        if (extraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, extraJQueryAjaxSettings);
        }

        if (this.defaultExtraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, this.defaultExtraJQueryAjaxSettings);
        }

        let dfd = $.Deferred<
            { response: JQueryXHR; body: Array<models.CowSettlementDTO>;  },
            { response: JQueryXHR; errorThrown: string }
        >();
        $.ajax(requestOptions).then(
            (data: Array<models.CowSettlementDTO>, textStatus: string, jqXHR: JQueryXHR) =>
                dfd.resolve({response: jqXHR, body: data}),
            (xhr: JQueryXHR, textStatus: string, errorThrown: string) =>
                dfd.reject({response: xhr, errorThrown: errorThrown})
        );
        return dfd.promise();
    }

    /**
     * Gets settlements.
     * @summary Settlements (historical)
     * @param startBlock 
     * @param endBlock 
     * @param startDate 
     * @param endDate 
     */
    public cowGetSettlementsHistorical(startBlock?: number, endBlock?: number, startDate?: string, endDate?: string, extraJQueryAjaxSettings?: JQueryAjaxSettings): JQuery.Promise<
    { response: JQueryXHR; body: Array<models.CowSettlementDTO>;  },
    { response: JQueryXHR; errorThrown: string }
    > {
        let localVarPath = this.basePath + '/dapps/cow/settlements/historical';

        let queryParameters: any = {};
        let headerParams: any = {};
        if (startBlock !== null && startBlock !== undefined) {
            queryParameters['startBlock'] = <string><any>startBlock;
        }
        if (endBlock !== null && endBlock !== undefined) {
            queryParameters['endBlock'] = <string><any>endBlock;
        }
        if (startDate !== null && startDate !== undefined) {
            queryParameters['startDate'] = startDate.toISOString();
        }
        if (endDate !== null && endDate !== undefined) {
            queryParameters['endDate'] = endDate.toISOString();
        }

        localVarPath = localVarPath + "?" + $.param(queryParameters);
        // to determine the Content-Type header
        let consumes: string[] = [
        ];

        // to determine the Accept header
        let produces: string[] = [
            'text/plain', 
            'application/json', 
            'text/json'
        ];


        let requestOptions: JQueryAjaxSettings = {
            url: localVarPath,
            type: 'GET',
            headers: headerParams,
            processData: false
        };

        if (headerParams['Content-Type']) {
            requestOptions.contentType = headerParams['Content-Type'];
        }

        if (extraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, extraJQueryAjaxSettings);
        }

        if (this.defaultExtraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, this.defaultExtraJQueryAjaxSettings);
        }

        let dfd = $.Deferred<
            { response: JQueryXHR; body: Array<models.CowSettlementDTO>;  },
            { response: JQueryXHR; errorThrown: string }
        >();
        $.ajax(requestOptions).then(
            (data: Array<models.CowSettlementDTO>, textStatus: string, jqXHR: JQueryXHR) =>
                dfd.resolve({response: jqXHR, body: data}),
            (xhr: JQueryXHR, textStatus: string, errorThrown: string) =>
                dfd.reject({response: xhr, errorThrown: errorThrown})
        );
        return dfd.promise();
    }

    /**
     * Gets TokenDTOs.
     * @summary TokenDTOs (historical) 🔥
     * @param startBlock 
     * @param endBlock 
     * @param startDate 
     * @param endDate 
     * @param poolId 
     */
    public cowGetTokenDTOsHistorical(startBlock?: number, endBlock?: number, startDate?: string, endDate?: string, poolId?: string, extraJQueryAjaxSettings?: JQueryAjaxSettings): JQuery.Promise<
    { response: JQueryXHR; body: Array<models.CowTokenDTO>;  },
    { response: JQueryXHR; errorThrown: string }
    > {
        let localVarPath = this.basePath + '/dapps/cow/TokenDTOs/historical';

        let queryParameters: any = {};
        let headerParams: any = {};
        if (startBlock !== null && startBlock !== undefined) {
            queryParameters['startBlock'] = <string><any>startBlock;
        }
        if (endBlock !== null && endBlock !== undefined) {
            queryParameters['endBlock'] = <string><any>endBlock;
        }
        if (startDate !== null && startDate !== undefined) {
            queryParameters['startDate'] = startDate.toISOString();
        }
        if (endDate !== null && endDate !== undefined) {
            queryParameters['endDate'] = endDate.toISOString();
        }
        if (poolId !== null && poolId !== undefined) {
            queryParameters['poolId'] = <string><any>poolId;
        }

        localVarPath = localVarPath + "?" + $.param(queryParameters);
        // to determine the Content-Type header
        let consumes: string[] = [
        ];

        // to determine the Accept header
        let produces: string[] = [
            'text/plain', 
            'application/json', 
            'text/json'
        ];


        let requestOptions: JQueryAjaxSettings = {
            url: localVarPath,
            type: 'GET',
            headers: headerParams,
            processData: false
        };

        if (headerParams['Content-Type']) {
            requestOptions.contentType = headerParams['Content-Type'];
        }

        if (extraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, extraJQueryAjaxSettings);
        }

        if (this.defaultExtraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, this.defaultExtraJQueryAjaxSettings);
        }

        let dfd = $.Deferred<
            { response: JQueryXHR; body: Array<models.CowTokenDTO>;  },
            { response: JQueryXHR; errorThrown: string }
        >();
        $.ajax(requestOptions).then(
            (data: Array<models.CowTokenDTO>, textStatus: string, jqXHR: JQueryXHR) =>
                dfd.resolve({response: jqXHR, body: data}),
            (xhr: JQueryXHR, textStatus: string, errorThrown: string) =>
                dfd.reject({response: xhr, errorThrown: errorThrown})
        );
        return dfd.promise();
    }

    /**
     * Gets tokens.
     * @summary Tokens (historical) 🔥
     * @param startBlock 
     * @param endBlock 
     * @param startDate 
     * @param endDate 
     * @param tokenId 
     */
    public cowGetTokensHistorical(startBlock?: number, endBlock?: number, startDate?: string, endDate?: string, tokenId?: string, extraJQueryAjaxSettings?: JQueryAjaxSettings): JQuery.Promise<
    { response: JQueryXHR; body: Array<models.CowTokenDTO>;  },
    { response: JQueryXHR; errorThrown: string }
    > {
        let localVarPath = this.basePath + '/dapps/cow/tokens/historical';

        let queryParameters: any = {};
        let headerParams: any = {};
        if (startBlock !== null && startBlock !== undefined) {
            queryParameters['startBlock'] = <string><any>startBlock;
        }
        if (endBlock !== null && endBlock !== undefined) {
            queryParameters['endBlock'] = <string><any>endBlock;
        }
        if (startDate !== null && startDate !== undefined) {
            queryParameters['startDate'] = startDate.toISOString();
        }
        if (endDate !== null && endDate !== undefined) {
            queryParameters['endDate'] = endDate.toISOString();
        }
        if (tokenId !== null && tokenId !== undefined) {
            queryParameters['tokenId'] = <string><any>tokenId;
        }

        localVarPath = localVarPath + "?" + $.param(queryParameters);
        // to determine the Content-Type header
        let consumes: string[] = [
        ];

        // to determine the Accept header
        let produces: string[] = [
            'text/plain', 
            'application/json', 
            'text/json'
        ];


        let requestOptions: JQueryAjaxSettings = {
            url: localVarPath,
            type: 'GET',
            headers: headerParams,
            processData: false
        };

        if (headerParams['Content-Type']) {
            requestOptions.contentType = headerParams['Content-Type'];
        }

        if (extraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, extraJQueryAjaxSettings);
        }

        if (this.defaultExtraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, this.defaultExtraJQueryAjaxSettings);
        }

        let dfd = $.Deferred<
            { response: JQueryXHR; body: Array<models.CowTokenDTO>;  },
            { response: JQueryXHR; errorThrown: string }
        >();
        $.ajax(requestOptions).then(
            (data: Array<models.CowTokenDTO>, textStatus: string, jqXHR: JQueryXHR) =>
                dfd.resolve({response: jqXHR, body: data}),
            (xhr: JQueryXHR, textStatus: string, errorThrown: string) =>
                dfd.reject({response: xhr, errorThrown: errorThrown})
        );
        return dfd.promise();
    }

    /**
     * Gets TradeDTOs.
     * @summary TradeDTOs (historical) 🔥
     * @param startBlock 
     * @param endBlock 
     * @param startDate 
     * @param endDate 
     * @param poolId 
     */
    public cowGetTradeDTOsHistorical(startBlock?: number, endBlock?: number, startDate?: string, endDate?: string, poolId?: string, extraJQueryAjaxSettings?: JQueryAjaxSettings): JQuery.Promise<
    { response: JQueryXHR; body: Array<models.CowTradeDTO>;  },
    { response: JQueryXHR; errorThrown: string }
    > {
        let localVarPath = this.basePath + '/dapps/cow/TradeDTOs/historical';

        let queryParameters: any = {};
        let headerParams: any = {};
        if (startBlock !== null && startBlock !== undefined) {
            queryParameters['startBlock'] = <string><any>startBlock;
        }
        if (endBlock !== null && endBlock !== undefined) {
            queryParameters['endBlock'] = <string><any>endBlock;
        }
        if (startDate !== null && startDate !== undefined) {
            queryParameters['startDate'] = startDate.toISOString();
        }
        if (endDate !== null && endDate !== undefined) {
            queryParameters['endDate'] = endDate.toISOString();
        }
        if (poolId !== null && poolId !== undefined) {
            queryParameters['poolId'] = <string><any>poolId;
        }

        localVarPath = localVarPath + "?" + $.param(queryParameters);
        // to determine the Content-Type header
        let consumes: string[] = [
        ];

        // to determine the Accept header
        let produces: string[] = [
            'text/plain', 
            'application/json', 
            'text/json'
        ];


        let requestOptions: JQueryAjaxSettings = {
            url: localVarPath,
            type: 'GET',
            headers: headerParams,
            processData: false
        };

        if (headerParams['Content-Type']) {
            requestOptions.contentType = headerParams['Content-Type'];
        }

        if (extraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, extraJQueryAjaxSettings);
        }

        if (this.defaultExtraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, this.defaultExtraJQueryAjaxSettings);
        }

        let dfd = $.Deferred<
            { response: JQueryXHR; body: Array<models.CowTradeDTO>;  },
            { response: JQueryXHR; errorThrown: string }
        >();
        $.ajax(requestOptions).then(
            (data: Array<models.CowTradeDTO>, textStatus: string, jqXHR: JQueryXHR) =>
                dfd.resolve({response: jqXHR, body: data}),
            (xhr: JQueryXHR, textStatus: string, errorThrown: string) =>
                dfd.reject({response: xhr, errorThrown: errorThrown})
        );
        return dfd.promise();
    }

    /**
     * Gets trades.
     * @summary Trades (historical) 🔥
     * @param startBlock 
     * @param endBlock 
     * @param startDate 
     * @param endDate 
     */
    public cowGetTradesHistorical(startBlock?: number, endBlock?: number, startDate?: string, endDate?: string, extraJQueryAjaxSettings?: JQueryAjaxSettings): JQuery.Promise<
    { response: JQueryXHR; body: Array<models.CowTradeDTO>;  },
    { response: JQueryXHR; errorThrown: string }
    > {
        let localVarPath = this.basePath + '/dapps/cow/trades/historical';

        let queryParameters: any = {};
        let headerParams: any = {};
        if (startBlock !== null && startBlock !== undefined) {
            queryParameters['startBlock'] = <string><any>startBlock;
        }
        if (endBlock !== null && endBlock !== undefined) {
            queryParameters['endBlock'] = <string><any>endBlock;
        }
        if (startDate !== null && startDate !== undefined) {
            queryParameters['startDate'] = startDate.toISOString();
        }
        if (endDate !== null && endDate !== undefined) {
            queryParameters['endDate'] = endDate.toISOString();
        }

        localVarPath = localVarPath + "?" + $.param(queryParameters);
        // to determine the Content-Type header
        let consumes: string[] = [
        ];

        // to determine the Accept header
        let produces: string[] = [
            'text/plain', 
            'application/json', 
            'text/json'
        ];


        let requestOptions: JQueryAjaxSettings = {
            url: localVarPath,
            type: 'GET',
            headers: headerParams,
            processData: false
        };

        if (headerParams['Content-Type']) {
            requestOptions.contentType = headerParams['Content-Type'];
        }

        if (extraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, extraJQueryAjaxSettings);
        }

        if (this.defaultExtraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, this.defaultExtraJQueryAjaxSettings);
        }

        let dfd = $.Deferred<
            { response: JQueryXHR; body: Array<models.CowTradeDTO>;  },
            { response: JQueryXHR; errorThrown: string }
        >();
        $.ajax(requestOptions).then(
            (data: Array<models.CowTradeDTO>, textStatus: string, jqXHR: JQueryXHR) =>
                dfd.resolve({response: jqXHR, body: data}),
            (xhr: JQueryXHR, textStatus: string, errorThrown: string) =>
                dfd.reject({response: xhr, errorThrown: errorThrown})
        );
        return dfd.promise();
    }

    /**
     * Gets UserDTOs.
     * @summary UserDTOs (historical) 🔥
     * @param startBlock 
     * @param endBlock 
     * @param startDate 
     * @param endDate 
     * @param poolId 
     */
    public cowGetUserDTOsHistorical(startBlock?: number, endBlock?: number, startDate?: string, endDate?: string, poolId?: string, extraJQueryAjaxSettings?: JQueryAjaxSettings): JQuery.Promise<
    { response: JQueryXHR; body: Array<models.CowUserDTO>;  },
    { response: JQueryXHR; errorThrown: string }
    > {
        let localVarPath = this.basePath + '/dapps/cow/UserDTOs/historical';

        let queryParameters: any = {};
        let headerParams: any = {};
        if (startBlock !== null && startBlock !== undefined) {
            queryParameters['startBlock'] = <string><any>startBlock;
        }
        if (endBlock !== null && endBlock !== undefined) {
            queryParameters['endBlock'] = <string><any>endBlock;
        }
        if (startDate !== null && startDate !== undefined) {
            queryParameters['startDate'] = startDate.toISOString();
        }
        if (endDate !== null && endDate !== undefined) {
            queryParameters['endDate'] = endDate.toISOString();
        }
        if (poolId !== null && poolId !== undefined) {
            queryParameters['poolId'] = <string><any>poolId;
        }

        localVarPath = localVarPath + "?" + $.param(queryParameters);
        // to determine the Content-Type header
        let consumes: string[] = [
        ];

        // to determine the Accept header
        let produces: string[] = [
            'text/plain', 
            'application/json', 
            'text/json'
        ];


        let requestOptions: JQueryAjaxSettings = {
            url: localVarPath,
            type: 'GET',
            headers: headerParams,
            processData: false
        };

        if (headerParams['Content-Type']) {
            requestOptions.contentType = headerParams['Content-Type'];
        }

        if (extraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, extraJQueryAjaxSettings);
        }

        if (this.defaultExtraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, this.defaultExtraJQueryAjaxSettings);
        }

        let dfd = $.Deferred<
            { response: JQueryXHR; body: Array<models.CowUserDTO>;  },
            { response: JQueryXHR; errorThrown: string }
        >();
        $.ajax(requestOptions).then(
            (data: Array<models.CowUserDTO>, textStatus: string, jqXHR: JQueryXHR) =>
                dfd.resolve({response: jqXHR, body: data}),
            (xhr: JQueryXHR, textStatus: string, errorThrown: string) =>
                dfd.reject({response: xhr, errorThrown: errorThrown})
        );
        return dfd.promise();
    }

    /**
     * Gets users.
     * @summary Users (historical)
     * @param startBlock 
     * @param endBlock 
     * @param startDate 
     * @param endDate 
     */
    public cowGetUsersHistorical(startBlock?: number, endBlock?: number, startDate?: string, endDate?: string, extraJQueryAjaxSettings?: JQueryAjaxSettings): JQuery.Promise<
    { response: JQueryXHR; body: Array<models.CowUserDTO>;  },
    { response: JQueryXHR; errorThrown: string }
    > {
        let localVarPath = this.basePath + '/dapps/cow/users/historical';

        let queryParameters: any = {};
        let headerParams: any = {};
        if (startBlock !== null && startBlock !== undefined) {
            queryParameters['startBlock'] = <string><any>startBlock;
        }
        if (endBlock !== null && endBlock !== undefined) {
            queryParameters['endBlock'] = <string><any>endBlock;
        }
        if (startDate !== null && startDate !== undefined) {
            queryParameters['startDate'] = startDate.toISOString();
        }
        if (endDate !== null && endDate !== undefined) {
            queryParameters['endDate'] = endDate.toISOString();
        }

        localVarPath = localVarPath + "?" + $.param(queryParameters);
        // to determine the Content-Type header
        let consumes: string[] = [
        ];

        // to determine the Accept header
        let produces: string[] = [
            'text/plain', 
            'application/json', 
            'text/json'
        ];


        let requestOptions: JQueryAjaxSettings = {
            url: localVarPath,
            type: 'GET',
            headers: headerParams,
            processData: false
        };

        if (headerParams['Content-Type']) {
            requestOptions.contentType = headerParams['Content-Type'];
        }

        if (extraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, extraJQueryAjaxSettings);
        }

        if (this.defaultExtraJQueryAjaxSettings) {
            requestOptions = (<any>Object).assign(requestOptions, this.defaultExtraJQueryAjaxSettings);
        }

        let dfd = $.Deferred<
            { response: JQueryXHR; body: Array<models.CowUserDTO>;  },
            { response: JQueryXHR; errorThrown: string }
        >();
        $.ajax(requestOptions).then(
            (data: Array<models.CowUserDTO>, textStatus: string, jqXHR: JQueryXHR) =>
                dfd.resolve({response: jqXHR, body: data}),
            (xhr: JQueryXHR, textStatus: string, errorThrown: string) =>
                dfd.reject({response: xhr, errorThrown: errorThrown})
        );
        return dfd.promise();
    }

}
